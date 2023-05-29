{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv_ =
    buildFeatures: dontUseCargoParallelTests: cargoPatches: name: cargoSha256:
    rustPlatform.buildRustPackage {
      inherit name buildFeatures cargoSha256 cargoPatches
        dontUseCargoParallelTests;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ Security ]);
      nativeBuildInputs = [ pkg-config ];
      RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxxabi}/lib" ];
    };
  mkDrv = mkDrv_ [ ] false [ ];
in rec {
  icx-proxy = mkDrv_ [ "skip_body_verification" ] false [ ] "icx-proxy"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  idl2json = mkDrv "idl2json"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  vessel = mkDrv "vessel"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  ic-repl = mkDrv "ic-repl"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  ic-wasm = mkDrv_ [ ] true [ ] "ic-wasm"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  candid = mkDrv_ [ ] false [ ./nix/candid-ignore-test.patch ] "candid"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256

  shell = ic-wasm;
}
