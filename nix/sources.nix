{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "69e1408347723dbaa7a6cd2faa9b65c42abbe861"; # pin
    sha256 = "0dpngwfxcnar1v7221nnqn90sapypwlmcsxwdsq9mxzm4z3msi8r";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "05f41f0d540adbef9ddbec728f84c7ec92194629";
    sha256 = "15chiw8314hyc5kb9vy46qv1qqivyrbw3ffi2fhhhn3snd3sp12b";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "4346ef1880b1f31ee6b4c784a7cb5e4aff247709";
    sha256 = "05v8mqcg7q1fyp3g48m6xzv0sypwkgn53jdcq8w3xwrb5wvk925g";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "34a6210f9c7c9304c76fc672ead3b79d0509c816";
    sha256 = "0fwbs47wghw8y89x1n1lc2wmf7m61g9hpfnysppjnsnj165prn21";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "9c17f5235c7977cb2a000990eb8c605a25a80adf";
    sha256 = "1msxp1la84rrar0b63z873dihi0wgsvcnymg5x33dp7i381whh7s";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "20583ed80121e82b94c21a03129938af5330e35d";
    sha256 = "0yww37i5cahslajhl61jvqpqhalxyinx55ngr86i1k3xx2w4xibg";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "a52de499b67266af936090c1d48130071c8d545c";
    sha256 = "1cf4hk6nf493sfvs8clw5935p4hj8w0z42dplal5705vsm2hylc8";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "cabe93509dc40ff9887381aeea7f23b6844fb43a";
    sha256 = "0gz03r5vi85r0hl2dqhzh2mgx6hpv4nmgvycyykqv73q3vfcrl2p";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "61692f44cf85b93d43311492283246bb443449d3";
    sha256 = "1b06dphnj89qmyv4gxh8gqm1bgqfpivr4di2nl9hbvqqyx4vzb65";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "747104a2eca7ba41d70d2f8e0f576de704d4186b";
    sha256 = "0jwvgxb62w2rbv4p2ag1yh7cmiybkyb7xbig00bzq1cswh9ydk2q";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "710a6cdcc3eb03d2392df1dfd5f047dff9deee80";
    sha256 = "0lvxfc14c7ssyhplxbx217kbhs29r2vgrxisqli6146dg5pwpc40";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "e7b4cdf0bf08ea89486fdb7d4b4923cca0c00ea9";
    sha256 = "1k3zzk6ylnv2fg2fmp1pbznq0jxfgyz2yg9iqr5q4f98qr10jwal";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "b6517ab68905eabf10bc82b460f6791690b84009";
    sha256 = "1xgn5pnjxfsq9yj3mvlp5q3ffvfs9dzrh6yip0ac8ahjfgv747nz";
  };
}
