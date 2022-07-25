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
    mkDrv "icx-proxy" "sha256-82dbcotThL13SKXiN0mqBB23AgFfeb4RMQjkaNE2SL0="; # cargoSha256
  vessel =
    mkDrv "vessel" "sha256-gfCViWw6OTj1TtCmmeOq46TI5YGCO4UYRQnpl7JXs5o="; # cargoSha256
  ic-repl =
    mkDrv "ic-repl" "sha256-57fk3lWvHQRzXvuTzhGlYdL9rm2NTt5NLrESj2QHQRM="; # cargoSha256
  candid =
    mkDrv "candid" "sha256-g3mo2S94mIrCl93q34bhO1NT65MiecBEW5lGuWuQjwE="; # cargoSha256

  shell = icx-proxy;
}
