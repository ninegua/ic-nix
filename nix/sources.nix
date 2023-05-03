{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "0a239c213c048563577969276739b090aa31c241"; # pin
    sha256 = "sha256-Z0RDpQ2LrN16x65h8Ied2bzd1NQa5zWVoP8G6l1PHW0=";
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
    rev = "c0e5aefb45258ec1d8e9cd7806ac4b90a64b5bf7";
    sha256 = "1x0m186ip1ihbn4ma7l44pjknxz9hp43da5a371270d9y7y32i51";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "a867420b4c147c0df64e999fb11f0978e82e1d2a";
    sha256 = "0g8sbid3w5jjxqkw1sj7mcy9cs0hfmzd8bac9n57xdyq5fkp0yns";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "3189cd1ceec8771e8f27faab58ad05d4d6c369ef";
    sha256 = "17gzg64bklw4vwxaqnb34azzikn8x9y27iz6hwrfvfwiw305p1dc";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "3050a7a89f7c431584779d65e6de8cb7325756a7";
    sha256 = "07wm86m5d5bf90z19gdd8k3hb6bxfzsqggjgp6c4j7n5xg9h8l74";
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
    sha256 = "sha256-Ecpt1q/putiaqrn0AC9ArHauZIGb4dNxebITaMb99Gw=";

  };

}
