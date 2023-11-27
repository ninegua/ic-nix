{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "d73659a2baf78302b88e29e5c2bc891cde1e3e0b"; # pin
    sha256 = "0b68vck6k871525inlxy1fiigr3x9i151ij80g2js6cyjxy1r8l3";
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
    rev = "67f47393d76db8e6588b34338d49c818ce95aaa2";
    sha256 = "17kpj03xdamya5060y2zxiysar0rchrvhk0s8vpwhp16wnxnpj3l";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "3d0bcedbdaef7b83bb75e291f9c61be6205933b4";
    sha256 = "16r4l2llga0brmdl0p2mh1vfj91x411z0ipm4rbrh60h840c77ax";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "9c17f5235c7977cb2a000990eb8c605a25a80adf";
    sha256 = "1msxp1la84rrar0b63z873dihi0wgsvcnymg5x33dp7i381whh7s";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "216923bc376abd97fcd73576a901ccefa1f578c2";
    sha256 = "0dcallxx6p2bj23sng8qpv44d92zky4bgbp2ppjh291rz7mkq1fn";
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
    rev = "75b03f101f48bf212f8b6314c3a7f21630962bad";
    sha256 = "0h3dg6i0il67pd8i4rx1gfplkb44jk0ws4mgpg747xkgfdq1nvkh";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "9cfc86ca5367aab47b945a1419d0d76fa3031cbf";
    sha256 = "0m3mhhmabv1cyk2yr5cqq44nvgqaxdkm1p0q58ci1x7ggbk7hnp9";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "aeacf9087e68d9d18a0365e024f535de90b70a83";
    sha256 = "03jap74xjn8d1bck1g5hdimh6d3h0fv36800nl8yxd9d3ifygal0";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "710a6cdcc3eb03d2392df1dfd5f047dff9deee80";
    sha256 = "0lvxfc14c7ssyhplxbx217kbhs29r2vgrxisqli6146dg5pwpc40";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "2d21c78b9d6d37f0d9ef3765579159ff1d0a30b0";
    sha256 = "1dynl5yghqmr23yl6yy7s3kbp0mzj50454fp0x6cx9f4i0dx0bhl";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "f7a384b8ea8660361c61259a0109dcda3b46f879";
    sha256 = "0kc868mdbkcvzndlmdj0niqlrr9x36dyl648ib924xd9pbf9wj3y";
  };
}
