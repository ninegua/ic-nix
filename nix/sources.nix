{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "68fc31a141b25f842f078c600168d8211339f422"; # pin
    sha256 = "12f04zim0334l6kb4vq1m4d8zg77sisy8wzlxv9ainpa8i9azx11";
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
    rev = "78111d4cf38cebb94d30d4208e581d227d10f71a";
    sha256 = "1dc2rkw3q0mlmfcaa6sq09q8ii8pwsdpji7sf9f1yh17q13g1rvr";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "b27a79c7558641f722f5f922e2ff513d2a8bbf92";
    sha256 = "12japcfjca2zbzqc98rf26k2iv0n8imq148va7mfiqr7xqaj13q2";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "a9277558615c1f295614a8ff3f05d60566da1081";
    sha256 = "1awwjqnybgq8yabvgc1bjhv7477xiq8g29qwsrjvy888dqii4fmy";
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
    rev = "a615d588bb8b2d775564987795a69a4580e80f74";
    sha256 = "0hjihh09np9n0fc7vq8inxwzw3m27k2wdihph23cg61gk4yzlz94";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "4c52e75c12bb730e795d8a4c2862987f4a9524a3";
    sha256 = "0xbxmwfk5124d86dhawbvprvq80j8j6wl0li706cf5pw9sb3ibqa";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "30c388671462aecdc4a3a9753d50dc2e8208c200";
    sha256 = "015ckfmrh87wn2s607g8cij1mr9ajwssyvmyy135zds4fwwc6p4l";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "97f151057d5cee1585f95813325050b1374992c4";
    sha256 = "1azmn3zfahyv829s970c82khicfykqrvk89yxz2d7mlwn99cl6y4";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "c5b8c6dc5f00eb006b41864e1925ef1ce12cee13";
    sha256 = "1wv7ajilmai2ljdnv2lycb08jsq7i5q23gg5jhxid9vv66dp1qw2";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "1e34e0cb51c1a1e6688f11671888f6c029c498ff";
    sha256 = "1mfjw3q76alks475f1abcg7z2fgypvn437pjsi1z2jzn4hj0n4bw";
  };
}
