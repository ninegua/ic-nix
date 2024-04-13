{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "3e25df8f16f794bc93caaefdce41467304d1b0c7"; # pin
    sha256 = "1vlcrvrs6ycr1117g6267i0k3k2x44y07waallx0vj2fqy6h8fyv";
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
    rev = "3f3af7390302a955b01b0537e0a0f6941f153b72";
    sha256 = "1xrf164iqmsm1f8lx2nkfhqvfl9dsvl7my6j7qjf8bzn1kvn4zpc";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "4c2a90e772e83275157e51087ef11075d29f28b2";
    sha256 = "17ghrfgzwlz7hbapy4sq9wbckxqy4xmcj8jpqv68bng9s83zvvvn";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "09228d30501464b815ffcad8e1ef985187fb1b83";
    sha256 = "07vmwrdp44rqyaiycl5sply1agd84ypmw6m0r0idyid2nqsy2ya1";
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
    rev = "78eb699a311f66a9833538d297a4c9580f935020";
    sha256 = "0q0xmq6f4ns0iywq56nzm0k99596xg25zpjm5pwrr6lbf4msnf1d";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "61692f44cf85b93d43311492283246bb443449d3";
    sha256 = "1b06dphnj89qmyv4gxh8gqm1bgqfpivr4di2nl9hbvqqyx4vzb65";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "0b16febcf3ed057436d560ccaf62bafddff977cc";
    sha256 = "1vdy4qf00s6hngygz0k5729gdm5p8jwmv81iyz90c5kzmbf9l751";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "852f7b07c2bfb57ca0c339d75f15b71c6300e36c";
    sha256 = "18y3accn3anq11zh7r8bq83jlkirbdq5myscr3fp615cwzfc4z5f";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "b434eec56aa16d5c404528f841168f6dac850031";
    sha256 = "1iaf0q08ija0bxawc6rgyy4i7392hxwk5031h0cvcgg1cgd97sjp";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "2b640963bbe9df5fcdfb7aed92f13e3a3a318abb";
    sha256 = "1zwr1k2lp1chbffqc9y1i1iswpzd6cbfd33yva6q23zv2y4xx59p";
  };
}
