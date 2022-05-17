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

  rocksdb = pkgsStatic.rocksdb_6_23.overrideAttrs (_: {
    cmakeFlags = [
      "-DPORTABLE=1"
      "-DWITH_JEMALLOC=0"
      "-DWITH_JNI=0"
      "-DWITH_BENCHMARK_TOOLS=0"
      "-DWITH_TESTS=1"
      "-DWITH_TOOLS=0"
      "-DWITH_BZ2=0"
      "-DWITH_LZ4=0"
      "-DWITH_SNAPPY=0"
      "-DWITH_ZLIB=1"
      "-DWITH_ZSTD=0"
      "-DWITH_GFLAGS=0"
      "-DUSE_RTTI=1"
      "-DROCKSDB_BUILD_SHARED=0"
    ];
  });

  buildIC = { targets }:
    let
      cargoBuildFlags =
        lib.strings.concatMapStringsSep " " (t: "--bin " + t) targets;
    in (rustPlatform.buildRustPackage rec {
      name = "ic";
      stdenv = pkgs.libcxxStdenv;
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
      buildInputs = [
        libclang.lib
        libiconv
        llvm.lib
        rocksdb
        lmdb.dev
        pkgsStatic.openssl
        pkgsStatic.sqlite
      ] ++ (if stdenv.isDarwin then
        with darwin.apple_sdk.frameworks; [ CoreServices Foundation Security ]
      else
        [ libunwind ]);
      cargoSha256 = "sha256-zg1NLVIb3vkGiNfLOiBp+ycPPhWu5f59+Lsw57YIY/k=";
      doCheck = false;

      ROCKSDB_LIB_DIR = "${rocksdb}/lib";
      ROCKSDB_INCLUDE_DIR = "${rocksdb}/include";
      LIBCLANG_PATH = "${libclang.lib}/lib";
      OPENSSL_STATIC = "yes";
      LIBZ_SYS_STATIC = 1;
      RUSTFLAGS = [
        "-Clinker=${stdenv.cc}/bin/cc"
        "-Lnative=${pkgsStatic.zlib}/lib"
        "-Lnative=${lmdb.out}/lib"
        "-lstatic=lmdb"
        "-lstatic=z"
      ] ++ lib.optionals (not stdenv.isDarwin) [
        "-Ctarget-feature=-crt-static"
        "-Clink-arg=-export-dynamic"
      ];
      inherit cargoBuildFlags;
    });

  binaries = buildIC { targets = bins ++ wasms; };

  wasm-names = lib.strings.concatStringsSep " " wasms;

  wasm-binaries = (buildIC { targets = wasms; }).overrideAttrs (super: {
    name = "ic-wasm";
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
