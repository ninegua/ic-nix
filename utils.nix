{ pkgs, sources, customRustPlatform }:
with pkgs;
let
  lmdb = callPackage ./nix/lmdb { src = sources.lmdb; };
  stdenv = llvmPackages.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  mkDrv = { doCheck ? true, buildFeatures ? [ ]
    , dontUseCargoParallelTests ? false, cargoPatches ? null
    , cargoBuildFlags ? "", postUnpack ? "", outputHashes ? { }
    , extraBuildInputs ? [ ], extraRustFlags ? [ ] }:
    name:
    let
      patchedSrc = if builtins.isNull cargoPatches then
        sources."${name}"
      else
        stdenv.mkDerivation {
          inherit name;
          src = sources."${name}";
          phases = [ "installPhase" ];
          installPhase = ''
            ulimit -n 1024
            cp -r $src $out
            chmod -R +rw $out
            cd $out
          '' + lib.strings.concatLines
            (builtins.map (file: "patch -p1 < ${file}") cargoPatches);
        };
    in (customRustPlatform.buildRustPackage {
      inherit name buildFeatures doCheck dontUseCargoParallelTests
        cargoBuildFlags postUnpack;
      # Rust build.rs (cc-rs) would fail because cxx prints a warning?!
      # The fix is to make sure it prints no warning on Darwin.
      preConfigure = lib.optional stdenv.isDarwin ''
        echo CXX=${pkgs.cxx-wrapper}/bin/clang++wrapper
        export CXX=${pkgs.cxx-wrapper}/bin/clang++wrapper
      '';
      src = patchedSrc;
      buildInputs = extraBuildInputs ++ [ openssl-static ];
      nativeBuildInputs = [ pkg-config cmake perl protobuf ];
      cargoSha256 = lib.fakeHash;
      RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxx}/lib" ] ++ extraRustFlags;
    }).overrideAttrs (_: {
      cargoDeps = customRustPlatform.importCargoLock {
        lockFile = "${patchedSrc}/Cargo.lock";
        allowBuiltinFetchGit = true;
        inherit outputHashes;
      };
    });
in rec {
  icx-proxy =
    mkDrv { buildFeatures = [ "skip_body_verification" ]; } "icx-proxy";

  idl2json = mkDrv { } "idl2json";

  vessel = mkDrv { } "vessel";

  ic-repl =
    mkDrv { doCheck = !(stdenv.isAarch64 && stdenv.isLinux); } "ic-repl";

  ic-wasm = mkDrv {
    doCheck = false;
    buildFeatures = [ "exe" ];
    dontUseCargoParallelTests = true;
  } "ic-wasm";

  icp-cli = let
    artifacts-src = builtins.fromJSON (builtins.readFile
      "${sources.icp-cli}/crates/icp-cli/artifacts/source.json");
    files = builtins.mapAttrs (name: src: fetchurl src) artifacts-src;
    install =
      lib.mapAttrsToList (name: file: "cp ${file} $out/${name}.bin") files;
    artifacts = stdenv.mkDerivation {
      name = "icp-cli-artifacts";
      phases = [ "installPhase" ];
      installPhase = "mkdir -p $out; ${builtins.concatStringsSep ";" install}";
    };
  in (mkDrv {
    doCheck = false;
    cargoPatches = [ ./nix/icp-cli-git-sha.patch ] ++
      lib.optionals stdenv.isLinux [ ./nix/icp-cli-keyring.patch ];
      extraBuildInputs = lib.optionals stdenv.isLinux [ dbus.dev dbus.lib ] ++ [ 
        ((pkgsStatic.libgit2.override { libiconv = libiconv-static; }).overrideAttrs ({ doCheck = false; }))
      ];
    extraRustFlags = [
      "-Lnative=${pkgsStatic.llhttp.out}/lib"
      "-Lnative=${pkgsStatic.pcre2.out}/lib"
      "-lstatic=llhttp"
      "-lstatic=pcre2-8"
    ];
  } "icp-cli").overrideAttrs (old: {
    LIBGIT2_NO_VENDOR = 1;
    GIT_SHA = sources.icp-cli.rev;
    cargoBuildFlags = [ "--no-default-features" ];
    preConfigure = old.preConfigure ++ [ ''
      pwd
      mkdir -p target/icp-cli-artifact-cache/
      cp ${artifacts}/* target/icp-cli-artifact-cache/
    ''];
  });

  candid = mkDrv {
    cargoPatches = [ ./nix/candid.patch ];
    dontUseCargoParallelTests = true;
  } "candid";

  candid-extractor = mkDrv {
    doCheck = false;
    outputHashes = { };
  } "candid-extractor";

  agent-rs = mkDrv { doCheck = false; } "agent-rs";

  dfx-extensions = (mkDrv {
    cargoPatches = [ ./nix/dfx-extensions.patch ];
    doCheck = false;
    extraBuildInputs = [ lmdb.dev llvmPackages.libclang.lib ]
      ++ lib.optionals stdenv.isLinux [ libunwind ];
    /* postUnpack = ''
         pushd $sourceRoot
         rm extensions/{nns,sns}/build.rs
         sed -i 's/^build =.*$//' extensions/{nns,sns}/Cargo.toml*
         popd
       '';
    */
    cargoBuildFlags = "--bin nns --bin sns";
    outputHashes = {
      "build-info-0.0.27" =
        "sha256-SkwWwDNrTsntkNiCv6rsyTFGazhpRDnKtVzPpYLKF9U=";
      "cycles-minting-canister-0.9.0" =
        "sha256-kj2ISgydgZQgZA6p+AULcd/gCge4bYKqeevwaqlFSig=";
    };
  } "dfx-extensions").overrideAttrs (_: {
    LIBCLANG_PATH = "${llvmPackages.libclang.lib}/lib";
    IC_ICRC1_ARCHIVE_WASM_PATH =
      "../../ic-icrc1-0.9.0/wasm/ic-icrc1-archive.wasm.gz";
  });

  shell = icp-cli;
}
