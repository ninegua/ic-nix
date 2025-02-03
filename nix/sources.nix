{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "4ba583480e05a518aa2bcf36f5a0e48475e8edc2"; # pin
    sha256 = "0mmmk5n4pa8bgpgx4hp7j4pdq2dv3acgh1qg99i06hjpwb9cifkv";
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
    rev = "592ba52b2555431b92d44ed4a468d7677d6180f9";
    sha256 = "10mwfq6g6zm0mxwh3zisr1pi2krq2s87cxh0fxm5bsdp4479bpav";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "dc363a83c2150a3830211d4a0d8910d86cd4e01a";
    sha256 = "0cmsqcckzrvfp4l38njbnijk6nv091gj0j4a31ifvnnb8142wlgw";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "9fcb5a3268a81c2cb40acf9523087ddf1d5e4e8c";
    sha256 = "0nfxapjckczr2pyag92pyvkls1dhzxmb1p04441ijd8xg668pqfi";
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
    rev = "fd863e9fe32d30c9624c2dd293b3067e5da62fb7";
    sha256 = "1xmfbr0mi4lgm0pm517bfrxlnrfxdk2ssh8yxnf771dn8nkcdkg0";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "4c52e75c12bb730e795d8a4c2862987f4a9524a3";
    sha256 = "0xbxmwfk5124d86dhawbvprvq80j8j6wl0li706cf5pw9sb3ibqa";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "f7269bc25acf1691411ff91840efe0247ddf6d53";
    sha256 = "1bs5jbljjwr9g8qz6crfr5iicmlrary28lhkziqcm1cxz15kb6r4";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "929fd0b31e9ec69aad7cf6285df0394f25fe1815";
    sha256 = "1b0qvh042hhjaag311hd43978hy2ripggg6n4z7gl57api6vzbwj";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "9ebf6314ce2fcb36772c7d81d6d414b4628d6101";
    sha256 = "1v6fcvkqarhjbgj210582y7cmjvprfhhlhw43k2ib3ngcy4c0aw2";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "62b4f88171dd7bccaa6107d16d824760c34db1ec";
    sha256 = "0bhhk41wymmwsgva28a6ad2j0h4ys287q4zrdvljibsyl23k83yd";
  };
}
