{ pkgs, src }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  rustPlatform = makeRustPlatform {
    inherit (rustPackages_1_60) cargo rustc;
    inherit stdenv;
  };
  dfx = rustPlatform.buildRustPackage {
    name = "dfx";
    inherit src;
    cargoSha256 = "sha256-yL6ZtErBnEFcqjZW+QeN4JaWvFdasZn+ayujxxwB8+I="; # cargoSha256
    inherit buildInputs;
    nativeBuildInputs = [ pkg-config cmake binaryen python3 ];
    preConfigure = ''
      export DFX_ASSETS=$PWD/dfx_assets
      mkdir -p $DFX_ASSETS
      touch $DFX_ASSETS/binary_cache.tgz
      tar -czf "$DFX_ASSETS"/assetstorage_canister.tgz -C $src/src/distributed assetstorage.did assetstorage.wasm
      tar -czf "$DFX_ASSETS"/wallet_canister.tgz -C $src/src/distributed wallet.did wallet.wasm
      tar -czf "$DFX_ASSETS"/ui_canister.tgz -C $src/src/distributed ui.did ui.wasm
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
