{ pkgs, source, moc }:
let
  pkgs-with-overlays = pkgs.appendOverlays ([ ]
    ++ pkgs.lib.optionals pkgs.stdenv.isDarwin
    [ (self: super: { lmdb = pkgs.callPackage ./nix/lmdb { }; }) ]);
in let pkgs = pkgs-with-overlays;
in with pkgs;
let
  bins = [
    "replica"
    "ic-starter"
    "ic-admin"
    "ic-prep"
    "ic-replay"
    "ic-consensus-pool-util"
    "state-tool"
  ];

  wasms = [
    "registry-canister"
    "ledger-canister"
    "genesis-token-canister"
    "governance-canister"
    "root-canister"
    "sns-governance-canister"
    "lifeline"
  ];

  rocksdb = rocksdb_6_23;

  buildIC = { targets }:
    let
      cargoBuildFlags =
        lib.strings.concatMapStringsSep " " (t: "--bin " + t) targets;
    in (rustPlatform.buildRustPackage rec {
      name = "ic";
      src = source;
      unpackPhase = ''
        cp -r $src ${name}
        echo source root is ${sourceRoot}
        chmod -R u+w -- "$sourceRoot"
        runHook postUnpack
        test -n $TARGET_BUILD_TARGET || export CARGO_BUILD_TARGET
      '';
      sourceRoot = "${name}/rs";
      nativeBuildInputs =
        [ moc cmake clang pkgconfig python3 rustfmt protobuf ];
      buildInputs =
        [ libclang.lib libiconv llvm.lib lmdb openssl rocksdb sqlite ]
        ++ (if stdenv.isDarwin then
          with darwin.apple_sdk.frameworks; [ CoreServices Foundation Security ]
        else
          [ libunwind ]);
      ROCKSDB_LIB_DIR = "${rocksdb}/lib";
      ROCKSDB_INCLUDE_DIR = "${rocksdb}/include";
      LIBCLANG_PATH = "${libclang.lib}/lib";
      OPENSSL_STATIC = "yes";
      cargoSha256 = "sha256-zg1NLVIb3vkGiNfLOiBp+ycPPhWu5f59+Lsw57YIY/k=";
      doCheck = false;
      ${if stdenv.isDarwin then null else "RUSTC_CUSTOM_ARGS"} = [
        "-Ctarget-feature=-crt-static"
        "-lstatic=stdc++"
        "-Clink-arg=-export-dynamic"
      ];
      inherit cargoBuildFlags;
    });

  binaries = buildIC { targets = bins ++ wasms; };

  wasm-names = lib.strings.concatStringsSep " " wasms;

  wasm-binaries = (buildIC { targets = wasms; }).overrideAttrs (super: {
    buildPhase =
      "cargo build --profile canister-release --target wasm32-unknown-unknown $cargoBuildFlags";
    installPhase = ''
      mkdir -p $out/bin
      for name in ${wasm-names}; do
        ${binaryen}/bin/wasm-opt -O2 -o $out/bin/$name.wasm \
          target/wasm32-unknown-unknown/canister-release/$name.wasm
      done
    '';
  });

  canisters = stdenv.mkDerivation {
    name = "ic-canisters";
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out/share/ic-canisters/
      install -m 644 ${wasm-binaries}/bin/* $out/share/ic-canisters/
      for name in ${wasm-names}; do
        if [ $name = "ledger-canister" ]; then
          cp ${source}/rs/rosetta-api/ledger_canister/*.did $out/share/ic-canisters/
        elif [ $name = "lifeline" ]; then
          true
        elif [ $name = "root-canister" ]; then
          true
        else
          ${binaries}/bin/$name > $out/share/ic-canisters/$name.did
        fi
      done
    '';
  };
in { inherit binaries wasm-binaries canisters; }
