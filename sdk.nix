{ pkgs, src }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  ic_btc_canister = builtins.fetchurl
    "https://github.com/dfinity/bitcoin-canister/releases/latest/download/ic-btc-canister.wasm.gz";
  dfx = rustPlatform.buildRustPackage {
    name = "dfx";
    inherit src;
    cargoSha256 =
      "sha256-PPL8pXUfPIoOSEYnF9rnMvHKQB+iHi2G75XhTy/WG40="; # cargoSha256
    inherit buildInputs;
    nativeBuildInputs = [ perl pkg-config cmake binaryen python3 ];
    cargoPatches = [ ./nix/sdk-ic-certification-0.23.2.patch ];
    preConfigure = ''
      export DFX_VERSION=$(cat src/dfx/Cargo.toml |grep version|head -n1|sed -e 's/^.*"\(.*\)"/\1/')
      export DFX_CONFIG_ROOT="$PWD"
      export DFX_ASSETS="$PWD/dfx_assets"
      mkdir -p "$DFX_ASSETS"
      touch "$DFX_ASSETS/binary_cache.tgz"
      tar -czf "$DFX_ASSETS"/assetstorage_canister.tgz -C $src/src/distributed assetstorage.did assetstorage.wasm.gz
      tar -czf "$DFX_ASSETS"/wallet_canister.tgz -C $src/src/distributed wallet.did wallet.wasm
      tar -czf "$DFX_ASSETS"/ui_canister.tgz -C $src/src/distributed ui.did ui.wasm
      DIR=`dirname ${ic_btc_canister}`
      tar -czf "$DFX_ASSETS"/btc_canister.tgz -C $DIR ${ic_btc_canister}
    '';
    postInstall = ''
      mkdir -p $out/share/dfx-canisters/
      cp $src/src/distributed/*.{wasm,did} $out/share/dfx-canisters/
    '';
    RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxxabi}/lib" ]
      ++ lib.optionals stdenv.isDarwin [
        "-Lnative=${libiconv-static.out}/lib"
        "-lstatic=iconv"
      ];
  };

in {
  inherit dfx;
  shell = dfx;
}
