{ pkgs, sources, customRustPlatform }:
with pkgs;
let
  stdenv = llvmPackages.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv = { doCheck ? true, buildFeatures ? [ ]
    , dontUseCargoParallelTests ? false, cargoPatches ? [ ]
    , cargoBuildFlags ? "", postUnpack ? "", cargoLock ? null
    , cargoSha256 ? null, outputHashes ? { } }:
    name:
    customRustPlatform.buildRustPackage {
      inherit name buildFeatures cargoPatches doCheck dontUseCargoParallelTests
        cargoBuildFlags postUnpack cargoSha256;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ SystemConfiguration Security ]);
      nativeBuildInputs = [ pkg-config cmake perl ];
      cargoLock = if builtins.isNull cargoLock then
        (if builtins.isNull cargoSha256 then {
          lockFile = "${sources."${name}"}/Cargo.lock";
          inherit outputHashes;
        } else
          null)
      else
        cargoLock;
      RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxx}/lib" ];
    };
in rec {
  icx-proxy =
    mkDrv { buildFeatures = [ "skip_body_verification" ]; } "icx-proxy";

  idl2json = mkDrv { } "idl2json";

  vessel = mkDrv { } "vessel";

  ic-repl = mkDrv { outputHashes = { }; } "ic-repl";

  ic-wasm = mkDrv {
    buildFeatures = [ "exe" ];
    dontUseCargoParallelTests = true;
  } "ic-wasm";

  candid = mkDrv {
    cargoPatches = [ ./nix/candid.patch ];
    dontUseCargoParallelTests = true;
  } "candid";

  cdk-rs = mkDrv {
    doCheck = false;
    outputHashes = {
      "pocket-ic-6.0.0" = "sha256-LynAIPeMAxkc2O/M0mfdW0z2OuKJPlbOXXhksIodqYQ=";
    };

  } "cdk-rs";

  agent-rs = mkDrv { doCheck = false; } "agent-rs";

  dfx-extensions = (mkDrv {
    doCheck = false;
    postUnpack = ''
      pushd $sourceRoot
      rm extensions/{nns,sns}/build.rs
      sed -i 's/^build =.*$//' extensions/{nns,sns}/Cargo.toml*
      popd
    '';
    cargoBuildFlags = "--bin nns --bin sns";
    outputHashes = {
      "build-info-0.0.27" =
        "sha256-SkwWwDNrTsntkNiCv6rsyTFGazhpRDnKtVzPpYLKF9U=";
      "cycles-minting-canister-0.9.0" =
        "sha256-4JDOqUgK74qXC9EbRRHUICBUsJHW+eD3fRy00NmQS/M=";
    };
  } "dfx-extensions").overrideAttrs (_: {
    IC_ICRC1_ARCHIVE_WASM_PATH =
      "../../ic-icrc1-0.9.0/wasm/ic-icrc1-archive.wasm.gz";
  });

  shell = ic-wasm;
}
