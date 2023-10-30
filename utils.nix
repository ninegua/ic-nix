{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv = { doCheck ? true, buildFeatures ? [ ]
    , dontUseCargoParallelTests ? false, cargoPatches ? [ ]
    , cargoBuildFlags ? "", patchPhase ? "" }:
    name: cargoSha256:
    rustPlatform.buildRustPackage {
      inherit name buildFeatures cargoSha256 cargoPatches doCheck
        dontUseCargoParallelTests cargoBuildFlags patchPhase;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ Security ]);
      nativeBuildInputs = [ pkg-config cmake perl ];
      RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxxabi}/lib" ];
    };
in rec {
  icx-proxy =
    mkDrv { buildFeatures = [ "skip_body_verification" ]; } "icx-proxy"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  idl2json = mkDrv { } "idl2json"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  vessel = mkDrv { } "vessel"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  ic-repl = mkDrv { } "ic-repl"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  ic-wasm = mkDrv { dontUseCargoParallelTests = true; } "ic-wasm"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  candid = mkDrv { } "candid"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  cdk-rs = mkDrv { doCheck = false; } "cdk-rs"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  agent-rs = mkDrv { doCheck = false; } "agent-rs"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256
  dfx-extensions = mkDrv {
    doCheck = false;
    patchPhase =
      "rm extensions/{nns,sns}/build.rs; sed -i 's/^build =.*$//' extensions/{nns,sns}/Cargo.toml*";
    cargoBuildFlags = "--bin nns --bin sns";
  } "dfx-extensions"
    "0000000000000000000000000000000000000000000000000000"; # cargoSha256

  shell = ic-wasm;
}
