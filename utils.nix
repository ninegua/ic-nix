{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv = { doCheck ? true, buildFeatures ? [ ]
    , dontUseCargoParallelTests ? false, cargoPatches ? [ ]
    , cargoBuildFlags ? "", postUnpack ? "", cargoLock ? null
    , cargoSha256 ? null }:
    name:
    rustPlatform.buildRustPackage {
      inherit name buildFeatures cargoPatches doCheck dontUseCargoParallelTests
        cargoBuildFlags postUnpack cargoSha256 cargoLock;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ SystemConfiguration Security ]);
      nativeBuildInputs = [ pkg-config cmake perl ];
      RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxxabi}/lib" ];
    };
in rec {
  icx-proxy = mkDrv {
    buildFeatures = [ "skip_body_verification" ];
    cargoSha256 =
      "sha256-RkO9vjpJACsEZjgfQ57/c73EObJRB2l/5R3zt08u+WA="; # cargoSha256
  } "icx-proxy";

  idl2json = mkDrv {
    cargoSha256 =
      "sha256-2btmJ5dvyAmI9eapXiIHeeVn8/FWHsvve3YtoGK3L9k="; # cargoSha256
  } "idl2json";

  vessel = mkDrv {
    cargoSha256 =
      "sha256-ZmGVRi+7kEqEwHQnwjTLjUElgg544wXlhebqGiW+GE8="; # cargoSha256
  } "vessel";

  ic-repl = mkDrv {
    cargoSha256 =
      "sha256-R1WqmsGQDZ1Fmh1ggBI8eWVGi4Gmosv8Ctxhuwfu/L0="; # cargoSha256
  } "ic-repl";

  ic-wasm = mkDrv {
    buildFeatures = [ "exe" ];
    dontUseCargoParallelTests = true;
    cargoPatches = [ ];
    cargoSha256 =
      "sha256-a8iN/lTEVqdmogsSlT3+v3nivSG5VRhOz4/trmAsZLY="; # cargoSha256
  } "ic-wasm";

  candid = mkDrv {
    cargoSha256 =
      "sha256-yy9eIlgDJAsMEnl4SBDJJ+vgINLZ24XPEXy29xhLX54="; # cargoSha256
  } "candid";

  cdk-rs = mkDrv {
    doCheck = false;
    cargoSha256 =
      "sha256-eEnPLEJVSVV8hXJwjwTYbmBTUMrWCXpeORiugn9Jsvk="; # cargoSha256
  } "cdk-rs";

  agent-rs = mkDrv {
    doCheck = false;
    cargoSha256 =
      "sha256-8JbyNBWU3ij5qnmJ1IOSqM+qv0dhKRlwZIjR2Sss3Xg="; # cargoSha256
  } "agent-rs";

  dfx-extensions = mkDrv {
    doCheck = false;
    postUnpack = ''
      pushd $sourceRoot
      rm extensions/{nns,sns}/build.rs
      sed -i 's/^build =.*$//' extensions/{nns,sns}/Cargo.toml*
      popd
    '';
    cargoBuildFlags = "--bin nns --bin sns";
    cargoLock = {
      lockFile = "${sources.dfx-extensions}/Cargo.lock";
      outputHashes = {
        "dfx-core-0.0.1" =
          "sha256-g2ab1LM0jE7BDUWTc017+e88cODt/IwdTxs2N/tRPt4=";
        "ic-agent-0.25.0" =
          "sha256-QgGYo2qdRge7g6ul3PcTAyLgm+coJV2K1MiptKtFwos=";
      };
    };
  } "dfx-extensions";

  shell = ic-wasm;
}
