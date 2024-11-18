{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "a62848817cec7ae50618a87a526c85d020283fd9"; # pin
    sha256 = "00nca08if5xsyf4jb2aqf2fl7dwklhvrw41ih3dn3jqklm5rd5qv";
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
    rev = "45ec759eb4f8ff35af75a64815c3e1163b774475";
    sha256 = "05w146853n2m33d6g5kdy5gnpawy5s5d0yjc1sil70mba102z5z9";
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
    rev = "c97f64191e2a86f2c8b7d218f78319672278dd5a";
    sha256 = "03vl41apg7lm5ympfh7yf58y717yrb9jpg0rlkvp8hfq34fpajsr";
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
    rev = "77a527ef17b988f8651f24bbac2352037a04845d";
    sha256 = "0m8fjy4xf2m3dnkqa7xpaq1j0r9dpl5x8bamq0dkswk8ngcf7rl0";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "f3bcbf19237870cd13e658e24d065d90f33ddc2e";
    sha256 = "13ca93pbr34ivgs312xczw741ksz01n3q56340yyfvqc0v2jn6i7";
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
    rev = "03f882375eb63ea4826136fe7210a869d2c27d07";
    sha256 = "1rjgvmfdfrj4qilzydgc9il55klxdkkr5awfx2ii3j3b798czb41";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "bc34481eff52c2b2f13703c5bd7a0f45322162a7";
    sha256 = "1jxqff3b5h77ndsnc8qgzpsr3qh697i3ylv1gfzs4dlzw2a68qsb";
  };
}
