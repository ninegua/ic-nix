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

  llvmPackages = llvmPackages_13;
  stdenv = llvmPackages.libcxxStdenv;

  rocksdb =
    (pkgsStatic.rocksdb_6_23.override ({ inherit stdenv; })).overrideAttrs (_: {
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
      NIX_CFLAGS_COMPILE = [
        "-Wno-error=deprecated-copy"
        "-Wno-error=unused-private-field"
        "-Wno-error=unused-but-set-variable"
      ];
    });

  buildIC = { targets }:
    let
      linker = writeShellScript "linker.sh" ''
        args=''${@//-lc++/}
        args=''${args//-lstdc++/}
        args=''${args//-lc++abi/}
        args=''${args//-liconv/}
        ${stdenv.cc}/bin/c++ -L ${libiconv-static.out}/lib $args \
          -nostdlib++ ${libcxx}/lib/libc++.a ${libcxxabi}/lib/libc++abi.a
      '';
      cargoBuildFlags =
        lib.strings.concatMapStringsSep " " (t: "--bin " + t) targets;
    in (rustPlatform.buildRustPackage rec {
      name = "ic";
      targetNames = lib.strings.concatStringsSep " " targets;
      hostTriple = stdenv.hostPlatform.config;
      src = source;
      unpackPhase = ''
        cp -r $src ${name}
        echo source root is ${sourceRoot}
        chmod -R u+w -- "$sourceRoot"
        runHook postUnpack
      '';
      sourceRoot = "${name}/rs";
      nativeBuildInputs =
        [ moc cmake llvmPackages.clang pkg-config python3 rustfmt protobuf ];
      buildInputs = [
        llvmPackages.libclang.lib
        llvmPackages.llvm.lib
        rocksdb
        lmdb.dev
        sqlite
        openssl-static
        zlib-static
      ] ++ (if stdenv.isDarwin then
        with darwin.apple_sdk.frameworks; [ CoreServices Foundation Security ]
      else
        [ libunwind ]);
      cargoSha256 = "sha256-zg1NLVIb3vkGiNfLOiBp+ycPPhWu5f59+Lsw57YIY/k=";
      doCheck = false;
      OPENSSL_STATIC = "yes";
      LIBZ_SYS_STATIC = 1;

      ROCKSDB_LIB_DIR = "${rocksdb}/lib";
      ROCKSDB_INCLUDE_DIR = "${rocksdb}/include";
      LIBCLANG_PATH = "${llvmPackages.libclang.lib}/lib";
      RUSTFLAGS = [
        "-Clinker=${linker}"
        "-Lnative=${libcxxabi}/lib"
        "-Lnative=${zlib-static}/lib"
        "-Lnative=${lmdb.out}/lib"
        "-lstatic=lmdb"
        "-lstatic=z"
      ] ++ lib.optionals stdenv.isDarwin [
        "-Lnative=${libiconv-static.out}/lib"
        "-lstatic=iconv"
      ];

      inherit cargoBuildFlags;
      profile = "release";
      buildPhase = ''
        cargo build --profile ${profile} --target ${hostTriple} $cargoBuildFlags
      '';
      installPhase = ''
        mkdir -p $out/bin
        for name in ${targetNames}; do
          install -m 755 target/${hostTriple}/release/$name $out/bin
        done
      '';
    });

  binaries = buildIC { targets = bins ++ wasms; };

  wasm-names = lib.strings.concatStringsSep " " wasms;

  wasm-binaries = (buildIC { targets = wasms; }).overrideAttrs (super: rec {
    name = "ic-wasm";
    RUSTFLAGS = [ ];
    hostTriple = "wasm32-unknown-unknown";
    profile = "canister-release";
    installPhase = ''
      mkdir -p $out/bin
      for name in ${wasm-names}; do
        ${binaryen}/bin/wasm-opt -O2 -o $out/bin/$name.wasm \
          target/${hostTriple}/${profile}/$name.wasm
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
