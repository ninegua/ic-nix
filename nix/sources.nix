{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "f195ba756bc3bf170a2888699e5e74101fdac6ba"; # pin
    sha256 = "1pjbjip304y7x1wlwbv042h810gwg0c7azlzn4awp7kd1h6w8l74";
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
    rev = "1917e7ce6c88f394509d027d742a5006f3b39fd1";
    sha256 = "0nmykdnkjy6rlxg97fnyy0i6m4zs7ydlmv1j9ld32zmhirpgr8ki";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "93c3b938c3fcc3f4b0456f1e78a8512103c5efd7";
    sha256 = "0990gqaqr2a4qxdil3m20vcb2h8c25y2vch473f5mr8p77kf3i0n";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "87b3c4b77606d180fa7e7495a6b8cb4de1d8b7ce";
    sha256 = "1hifizha3lwl0l8sl0wbxs7408ilhzlfmfpha9c652v44dhqcqai";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "b5a65f205857c3b09bce82d42e39bc8c1079821e";
    sha256 = "0z2winfsbrhmzb40gzn5hb9c96vibysz0jgvc5vjl5ckw55gk252";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "e3cbed2cc5c202184e740268e4582fdf80c169c9";
    sha256 = "097q6jynbsh6d3symy9gm5k0x6hhmxh46n0rpczb7bv7l6h5z5md";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "4c52e75c12bb730e795d8a4c2862987f4a9524a3";
    sha256 = "0xbxmwfk5124d86dhawbvprvq80j8j6wl0li706cf5pw9sb3ibqa";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "a38bbc10b7af4e4f3b5c5ec5376b32eef7e13118";
    sha256 = "1sqr88asd36flx1ch220af3qgcv0hk9abab2qvrmcgs0flp41ycv";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "8df87261da6ad3a4d1c98aabfaea22cbbd4ec860";
    sha256 = "1z0rzxn7ky4dhqww5l1ldzqmswqy4y4jpbvy1236kibgxsvzsqkw";
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
