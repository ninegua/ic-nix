{ lib, stdenv
, fetchFromGitHub
, fetchpatch
, cmake
, ninja
, bzip2
, lz4
, snappy
, zlib
, zstd
, enableJemalloc ? false, jemalloc
, enableLite ? false
, enableShared ? !stdenv.hostPlatform.isStatic
}:

stdenv.mkDerivation rec {
  pname = "rocksdb";
  version = "8.10.0";

  src = fetchFromGitHub {
    owner = "facebook";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-KGsYDBc1fz/90YYNGwlZ0LUKXYsP1zyhP29TnRQwgjQ=";
  };

  nativeBuildInputs = [ cmake ninja ];

  propagatedBuildInputs = [ bzip2 lz4 snappy zlib zstd ];

  buildInputs = lib.optional enableJemalloc jemalloc;

  NIX_CFLAGS_COMPILE = lib.optionalString stdenv.cc.isGNU "-Wno-error=deprecated-copy -Wno-error=pessimizing-move"
    + lib.optionalString stdenv.cc.isClang "-Wno-error=unused-private-field -faligned-allocation -Wno-error=nontrivial-memcall";

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

  # otherwise "cc1: error: -Wformat-security ignored without -Wformat [-Werror=format-security]"
  hardeningDisable = lib.optional stdenv.hostPlatform.isWindows "format";

  # Old version doesn't ship the .pc file, new version puts wrong paths in there.
  postFixup = ''
    if [ -f "$out"/lib/pkgconfig/rocksdb.pc ]; then
      substituteInPlace "$out"/lib/pkgconfig/rocksdb.pc \
        --replace '="''${prefix}//' '="/'
    fi
  '';

  meta = with lib; {
    homepage = "https://rocksdb.org";
    description = "A library that provides an embeddable, persistent key-value store for fast storage";
    changelog = "https://github.com/facebook/rocksdb/raw/v${version}/HISTORY.md";
    license = licenses.asl20;
    platforms = platforms.all;
    maintainers = with maintainers; [ adev magenbluten ];
  };
}
