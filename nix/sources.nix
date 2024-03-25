{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "fff20526e154f8b8d24373efd9b50f588d147e91"; # pin
    sha256 = "1k8g2i7yasy6f57l83m9wkdjcvh8yxrirvk6dsq7xfh6w4gl111m";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "afcd4427dcea8a7cfd15133b30f3cda384a6f630";
    sha256 = "0jmqhh2r94rgc9kqnc8q0584jqrg2rsqpq73nnjjy80kr16kgmdf";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "56aa1bb6871be270a8e6b57382afcae72e6404c9";
    sha256 = "1vccas6c6apdhi99cl0pgsxrx6ixjn6npgi8a5z08ax6q17h49la";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "6f49e5f877742b79e97ef1b6f226a7f905ba795c";
    sha256 = "1a6pvavjshyxhm5859zys76n0sw83wx3bigs90vqvr5nv5aw1189";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "9d8f17e580ed3161e3a69b48f8ca011f18f3115c";
    sha256 = "182h0112daw1c00b0rnr3p118knmnccica4h9sy9wyzia8918411";
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
    rev = "6d8fb4e448f899682c955ee533e3f8582e05e760";
    sha256 = "0kqb1nb93gc0l10i0v6lgyrmyhh7zjl1a1mhzi1jq3q15pa1yk7i";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "b79469e0dca506670110cc347126f380821ce96e";
    sha256 = "1n6gjwikigzb6vp3wj41vrggd0dn4vvh3g8nyf6cnm3s6c7np58c";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "8e6b8a768f25c47a9d683e67c651c86f69fa4353";
    sha256 = "1kz4syazvk6bskkddxplgryfqk3fi9ci1mm6kq1k5yasnh972yp4";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "ab458c44d9d405c4329ef470eab66fac33c2e151";
    sha256 = "09xq6xjcas9c8z2vnblyb5yx47hh0v41mw1i5dkmqqv81n76f6by";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "8c39e26236e3e3db6db51ffa71e34140c19d207e";
    sha256 = "16msdn7nyvizkl0hr07l8mrbzzifkpz2janqd3i2xaxnnqvn40ii";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "95dba3f117510988e4f9d45482519af9943e3557";
    sha256 = "11gfi44vr6dlz1hh5g9b8rdwika8zp3zk10gjflhzganz1vdqw68";
  };
}
