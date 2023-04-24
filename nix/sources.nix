{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "62bf2e969433a5a221d684b339187d8f752576d0";
    sha256 = "16bb9pbylwa7qnbky0jfnp3gx11mi0csvpl129863kz9ra1zrpah";
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
    rev = "7306b7c6db0b640271e9dec3208c0f7e406ab7a5";
    sha256 = "1s9gbkxp66rflzaiyx28hj6x5nyp7spavr0q51fz86pjjhnw8a2y";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "a867420b4c147c0df64e999fb11f0978e82e1d2a";
    sha256 = "0g8sbid3w5jjxqkw1sj7mcy9cs0hfmzd8bac9n57xdyq5fkp0yns";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "38f48942fabf1b59e73bca126340b219fa9a78aa";
    sha256 = "0z4gypic6plg9fw7sz5bvwxw3s2g6xhhwpq09gxs0idd7kh2flyh";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "258c370d316984b9da052b1dc6e71e27aecb2e44";
    sha256 = "1xbz9fq02rx0zxsiigdq74ki7s6pmb5xwk6h534md1vanq6yvvvh";
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
    rev = "fdd81ed08b74ad96a392453b19f7bdc2eec4bda2";
    sha256 = "17ry86jbhgx3x87hsilvhfyqsnlg601187zikb4aysvfmr7lva27";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "252e0b5789dddb859084fd48e6a671293d4cad36";
    sha256 = "0w5yvjjhhcf7khcprbzl3vnygh7dwzkamx4nr2mah1ziixzax6i9";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "0ae3c22c6df17f7e09fb49c5ce5fe77653884e10";
    sha256 = "0m7pvm4sawamixm30dqx4zlf8vr3966fdpbgad5qjc0zzpzazq51";
  };

}
