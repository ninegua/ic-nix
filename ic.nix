{ pkgs, customRustPlatform, sources, moc }:
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
  rustPlatform = customRustPlatform;
  bins = {
    "replica" = "rs/replica/";
    "ic-starter" = "rs/starter/";
    "ic-admin" = "rs/registry/admin/";
    "ic-prep" = "rs/prep/";
    "ic-replay" = "rs/replay/";
    "ic-consensus-pool-util" = "rs/artifact_pool/";
    "state-tool" = "rs/state_tool/";
    "ic-btc-adapter" = "rs/bitcoin/adapter/";
    "ic-https-outcalls-adapter" = "rs/https_outcalls/adapter/";
    "canister_sandbox" = "rs/canister_sandbox/";
    "compiler_sandbox" = "rs/canister_sandbox/";
    "sandbox_launcher" = "rs/canister_sandbox/";
    "ic-nns-init" = "rs/nns/init/";
    "sns" = "rs/sns/";
    "pocket-ic-server" = "rs/pocket_ic_server/";
  };

  wasms = {
    "registry-canister" = "rs/registry/canister/";
    "ledger-canister" = "rs/ledger_suite/icp/ledger/";
    "genesis-token-canister" = "rs/nns/gtc/";
    "governance-canister" = "rs/nns/governance/";
    "sns-governance-canister" = "rs/sns/governance/";
    "root-canister" = "rs/nns/handlers/root/impl/";
    "sns-root-canister" = "rs/sns/root/";
    "lifeline" = "rs/nns/handlers/lifeline/impl/";
  };

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
  buildIC = { customLinker ? false, binname ? "", subdir ? ""
    , hostTriple ? stdenv.hostPlatform.config, profile ? "release"
    , isDev ? false }:
    let linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
    in (rustPlatform.buildRustPackage rec {
      inherit profile hostTriple;
      name = "ic-" + binname;
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
        [ moc cmake llvmPackages.clang pkg-config python3 rustfmt protobuf ]
        ++ lib.optionals stdenv.hostPlatform.isx86 [ glibc_multi ];
      buildInputs = [
        libusb1
        llvmPackages.libclang.lib
        llvmPackages.llvm.lib
        rocksdb
        lmdb.dev
        sqlite
        openssl-static
        zlib-static
      ] ++ (if stdenv.isDarwin then
        with darwin.apple_sdk.frameworks; [ CoreServices Foundation Security ]
      else if isDev then
        [ libunwind ]
      else
        [ libunwind-static ]);

      doCheck = false;

      ROCKSDB_LIB_DIR = "${rocksdb}/lib";
      ROCKSDB_INCLUDE_DIR = "${rocksdb}/include";
      LIBCLANG_PATH = "${llvmPackages.libclang.lib}/lib";
      CC = "";
      CFLAGS = [ "-fno-stack-protector" ] ++ lib.optionals (!stdenv.isDarwin)
        [ "-I${libunwind-static.dev}/include" ]
        ++ lib.optionals isDev [ "-Wno-int-conversion" ];
      # Somehow clang includes gcc's libc++, we use -nostdinc++ to prevent it.
      CXXFLAGS = lib.optionals customLinker [
        "-nostdinc++"
        "-I${libcxx.dev}/include/c++/v1"
      ];
      RUSTFLAGS = lib.optionals customLinker [ "-Clinker=${linker}" ] ++ [
        "-Lnative=${libcxx}/lib"
        "-Lnative=${zlib-static}/lib"
        "-Lnative=${lmdb.out}/lib"
        "-lstatic=lmdb"
        "-lstatic=z"
      ] ++ (if stdenv.isDarwin then [
        "-Lall=${libiconv-static.out}/lib"
        "-lstatic=iconv"
      ] else
        lib.optionals (!isDev) [
          "-Lnative=${lzma-static.out}/lib"
          "-lstatic=lzma"
        ]);
      RUST_SRC_PATH = "${rust-stable}/lib/rustlib/src/rust/library";
      buildPhase = ''
        pushd "${subdir}" && cargo build --frozen --profile ${profile} --target ${hostTriple} --bin ${binname} && popd
      '';
      installPhase = ''
        install -m 755 -D target/${hostTriple}/${profile}/${binname} $out/bin/${binname}
      '';
      # Placeholder, to allow a custom importCargoLock below
      cargoSha256 = lib.fakeHash;
    }).overrideAttrs (_: {
      cargoDeps = rustPlatform.importCargoLock {
        lockFile = "${sources.ic}/Cargo.lock";
        allowBuiltinFetchGit = true;
        outputHashes = {
          "cloudflare-0.12.0" =
            "sha256-67kQWJFRXZXHx+qwlyLa9NLF09b/4iRWxTLzCniCHZE=";
          "ic-bn-lib-0.1.0" =
            "sha256-QTVRj/6j3g11DEX1NJfuPNu6ck80i7RI8HzCMyVii+M=";
          "icrc1-test-env-0.1.1" =
            "sha256-2PB7e64Owin/Eji3k8UoeWs+pfDfOOTaAyXjvjOZ/4g=";
          "lmdb-rkv-0.14.99" =
            "sha256-5WcUzapkrc/s3wCBNCuUDhtbp17n67rTbm2rx0qtITg=";
          "build-info-0.0.27" =
            "sha256-SkwWwDNrTsntkNiCv6rsyTFGazhpRDnKtVzPpYLKF9U=";
        };
      };
      # not available for wasm32 targets
      hardeningDisable = [ "zerocallusedregs" ];
    });

  mkBinaries = targets:
    let
      deps = lib.attrsets.mapAttrs (binname: subdir:
        buildIC {
          inherit binname subdir;
          customLinker = true;
        }) targets;
    in stdenv.mkDerivation (rec {
      name = "ic-binaries";
      phases = [ "installPhase" ];
      installPhase = ''
        mkdir -p $out/bin
      '' + lib.attrsets.foldlAttrs (acc: _: deriv:
        ''
          install -m 755 ${deriv}/bin/* $out/bin/
        '' + acc) "" deps;
    });

  binaries = mkBinaries bins;
  wasm-binaries = mkBinaries wasms;

  canisters = let
    profile = "canister-release";
    hostTriple = "wasm32-unknown-unknown";
    deps = lib.attrsets.mapAttrs (binname: subdir:
      (buildIC { inherit binname subdir hostTriple profile; }).overrideAttrs
      (self: {
        installPhase = ''
          mkdir -p $out/bin/
          ${binaryen}/bin/wasm-opt -O2 -o $out/bin/${binname}.wasm \
            target/${hostTriple}/${profile}/${binname}.wasm
        '';
      })) wasms;
  in stdenv.mkDerivation (rec {
    name = "ic-canisters";
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out/share/ic-canisters/
    '' + lib.attrsets.foldlAttrs (acc: binname: deriv:
      ''
        install -m 755 ${deriv}/bin/* $out/share/ic-canisters/
        if [ "${binname}" = "ledger-canister" ]; then
          cp ${sources.ic}/rs/ledger_suite/icp/ledger/*.did $out/share/ic-canisters/
        elif [ "${binname}" = "lifeline" ]; then
          true
        elif [ "${binname}" = "root-canister" ]; then
          true
        else
          ${wasm-binaries}/bin/${binname} > $out/share/ic-canisters/${binname}.did
        fi
      '' + acc) "" deps;
  });
in {
  inherit binaries wasm-binaries canisters;
  shell = buildIC { isDev = true; };
}
