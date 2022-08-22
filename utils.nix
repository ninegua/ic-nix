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
    mkDrv "icx-proxy" "sha256-fug9JFP9yE5mfaXoBRKMXFPRwu/ZOaK+OiaHZYOvAsU="; # cargoSha256
  vessel =
    mkDrv "vessel" "sha256-gfCViWw6OTj1TtCmmeOq46TI5YGCO4UYRQnpl7JXs5o="; # cargoSha256
  ic-repl =
    mkDrv "ic-repl" "sha256-Oj4O/xReqxvkZU5/YrgtpThjuEatZBVjnDWJo/3Qltg="; # cargoSha256
  candid =
    mkDrv "candid" " sha256-IGMF5oTj+6bSe6m/90UvTb1XHsasVBbjtbHcQ1SBHcI="; # cargoSha256

  shell = icx-proxy;
}
