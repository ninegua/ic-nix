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
    "sha256-RkO9vjpJACsEZjgfQ57/c73EObJRB2l/5R3zt08u+WA="; # cargoSha256
  idl2json = mkDrv { } "idl2json"
    "sha256-2btmJ5dvyAmI9eapXiIHeeVn8/FWHsvve3YtoGK3L9k="; # cargoSha256
  vessel = mkDrv { } "vessel"
    "sha256-ZmGVRi+7kEqEwHQnwjTLjUElgg544wXlhebqGiW+GE8="; # cargoSha256
  ic-repl = mkDrv { } "ic-repl"
    "sha256-z6YSY3lUS4twE2+sFimsJBQceopmyQ+X+1LZ3hGzb3k="; # cargoSha256
  ic-wasm = mkDrv { dontUseCargoParallelTests = true; } "ic-wasm"
    "sha256-WfA+cxZ/woDgmbXtO7oeJDCG30vNH0ZslKH/3UJupaU="; # cargoSha256
  candid = mkDrv { } "candid"
    "sha256-jsOr5bPp5AzedKa02F7YDVISkuKow9VJjiojtDp0FCM="; # cargoSha256
  cdk-rs = mkDrv { doCheck = false; } "cdk-rs"
    "sha256-g3RWRzitfb7cVbyoEPEHhsLf6PUDHL2jN/ky/LZvadI="; # cargoSha256
  agent-rs = mkDrv { doCheck = false; } "agent-rs"
    "sha256-tgUu4KDlmhBBdbhT2PZcJHQqhlW6pseZH8tKG/aW7T4="; # cargoSha256
  dfx-extensions = mkDrv {
    doCheck = false;
    patchPhase =
      "rm extensions/{nns,sns}/build.rs; sed -i 's/^build =.*$//' extensions/{nns,sns}/Cargo.toml*";
    cargoBuildFlags = "--bin nns --bin sns";
  } "dfx-extensions"
    "sha256-4h/MfCao1EOdERTyKoViK/Lxrym8WPg6t8Y6ViHcuuI="; # cargoSha256

  shell = ic-wasm;
}
