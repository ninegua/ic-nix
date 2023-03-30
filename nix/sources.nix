{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "76f5e2a5e30c84877e2393634defe6b2cfabc8b9";
    sha256 = "09c94k8ppvbxcfzzx8jm77l9m4zhx7fxaiz23pc0bqflf9n5gi2b";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c619cc48b192361f0a4d62241ccab01662d5505a"; # pin
    sha256 = "0z2jz135d0byiwik4sc19x94dzwpk0bky8jbmi5n4g5xb0bk2sfh";
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
    rev = "7903d2133f0e126f46573557e6909e515cbc872a";
    sha256 = "1m7xm4c945pvfh84i6zki9kagcb1lq8n5bn9lrhln5hvplfx51kj";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "80831499665a39e7b484057882a3635adf8b4e06";
    sha256 = "1imb2r2d7hvd0hkdaxdf0qqcfjy875h5xb4ahqzmwwv4rdwyv49i";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "1dfe5c302d1c5ab621f7abf04620fae92700fd22";
    sha256 = "0knm5ch499dksmv1k0kh7356pjd9n1gjn0p3vp9bw57mn478zp8z";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "ca833b68c95b37f6d0fcbcafa925176967838a7f";
    sha256 = "0dj0diq52wlv04cdw1v298i6n103lxz5qs86cwmsfphw9m4n37mn";
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
    rev = "58374a36f80d25b1aeefb2e0e7b962cf20fcd755";
    sha256 = "1100m8s6w7gl2wh255n0d1d8c8jkbplkwzrcxxrr418v3gkd189w";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "67b991570fe48a55d9d92c33fd91db552fcb8647";
    sha256 = "sha256-kM25Td80ODGmxV3C9hbQ4qSggYLQ9JkCK4VXqBxrKl0=";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "0ae3c22c6df17f7e09fb49c5ce5fe77653884e10";
    sha256 = "0m7pvm4sawamixm30dqx4zlf8vr3966fdpbgad5qjc0zzpzazq51";
  };

}
