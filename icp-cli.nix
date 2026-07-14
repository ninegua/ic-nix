{ pkgs, src, customRustPlatform }:
with pkgs;
let
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  libgit2 = (pkgsStatic.libgit2.override {
    libiconv = libiconv-static;
  }).overrideAttrs (rec {
    doCheck = false;
    # override the version because the one in 25.05 is too old.
    version = "1.9.4";
    src = fetchFromGitHub {
      owner = "libgit2";
      repo = "libgit2";
      rev = "v${version}";
      hash = "sha256-ZKUiz3pdFE2SKxh53X2oyr7hs32Njj5YVA0OXDXz7h0=";
    };
    patches = [ ];
  });
  recover-cycles-wasm = { };
  artifacts-src = builtins.fromJSON
    (builtins.readFile "${src}/crates/icp-cli/artifacts/source.json");
  files = builtins.mapAttrs (name: src: fetchurl src) artifacts-src;
  install =
    lib.mapAttrsToList (name: file: "cp ${file} $out/${name}.bin") files;
  artifacts = stdenv.mkDerivation {
    name = "icp-cli-artifacts";
    phases = [ "installPhase" ];
    installPhase = "mkdir -p $out; ${builtins.concatStringsSep ";" install}";
  };

  icp-cli = (customRustPlatform.buildRustPackage {
    name = "icp-cli";
    inherit src;
    cargoPatches = [ ./nix/icp-cli-recover.patch ]
      ++ lib.optionals stdenv.isLinux [ ./nix/icp-cli-keyring.patch ];
    doCheck = false;
    nativeBuildInputs = [ pkg-config perl ];
    buildInputs = [ openssl-static ]
      ++ lib.optionals stdenv.isLinux [ dbus.dev dbus.lib libgit2 ];
    RUSTFLAGS = [ "-Lnative=${libiconv-static}/lib" "-lstatic=iconv" ]
      ++ lib.optionals (stdenv.isLinux) [ "-Clinker=${linker}" ] ++ [
        "-Lnative=${pkgsStatic.llhttp.out}/lib"
        "-Lnative=${pkgsStatic.pcre2.out}/lib"
        "-lstatic=llhttp"
        "-lstatic=pcre2-8"
      ];
    RECOVER_CYCLES_WASM = "/dev/null";
    LIBGIT2_NO_VENDOR = 1;
    GIT_SHA = src.rev;
    cargoBuildFlags = [ "--no-default-features" ];
    preConfigure = [''
      mkdir -p target/icp-cli-artifact-cache/
      cp ${artifacts}/* target/icp-cli-artifact-cache/
    ''] ++ lib.optional stdenv.isDarwin ''
      echo CXX=${pkgs.cxx-wrapper}/bin/clang++wrapper
      export CXX=${pkgs.cxx-wrapper}/bin/clang++wrapper
    '';
  }).overrideAttrs (_: {
    cargoDeps = customRustPlatform.importCargoLock {
      lockFile = "${src}/Cargo.lock";
      allowBuiltinFetchGit = true;
    };
  });

in { inherit icp-cli; }
