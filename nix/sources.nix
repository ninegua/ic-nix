{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "eef9aebd730c9550eb738b902adb1858ca22f202";
    sha256 = "19kx9zdkr7bvkaw8b6aj95yx2k6arrwrdfg554dm3s9cg97bhdqq";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "02a05179194d61d911cd4837ea9b5d0fb0ff5792";
    sha256 = "1pcqqsg4v1cm3hxx8vclls6gcvr86ca26nn4sr2dl99gdga5a21s";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "c38363c5b07ac9bb5af4e4bd366a99da8a6eb50c";
    sha256 = "0655qf59d1padg514n9fmv714fwzlzi6db0qm4rmz9sayc1rmcjh";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "238a73bd8ca501460987d4338f47dcbcaf2766e1";
    sha256 = "0pgzck13n2h77g0h20d0j1nn78mw68ni3sgjnfa7gp8jxd10yad9";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "60f221a400e36ba59d99c191a86e978117320f0a";
    sha256 = "0546wdh3ksydfdbj2gggxvsfj15zk6zyhvbyhkr0yzn1f1a22fxh";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "be67dc283153ac88900372a1378ec699aa52fcc4";
    sha256 = "1zqfx9ml7kw0xh1fhq5iky3yyy41yym8fwywj9s8phjnchd9pc9z";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "3cb62011e2dfd4b9b7f7aee06ce53d9825e5900e";
    sha256 = "0clmcp0vjih2wsngi526a1f9phhwjm09mdgspmdmpqpkijh7g2b2";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "7c347dca47f247501e0031fe247d2f3c8b58a02f";
    sha256 = "0api9mhj44cd2g2d1k2r77958spagf0dnap1ncd8ca5bvsl3wfmv";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "095dbe84cbd3fdcba96cd5ca9d400823817c65e1";
    sha256 = "11z73qx18pw4yjz2x8rgjb5qya8gd0wklgsyw8p7k8mzcdrdcpji";
  };

}
