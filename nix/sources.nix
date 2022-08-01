{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "2cac973e810645f915e8fd0019ad2586258d52d9";
    sha256 = "17d2syhj5y7a6v6mdmpzyls018zk5f1l1a56b2vza68bmvx92l4a";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "a90e666b11295320f2792d5dafc67632fea03ef5";
    sha256 = "05r1vwqgcv370wx74nh2hn5b4zwx8flih8m69r0qp3xndk8gjvw9";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "251f1858cc73a2a6463d2b4776437cd8fa281b56";
    sha256 = "0rkc8hfv78k229bnr5qlhcxz3v5fvncjpiw1kf5l45vybpiir3b0";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "238a73bd8ca501460987d4338f47dcbcaf2766e1";
    sha256 = "0pgzck13n2h77g0h20d0j1nn78mw68ni3sgjnfa7gp8jxd10yad9";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "6575e7d84899d282f73d36c1b1f18810502145e3";
    sha256 = "0wfaqgqy5jkg2kkbxnmy64ld8jnp4587c9qvlzq3c6bhk1r01mm2";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "62b8717183deb059193fd74e6cf0f5379bf74f0b";
    sha256 = "01g227pxv0zxmjgqh8w86hc4b86vskn5kjdd0f9s31zag68sccf3";
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
    rev = "50e211bf4b62cb33515aa1cbc4602d82f589f1eb";
    sha256 = "0kpsw7nckb1cdvxgjbyxprmb6macrivaww8xspwsdlkyvgppja78";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "095dbe84cbd3fdcba96cd5ca9d400823817c65e1";
    sha256 = "11z73qx18pw4yjz2x8rgjb5qya8gd0wklgsyw8p7k8mzcdrdcpji";
  };

}
