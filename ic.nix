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

  llvmPackages = llvmPackages_11;
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
      NIX_CFLAGS_COMPILE =
        [ "-Wno-error=deprecated-copy" "-Wno-error=unused-private-field" ];
    });

  buildIC =
    { targets, hostTriple ? stdenv.hostPlatform.config, profile ? "release" }:
    let
      linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
      cargoBuildFlags =
        lib.strings.concatMapStringsSep " " (t: "--bin " + t) targets;
    in (rustPlatform.buildRustPackage rec {
      inherit profile hostTriple cargoBuildFlags;
      name = "ic";
      targetNames = lib.strings.concatStringsSep " " targets;
      src = sources.ic;
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
      cargoSha256 = "sha256-llkt8CoDD/RVrEkKuw1sWV4fePG/epluABSdqWWiOR0="; # cargoSha256
      doCheck = false;

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

  wasm-binaries = (buildIC {
    targets = wasms;
    hostTriple = "wasm32-unknown-unknown";
    profile = "canister-release";
  }).overrideAttrs (self: rec {
    name = "ic-wasm";
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
          cp ${sources.ic}/rs/rosetta-api/ledger_canister/*.did $out/share/ic-canisters/
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
  shell = binaries;
}
