{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "6d21535b301fee2ad3e8a0e8af2c3f9a3d022111"; # pin
    sha256 = "1j8fjdx8dh9a9k2s9758jq18kxx3qwgx00409yx7d9bgr6smbylx";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "9758d82e66f53a08ccf421c2593b60e3e6fb86fc";
    sha256 = "0xd5bqaqsql52sgka377dgghb4qq59nilikyw40vvj65wgciv9c5";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "137ac90c50f5ac01629fb6adb30d04dfce8f2180";
    sha256 = "1wxwrbd2r243pi79w3gp0bxr7salrw3a5cwaa40xz95ssigrhfdz";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "4b858d9b76f3a48ab72b2fd467fa042e1903d148";
    sha256 = "0n9x6h0npacpmdxcjz8m480797ppalj7w2jk6hbx5vqkdzd3zaia";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "a6f871343313220b76009827ed0153586361c0d5";
    sha256 = "0fc1r3zbggm9p0bn6bm1bcxjsj647cbnzn5w7y5nh9g7mji4k5sq";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "c1ecdaad0257e79cedbc19c485b86021831fa4b7";
    sha256 = "0qb57rca75ycjfgwqz804nwd331cy48zhwrh4l2np4qmryww9021";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "99661e40c4c47110129176ee9ecc61a50f1f60db";
    sha256 = "0azbr1gz6xlk9dwr5zc451krnvb5p3g2fl7iyjh0zhpylb5v3d4y";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "18ae262fd47e0d2bac4bd8c29027225b22d4b1fa";
    sha256 = "0i9j61w12sq5fvaswi6rl4640djrpdyxr6bh1qcb3m2isfg2z75a";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "252e0b5789dddb859084fd48e6a671293d4cad36";
    sha256 = "0w5yvjjhhcf7khcprbzl3vnygh7dwzkamx4nr2mah1ziixzax6i9";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "55d34ec060bd9dc735ed577e6924ddac79a415bf";
    sha256 = "0v7lzp36h4xjg5qx7qcvh5jawxmc80ph1x5rmaddifp9mzb6vjhi";

  };

}
