{ pkgs, source }:
with pkgs;
let

  buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [
      DiskArbitration
      Foundation
      libiconv-static
    ]);
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
    RUSTFLAGS =
      [ "-Lnative=${openssl-static.out}/lib" "-lstatic=ssl" "-lstatic=crypto" ]
      ++ lib.optionals stdenv.isDarwin [
        "-Lnative=${libiconv-static.out}/lib"
        "-lstatic=iconv"
      ];
  };

in { inherit dfx; }
