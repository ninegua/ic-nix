{ pkgs, sources, moc }:
let
  pkgs-with-overlays = pkgs.appendOverlays ([ ]
    ++ pkgs.lib.optionals pkgs.stdenv.isDarwin [
      (self: super: {
        lmdb = self.callPackage ./nix/lmdb { src = sources.lmdb; };
      })
    ]);
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
    "ic-btc-adapter"
    "ic-https-outcalls-adapter"
    "canister_sandbox"
    "sandbox_launcher"
    "ic-nns-init"
    "ic-state-machine-tests"
    "sns"
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

  llvmPackages = llvmPackages;
  stdenv = llvmPackages.libcxxStdenv;

  rocksdb =
    # (pkgsStatic.rocksdb_6_23.override ({ inherit stdenv; })).overrideAttrs (_: {
    ((callPackage ./nix/rocksdb.nix { }).override ({
      inherit stdenv;
    })).overrideAttrs (_: {
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
      CFLAGS =
        [ "-Wno-error=deprecated-copy" "-Wno-error=unused-private-field" ];
    });

  buildIC = { customLinker, targets, hostTriple ? stdenv.hostPlatform.config
    , profile ? "release" }:
    let
      linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
      cargoBuildFlags =
        lib.strings.concatMapStringsSep " " (t: "--bin " + t) targets;
    in (rustPlatform.buildRustPackage rec {
      inherit profile hostTriple cargoBuildFlags;
      name = "ic";
      targetNames = lib.strings.concatStringsSep " " targets;
      src = sources.ic;
      cargoPatches = [ ];
      unpackPhase = ''
        cp -r $src ${name}
        echo source root is ${sourceRoot}
        chmod -R u+w -- "$sourceRoot"
        runHook postUnpack
      '';

      sourceRoot = "${name}";
      nativeBuildInputs =
        [ moc cmake llvmPackages.clang pkg-config python3 rustfmt protobuf ];
      buildInputs = [
        libusb
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
        [ libunwind-static ]);

      doCheck = false;

      ROCKSDB_LIB_DIR = "${rocksdb}/lib";
      ROCKSDB_INCLUDE_DIR = "${rocksdb}/include";
      LIBCLANG_PATH = "${llvmPackages.libclang.lib}/lib";
      CFLAGS = lib.optionals (!stdenv.isDarwin)
        [ "-I${libunwind-static.dev}/include" ];
      RUSTFLAGS = lib.optionals customLinker [ "-Clinker=${linker}" ] ++ [
        "-Lnative=${libcxxabi}/lib"
        "-Lnative=${zlib-static}/lib"
        "-Lnative=${lmdb.out}/lib"
        "-lstatic=lmdb"
        "-lstatic=z"
      ] ++ (if stdenv.isDarwin then [
        "-Lall=${libiconv-static.out}/lib"
        "-lstatic=iconv"
      ] else [
        "-Lnative=${lzma-static.out}/lib"
        "-lstatic=lzma"
      ]);
      RUST_SRC_PATH = "${rust-stable}/lib/rustlib/src/rust/library";

      buildPhase = ''
        cargo build --frozen --profile ${profile} --target ${hostTriple} $cargoBuildFlags
      '';
      installPhase = ''
        mkdir -p $out/bin
        for name in ${targetNames}; do
          install -m 755 target/${hostTriple}/release/$name $out/bin
        done
      '';
      # Placeholder, to allow a custom importCargoLock below
      cargoSha256 = lib.fakeHash;
    }).overrideAttrs (_: {
      cargoDeps = rustPlatform.importCargoLock {
        lockFile = "${sources.ic}/Cargo.lock";
        outputHashes = {
          "derive_more-0.99.8-alpha.0" =
            "sha256-tEsfYC9oCAsDjinCsUDgRg3q6ruvayuA1lRmsEP9cys=";
          "ic-btc-interface-0.1.0" =
            "sha256-BbFLvf9TKWxqVnzjFPEQZ6Vl45/Vbq7592B3ywqeyI0=";
          "ic-btc-test-utils-0.1.0" =
            "sha256-VecEMFjoeiRi0VgJ9CeDoOzdyJbJNiZ5MBmiV1+b7As=";
          "ic-btc-validation-0.1.0" =
            "sha256-DRrZ0MX6Qykh+IbEpmWPYvT5XxsiED0jPp6l0Ci+Leo=";
          "icrc1-test-env-0.1.1" =
            "sha256-2PB7e64Owin/Eji3k8UoeWs+pfDfOOTaAyXjvjOZ/4g=";
          "jsonrpc-0.12.1" =
            "sha256-3FtdZlt2PqVDkE5iKWYIp1eiIELsaYlUPRSP2Xp8ejM=";
          "lmdb-rkv-0.14.99" =
            "sha256-5WcUzapkrc/s3wCBNCuUDhtbp17n67rTbm2rx0qtITg=";
          "build-info-0.0.27" =
            "sha256-SkwWwDNrTsntkNiCv6rsyTFGazhpRDnKtVzPpYLKF9U=";
        };
      };
    });

  mkBinaries = { customLinker }:
    buildIC {
      targets = bins ++ wasms;
      inherit customLinker;
    };

  binaries = mkBinaries { customLinker = true; };

  wasm-names = lib.strings.concatStringsSep " " wasms;

  wasm-binaries = (buildIC {
    targets = wasms;
    hostTriple = "wasm32-unknown-unknown";
    profile = "canister-release";
    customLinker = false;
  }).overrideAttrs (self: rec {
    name = "ic-wasms";
    RUSTFLAGS = [ ];
    installPhase = ''
      mkdir -p $out/bin
      for name in ${wasm-names}; do
        ${binaryen}/bin/wasm-opt -O2 -o $out/bin/$name.wasm \
          target/${self.hostTriple}/${self.profile}/$name.wasm
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
          cp ${sources.ic}/rs/rosetta-api/icp_ledger/*.did $out/share/ic-canisters/
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
in {
  inherit binaries wasm-binaries canisters;
  shell = mkBinaries { customLinker = true; };
}
