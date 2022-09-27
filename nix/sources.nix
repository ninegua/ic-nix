{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "6e2d9e9a3ff2a3ae4854d9eea8c9337fd1f77415";
    sha256 = "1yalwag42imxnpvaybsapscfpvwhs5d18cwml19az3cbj90489i8";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "7624053a50e1683c48757ee5dacbb454921e39ef";
    sha256 = "1rm27a00983v581cqzh6nvsc01bpkjvvkybmzmvpnb9f4nkzrxgb";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "c7172d215b6b6ed0f5c4ddca9b8d615d66a75eda";
    sha256 = "1a20np43m41cfqwpl665ys5acfzpdlgz03abaa30fmyqkqmd5grn";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "08507fc9dc425144242434b8fa762c3287077335";
    sha256 = "0ns15g605fw9p8bi89h41hlw3q7qbj29362yhn8ccpy1bngah207";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "05b3b876e63cdc919c79f5127a7ae8dbdb7b095f";
    sha256 = "1bwv0v2nq7p69xafrzp94hmmzijc1dgdsznmjfikjzfswvgbm6ih";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "218abbb50f499aa24b3a8a601f78fcc96863b40b";
    sha256 = "0kwgv199z1nw4a2k7anrc9m64fd65pd4y6z2by6a4ncsc6h95797";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "85d3b082367e8ec75ca066d49b21cc1f8568efa5";
    sha256 = "1apf3gz8zs5z471hq9f7in4ra2wcrivjihr2jzzvp2lbqykfb114";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "042124bc6477a78d2f522b4e3d3c5e767663c1ff";
    sha256 = "1ianchjyyp6gnqr218glrdihdzflcqa8l2rv3fswn3sgpg2v64vz";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "d18e10adfa60dc6e4b53c0b57b172eb0fadb21ad";
    sha256 = "1shi05xwr1mhg698hsgvdz5i6mk7bj976g72adzd5x6zs1049pag";
  };

}
