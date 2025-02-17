{ pkgs, sources, customRustPlatform }:
with pkgs;
let
  stdenv = llvmPackages.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv = { doCheck ? true, buildFeatures ? [ ]
    , dontUseCargoParallelTests ? false, cargoPatches ? null
    , cargoBuildFlags ? "", postUnpack ? "", outputHashes ? { } }:
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
            cp -r $src $out
            chmod -R +rw $out
            cd $out
          '' + lib.strings.concatLines
            (builtins.map (file: "patch -p1 < ${file}") cargoPatches);
        };
    in (customRustPlatform.buildRustPackage {
      inherit name buildFeatures doCheck dontUseCargoParallelTests
        cargoBuildFlags postUnpack;
      src = patchedSrc;
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ SystemConfiguration Security ]);
      nativeBuildInputs = [ pkg-config cmake perl ];
      cargoSha256 = lib.fakeHash;
      RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxx}/lib" ];
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

  ic-repl = mkDrv { } "ic-repl";

  ic-wasm = mkDrv {
    buildFeatures = [ "exe" ];
    dontUseCargoParallelTests = true;
  } "ic-wasm";

  candid = mkDrv {
    cargoPatches = [ ./nix/candid.patch ];
    dontUseCargoParallelTests = true;
  } "candid";

  cdk-rs = mkDrv {
    doCheck = false;
    outputHashes = {
      "pocket-ic-6.0.0" = "sha256-LynAIPeMAxkc2O/M0mfdW0z2OuKJPlbOXXhksIodqYQ=";
    };

  } "cdk-rs";

  agent-rs = mkDrv { doCheck = false; } "agent-rs";

  dfx-extensions = (mkDrv {
    cargoPatches = [ ./nix/dfx-extensions.patch ];
    doCheck = false;
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
        "sha256-vK9WUEM0kGqmoXEJ/6NovtwuQGhZ2w6fMUuyqEyk7jI=";
    };
  } "dfx-extensions").overrideAttrs (_: {
    IC_ICRC1_ARCHIVE_WASM_PATH =
      "../../ic-icrc1-0.9.0/wasm/ic-icrc1-archive.wasm.gz";
  });

  shell = ic-wasm;
}
