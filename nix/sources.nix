{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "d781ef0aa1ada11964394bd9269675ebe84a7b86"; # pin
    sha256 = "1a4czqd42wr62ls6dyjglp0qiqhnrqzp25br1xr6ii0rgqmwi24d";
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
    rev = "62e68a733b54dd9895ee1e2b5e5c98f547ccf924";
    sha256 = "1qfwd4189qv7p3cy81qp6pbnz6wv0yk71s4b4fnplfrsivgyg7i6";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "c6e84991f8781aef1d713abc7c32774f6c23c09b";
    sha256 = "0gxsrxkv31n3a6q896x3pr40v7pnxazjnvrvxpgwxc914wbcxgqw";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "fd3fc0c8cae7fc77f5e6892919805a6e570dbb73";
    sha256 = "17naz3hl6lc8rbyyfcaxv0sazsi4sw1m61cvjayh2xb9qkjw9bri";
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
    rev = "81c433800c22c37d30285286fdb930baf5ee3727";
    sha256 = "01cl4gclnv9sqcjn4sxjwgza26skmkzfh61k1j5bnhwlb4z31lzf";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "929fd0b31e9ec69aad7cf6285df0394f25fe1815";
    sha256 = "1b0qvh042hhjaag311hd43978hy2ripggg6n4z7gl57api6vzbwj";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "3e3a643949cd1f944211a8cdc00febb672cb0171";
    sha256 = "14f5kyj404fbplqq2kfl0ycd2i1fnzawxd5g7hn2clf7mg41g1h7";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "819c908ecbacf06c8824d05c6d6374b9feeea188";
    sha256 = "1yxmaydkmq89r3vwcyvf82cx0464n67r21n6v51vp48n8iaw6ymw";
  };
}
