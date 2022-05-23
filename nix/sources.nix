{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "96dd49e2b9c3a6f5306902267795818347ce81da";
    sha256 = "1fwlp8jphzapr49gb34drfg06y65y3rqjpvmmma47s60mmyq2jmq";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "60d00e2c6eca5636476e22e9babca3acfd85e8b7";
    sha256 = "0bf7x6sfiqvd3gszkq7l4c4r47hjxh2mhn2pas919h0q7gqsf92l";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "a1d3d33d4efeeaa91a6f56b8c1865c37caa977ef";
    sha256 = "0cjssq0phhmm2ka8c8y7ybcy29k5vhvgfwrrj367g5i7rgmwbbl3";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "b3abf8945fa27c57a0dd0880b793e12de7f3d743";
    sha256 = "1sckvr53ja8390qzd4y81na7kxfmawlzj7z7iwn4yl9p3d1hcqc2";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "ba81b409b044f7b166cdf3db9572963b33d6c6ac";
    sha256 = "09bgcwdnmxgphnbbipnxbkhjddnkj92z5vn0428xc3ccz0b5w3js";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "7d0659670bd81f91309a9da1b72feb09d433d31e";
    sha256 = "0ra74xpjkgilibplv4sb930bkkgrbc2yvr732qxjrj4k53xdqww0";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git";
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # mdb.master
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel";
    rev = "13dd83fca5eddf48d63abc7a07cffa4fd44e4f6e"; # main
    sha256 = "0n41qjblka2z745n5vskvn9lfa1qs65mfw3196c7r0adb26xmlgz";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl";
    rev = "41b561942281533f67299e485c4763f3ce91f787"; # master
    sha256 = "1kxqghw2vis2xfjwawasfwsqc3ys1lbn80xgya10ikv6yvpbr05f";
  };
}
