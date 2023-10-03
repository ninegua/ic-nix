{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv = { doCheck ? true, buildFeatures ? [ ]
    , dontUseCargoParallelTests ? false, cargoPatches ? [ ] }:
    name: cargoSha256:
    rustPlatform.buildRustPackage {
      inherit name buildFeatures cargoSha256 cargoPatches doCheck
        dontUseCargoParallelTests;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ Security ]);
      nativeBuildInputs = [ pkg-config ];
      RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxxabi}/lib" ];
    };
in rec {
  icx-proxy =
    mkDrv { buildFeatures = [ "skip_body_verification" ]; } "icx-proxy"
    "sha256-RkO9vjpJACsEZjgfQ57/c73EObJRB2l/5R3zt08u+WA="; # cargoSha256
  idl2json = mkDrv { } "idl2json"
    "sha256-snq5W3CJ3X7C8WozpTaXjLL93Ksp1t8tdexbQqqtDtU="; # cargoSha256
  vessel = mkDrv { } "vessel"
    "sha256-ZmGVRi+7kEqEwHQnwjTLjUElgg544wXlhebqGiW+GE8="; # cargoSha256
  ic-repl = mkDrv { } "ic-repl"
    "sha256-sC/XODxvyMZ8rNPzf0MFqwXVs6BO+t2Sdyk4LE+E9CY="; # cargoSha256
  ic-wasm = mkDrv { dontUseCargoParallelTests = true; } "ic-wasm"
    "sha256-c/km0yev3nJgA5v8AaNoR4Ga3W2XlPzs9GuhTKuHiJU="; # cargoSha256
  candid = mkDrv { } "candid"
    "sha256-OzXZ7wrMCbaVKKa6ANizMcfMsYOlStgsRuerSxBd/2k="; # cargoSha256
  cdk-rs = mkDrv { doCheck = false; } "cdk-rs"
    "sha256-qME+13d491Oo4ntbamH6kSIr0ItcUJ+HYjG+e/HXrKo="; # cargoSha256
  agent-rs = mkDrv { doCheck = false; } "agent-rs"
    "sha256-d9LJA/H93sk3w2wakx5nQ3UOPteKAsroT/nTOW9fN3E="; # cargoSha256

  shell = ic-wasm;
}
