{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "087190165198a9dc7b3c9cf80e0812c0c03964c6"; # pin
    sha256 = "1p5y8y5n6v212h8x8m736rcgzw37sy2lyyr94h6cav8ivs38frqs";
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
    rev = "138c134f16e5c39f7303f836dfda0f5d7e33059a";
    sha256 = "02ad0sd0w88karprxzsb0lsgbnhqp5waj03vh3mnmwjf0ypradxb";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "be273ffdf9b4f915fc02f584397659f5a95748f9";
    sha256 = "0ma4lw151mp2b8idnmavv4463ga77wrcliqcvxgjg3ga38d59gvi";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "a796d874f8c47641c410746a3d4bd6a85d2baac2";
    sha256 = "14k7m2xszhax2bdn5gsqs1g7cjflk2a15hqnbnzqdlcbf3vdqcna";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "a2a2255ef55938e545a848d1f01ae8b736633ed6";
    sha256 = "1a0k4b0xscz95ingigc4kys82cg89sj0ijibafllkzcnl2dp1y54";
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
    rev = "e09e6c59ee14dc6519a8bc57f45c0604853cf90a";
    sha256 = "12gs05hdd919bn0h3d43kkqjc9livdl32rbhfnmifx7qdarcr857";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "5440fec8136ebec641cf997c9a7670be99af8f5b";
    sha256 = "0kyw6dz3wkn7iyn59b85fww31nx6nwf8a1jqi02880lk4z141bqn";
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
