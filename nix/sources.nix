{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "6c92d6c25397d1e23090ecbf7f384a98d9361562";
    sha256 = "184jc35w12cbh0wlcmgli06dqsmdmwbz3hz9jdbgk15jwy288hg0";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c619cc48b192361f0a4d62241ccab01662d5505a"; # pin
    sha256 = "sha256-0GkxF1i9PGJLrEsiPxeYl/9GUk+BaTIjj36BVkb4Unw=";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "2a4346579ad80b389558b80b9751364394d90ebf";
    sha256 = "0lf1mad6m6r3lasp9yrg1mgzrxd6fx9kcani7fksipz2dfb7h978";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "08507fc9dc425144242434b8fa762c3287077335";
    sha256 = "0ns15g605fw9p8bi89h41hlw3q7qbj29362yhn8ccpy1bngah207";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "21d93b927d11dcf54f04086dbf5aa0bf7a85e69f";
    sha256 = "1zhsq6vklirgfkmxy2k699x4yq1nqg4a3ys6wbijdxp818lzcksy";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "b7cc0287970fa2a2440b8aa77a7620716b4b616f";
    sha256 = "1f476hkpg6gd256cvr42h0b2irg8gnigz0dccgvi0bzx1h1dgd3y";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "dbcbdb5c824dd916dea7bb42b88dc8bbc201ff80";
    sha256 = "1cr2yz3gx3pv6fkgcpizd09nknjr55i32b7xq73n0s56da0psyqz";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "2d8b43ab96e1688b29acb56d25f91acad28be6fa";
    sha256 = "1jmvliijg2p59ng6m68hlvsb26cmj1lpqnci80gh83vw5bqwbd16";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "c7b41a08b3126cf5604c6bb354dbd23f602faff4";
    sha256 = "0fafqlknwgmndgvv33z4m98cv0gk6n0zidmn5xiclfgdcp0sl2ss";
  };

}
