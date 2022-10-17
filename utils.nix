{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv_ = cargoPatches: name: cargoSha256:
    rustPlatform.buildRustPackage {
      inherit name cargoSha256 cargoPatches;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ Security ]);
      nativeBuildInputs = [ pkg-config ];
      RUSTFLAGS = lib.optionals stdenv.isDarwin [
        "-Clinker=${linker}"
        "-Lnative=${libcxxabi}/lib"
      ];
    };
  mkDrv = mkDrv_ [ ];
in rec {
  icx-proxy = mkDrv "icx-proxy"
    "sha256-fan+p71fd+vGcbYwZoak6h/agn4nXpziSycg24MBacU="; # cargoSha256
  vessel = mkDrv "vessel"
    "sha256-gfCViWw6OTj1TtCmmeOq46TI5YGCO4UYRQnpl7JXs5o="; # cargoSha256
  ic-repl = mkDrv "ic-repl"
    "sha256-MQGBqRj/wVSCHA5/tt03DUvetBRCZUfHRthroaXZe54="; # cargoSha256
  candid = mkDrv_ [ ./nix/candid-2202-10-14.patch ] "candid"
    "sha256-lGseViht9q/AVGA9NpBDS5ls9BJFCJgHsrX9gMCJPJ8="; # cargoSha256

  shell = icx-proxy;
}
