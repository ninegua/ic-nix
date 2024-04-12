{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages.libcxxStdenv;
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
      "sha256-q2CVUwoL6VVzuWx2yZMFKb9M/xzEXgPvL584KAQiGj8="; # cargoSha256
  } "idl2json";

  vessel = mkDrv {
    cargoSha256 =
      "sha256-ZmGVRi+7kEqEwHQnwjTLjUElgg544wXlhebqGiW+GE8="; # cargoSha256
  } "vessel";

  ic-repl = mkDrv {
    cargoSha256 =
      "sha256-49wREWUht915LwwjhdM7RNip7sbNZ63iD008DgDyVbs="; # cargoSha256
  } "ic-repl";

  ic-wasm = mkDrv {
    buildFeatures = [ "exe" ];
    dontUseCargoParallelTests = true;
    cargoPatches = [ ];
    cargoSha256 =
      "sha256-FOI12PBCg9C91ztX7V8HZyfbe6llUHHwtR+rydbHYSo="; # cargoSha256
  } "ic-wasm";

  candid = mkDrv {
    cargoPatches = [ ./nix/candid.patch ];
    dontUseCargoParallelTests = true;
    cargoLock = {
      lockFile = "${sources.candid}/Cargo.lock";
      outputHashes = {};
    };
  } "candid";

  cdk-rs = mkDrv {
    doCheck = false;
    cargoSha256 =
      "sha256-Dp/SKpAsfLaqh+lrXXCzHPn24ZkNczZBe61BYjrSsfg="; # cargoSha256
  } "cdk-rs";

  agent-rs = mkDrv {
    doCheck = false;
    cargoSha256 =
      "sha256-gCThFth0bE7alXomgJlalwKw8flndECPyEhvL4ZVaa8="; # cargoSha256
  } "agent-rs";

  dfx-extensions = (mkDrv {
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
        "build-info-0.0.27" =
          "sha256-SkwWwDNrTsntkNiCv6rsyTFGazhpRDnKtVzPpYLKF9U=";
        "cycles-minting-canister-0.9.0" =
          "sha256-AGgV8gEFk62aE8WPLDqthjpthhLM1Md/+P+VsCk/Mcc=";
        "derive_more-0.99.8-alpha.0" =
          "sha256-tEsfYC9oCAsDjinCsUDgRg3q6ruvayuA1lRmsEP9cys=";
        "ic-btc-interface-0.2.0" =
          "sha256-5tXrN56F5EyXQR8FzTV44ZKNxqgBOVAXD8pEKDdnBzw=";
        "dfx-core-0.0.1" =
          "sha256-SdqxP5skgt15cz9j6Yf1HMB7uU8zBnEKJV4nsDbe4zY=";
      };
    };
  } "dfx-extensions").overrideAttrs (_: {
    IC_ICRC1_ARCHIVE_WASM_PATH =
      "../../ic-icrc1-0.9.0/wasm/ic-icrc1-archive.wasm.gz";
  });

  shell = ic-wasm;
}
