{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  icx-proxy = rustPlatform.buildRustPackage {
    name = "icx-proxy";
    src = sources.icx-proxy;
    cargoSha256 = "0q7r5r7vgwqxwmznj1sin8ww9gbkzyg467rqcq22n0297azbshs6";
    buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
      (with darwin.apple_sdk.frameworks; [ Security ]);
    nativeBuildInputs = [ pkg-config ];
    RUSTFLAGS = lib.optionals stdenv.isDarwin [
      "-Clinker=${linker}"
      "-Lnative=${libcxxabi}/lib"
    ];
  };
in {
  inherit icx-proxy;
  shell = icx-proxy;
}
