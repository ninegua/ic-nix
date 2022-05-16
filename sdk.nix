{ pkgs, source }:
with pkgs;
let

  buildInputs = [ libiconv openssl ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  shell = stdenv.mkDerivation {
    name = "ic";
    inherit nativeBuildInputs;
  };
  dfx = rustPlatform.buildRustPackage {
    name = "dfx";
    src = source;
    cargoSha256 = "sha256-rdZyN5/2DtXsUc7FiagNuzmOF9CL/C19zX0YwDlnBSc=";
    inherit buildInputs;
    nativeBuildInputs = [ pkg-config ];
    preConfigure = ''
      mkdir dfx_assets
      touch dfx_assets/binary_cache.tgz
      touch dfx_assets/assetstorage_canister.tgz
      touch dfx_assets/wallet_canister.tgz
      touch dfx_assets/ui_canister.tgz
      export DFX_ASSETS=$PWD/dfx_assets
    '';
  };
in dfx
