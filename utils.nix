{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv = name: cargoSha256:
    rustPlatform.buildRustPackage {
      inherit name cargoSha256;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ Security ]);
      nativeBuildInputs = [ pkg-config ];
      RUSTFLAGS = lib.optionals stdenv.isDarwin [
        "-Clinker=${linker}"
        "-Lnative=${libcxxabi}/lib"
      ];
    };
in rec {
  icx-proxy =
    mkDrv "icx-proxy" "0q7r5r7vgwqxwmznj1sin8ww9gbkzyg467rqcq22n0297azbshs6";
  vessel =
    mkDrv "vessel" "1sflslhjvwj3vbz33dw615hbfy6594s3nlwn6dnw34288xhc78k0";
  ic-repl =
    mkDrv "ic-repl" "0pnkpzrl22s2cf2b5kcr0ihflz6gv9v176p27q7r1dwg6cvqr7s8";

  shell = icx-proxy;
}
