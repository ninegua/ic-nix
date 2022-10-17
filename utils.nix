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
  icx-proxy = mkDrv "icx-proxy"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  vessel = mkDrv "vessel"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  ic-repl = mkDrv "ic-repl"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  candid = mkDrv "candid"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256

  shell = icx-proxy;
}
