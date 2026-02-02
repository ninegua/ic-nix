{ pkgs, src, customRustPlatform }:
with pkgs;
let
  stdenv = llvmPackages.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk_11_0.frameworks; [
      DiskArbitration
      Security
      Foundation
    ]);
  ic_btc_canister = builtins.fetchurl
    "https://github.com/dfinity/bitcoin-canister/releases/latest/download/ic-btc-canister.wasm.gz";
  dfx = (customRustPlatform.buildRustPackage {
    name = "dfx";
    inherit src buildInputs;
    cargoBuildFlags = [ "-p" "dfx" "-p" "icx-asset" ];
    nativeBuildInputs = [ perl pkg-config cmake binaryen python3 ];
    preConfigure = ''
      export DFX_VERSION=$(cat src/dfx/Cargo.toml |grep version|head -n1|sed -e 's/^.*"\(.*\)"/\1/')
      export DFX_CONFIG_ROOT="$PWD"
      export DFX_ASSETS="$PWD/dfx_assets"
      mkdir -p "$DFX_ASSETS"
      touch "$DFX_ASSETS/binary_cache.tgz"
      tar -czf "$DFX_ASSETS"/assetstorage_canister.tgz -C $src/src/distributed assetstorage.did assetstorage.wasm.gz
      tar -czf "$DFX_ASSETS"/wallet_canister.tgz -C $src/src/distributed wallet.did wallet.wasm.gz
      tar -czf "$DFX_ASSETS"/ui_canister.tgz -C $src/src/distributed ui.did ui.wasm
      DIR=`mktemp -d`
      cp "${ic_btc_canister}" "$DIR/ic-btc-canister.wasm.gz"
      tar -czf "$DFX_ASSETS"/btc_canister.tgz -C $DIR ic-btc-canister.wasm.gz
      rm -rf "$DIR"
    '';
    postInstall = ''
      mkdir -p $out/share/dfx-canisters/
      cp $src/src/distributed/*.{wasm,did} $out/share/dfx-canisters/
    '';
    RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxx}/lib" ]
      ++ lib.optionals stdenv.isDarwin [
        "-Lnative=${libiconv-static.out}/lib"
        "-lstatic=iconv"
      ];
    doCheck = false;
    # Placeholder, to allow a custom importCargoLock below
    cargoSha256 = lib.fakeHash;
  }).overrideAttrs (_: {
    cargoDeps = customRustPlatform.importCargoLock {
      # allowBuiltinFetchGit = true;
      lockFile = "${src}/Cargo.lock";
      outputHashes = {
        "ic-base-types-0.9.0" =
          "sha256-u9zZBOnkOnLvKjhmqJzUcdgSoWn21VRrRRHLYvPuyiQ=";
        "ic-certification-3.0.3" =
          "sha256-IQOCbC7eZ5W+V0kdmvZkwCRIzQQfj/XMJkYx0mpPqnE=";
        "pocket-ic-11.0.0" =
          "sha256-AFIL0QbgfI2bY9NZJNmiB6bl1cHrlt0fawPlASiBzTk=";
      };
    };
  });
in {
  inherit dfx;
  shell = dfx;
}
