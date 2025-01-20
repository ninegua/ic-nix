{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "aa705aaa621c2e0d4f146f3a1de801edcb0fa0d5"; # pin
    sha256 = "17fhxpfbczx78xdsziq2snmphlxcmm6ch024b9yyvv18gl313g53";
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
    rev = "34311f17db1f9a372bda83725c5b30fca03df238";
    sha256 = "0j5wskjw3lgfakw1vxy67hd2wcqscf5pylwh9gbcfqsbfsh7qv9r";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "87f65ab8a2a15c47622383f7bf99fbb5f1dce798";
    sha256 = "1gzlg84d28pnd68li735l3bk3hnc3anj985yy8fm62rf9h8p2jdx";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "990082609a0b43f0ab9a805b21acb1ed4a651cbb";
    sha256 = "1fiv3yglhlv6hl7fz0s3l3vr1syd7hrhwfpil3gdm4bgwz0byga0";
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
    rev = "707016c27b88dee63c11448039b0e2cc4899c8de";
    sha256 = "0czd10gbn30syxyxxp3lkswnw8i1gr6z2d4ffmv5gjr9rfkn0l26";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "d5a5127543accbf526a1469231d1824709f15d57";
    sha256 = "0ypx547hbzj7y1nh6hc53sf9vxwc7y7dnxpqmp7x721dnawrmgh1";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "929fd0b31e9ec69aad7cf6285df0394f25fe1815";
    sha256 = "1b0qvh042hhjaag311hd43978hy2ripggg6n4z7gl57api6vzbwj";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "446bea4efd3431fa80e35a50914b2488740dcdc9";
    sha256 = "124zy2z5npyjjzvvrd3sjxlkbxrlyy3zn0wq8m9jr12wmn961nvg";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "eece45761d24f76525675837c6ddc5b0ab14223a";
    sha256 = "16vi14wm9m7071kdglwn15wnxnqz813g9gf5qsm6s4gkc9w0n0dm";
  };
}
