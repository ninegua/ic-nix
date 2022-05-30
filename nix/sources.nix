{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "92d6482457b05dfdf287fcf4e69e0339a85fb806";
    sha256 = "0sdpp4z0wa3lbfvakpdnykarv5yarvzqhhr33iia09j7chi16lz4";
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
    rev = "0281e0bc3ac44db130dee23e3cc1003cb304a5ab";
    sha256 = "1rqhyrb8iiqan4v1kbg5zwwc9df1jibrh3z5spgqfhnmjjljg066";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "b3abf8945fa27c57a0dd0880b793e12de7f3d743";
    sha256 = "1sckvr53ja8390qzd4y81na7kxfmawlzj7z7iwn4yl9p3d1hcqc2";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "5d8a1409aa85acf8dbb197e13d33489ad1eac656";
    sha256 = "1dbmplbn9p1hvrpac90f0miadc9rxil6icdqbfd55xq3ccch4qmi";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "681b1714bfa649b3e2cc03e64d7c29c4c9fb3f9c";
    sha256 = "0fb3hrjw815ql1b83pyc82drn1lif0yc1q7qbb3v6cjh476xr7lm";
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
  candid = fetchgit {
    url = "https://github.com/dfinity/candid";
    rev = "72b681c3a4fa9cfa1b705e3346118d7eae38ef84"; # master
    sha256 = "08p8zwq0m2wkgsc4xfn5822hcn9qk6zsmljnva9dgj716rjknjdz";
  };

}
