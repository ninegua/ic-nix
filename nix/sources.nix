{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "9aaf5ee5e3f68e239e05c1addc4825bdc8466f67"; # pin
    sha256 = "0w3i40bkxn8v1kv9vskkfa0ndjwjyh40j86m7amn6nqq30qiif9f";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "f30b8fd6051a939cd595e72c704b1e663ac7dee4";
    sha256 = "13ji8nba6w11ysy1x54h547975y8cp1xp3gm90cbi3cbf4dzwk94";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "aebc110e98dd51749fe5c2dcd8b78344d2c6216b";
    sha256 = "191lh3k9iidyi01lma8jg6xbgm25171ih7qdiwx77bj56bnxk9i6";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "ec1a9c6e7e3ae2854fd4f4bedf75bc7c200e04ed";
    sha256 = "11y0nql11w9x1crg6szy0w1pa42nixld91gvn2sbiqxgpbrw02r8";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "74b110a10d194bee1db2c801ea44802815fd9862";
    sha256 = "0zphhlp5mfdy0lzzr3jfwlzhcyqynkwjyzhkqx1agzcn6677dlhw";
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
    rev = "2121549401c0e3412f1942638703434efb300d9a";
    sha256 = "0i5crvzndpmma009wxmi0rzlpw9hm79kkcrbiyp7if0y64nhi7rd";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "48db35ee8e77b40d2749961f29a6ad53e9698571";
    sha256 = "12lnzk2y4z9bkxw4401qyhkw88zx2brq2g0gx5g7kjljadm6298w";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "c2419ac6b7dfba4dd5e53f964b99bbdebc0308e2";
    sha256 = "1pf0yb8f876n6d14j55x5dwkywnx1fxbznrnz28545bm8nxjc6k0";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "8f57d6d26b1d142b5be4b39ea8ade59d7c848cde";
    sha256 = "0q41wydq8x6yj652k2agj8n2yvhaxwjdyrznfiilhpl14vwjj7rv";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "a53948ed52c280e5a2bd917f4d17ffbfa69440c4";
    sha256 = "0lymhkz4n4in51p708krvqd43wais746a935944047iihmpv7hpn";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "1d3cc48288cc8917f01cd867c574d90f08cfdbb0";
    sha256 = "0irqx5qr87skf57nkb5gl6jy6aqz8bihg7h1ji69ivnvg1c5nhl1";
  };
}
