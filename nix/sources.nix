{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "d9fe2076f677a08734bed90c67b1c3f4056ed621"; # pin
    sha256 = "1w3gq2a572z5c6c3lx404h6riaxgyk7860lwk215f4fw29540r9m";
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
    rev = "e88efd9f9b7a7631586ea4ea06432426a1dcb986";
    sha256 = "1g98nzb7crd5qw182hsmd1c3nzf35vjbrm3970gfl5jd1im0scl6";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "00022cc2ffee546f625a0a096ea4f2a6505a612f";
    sha256 = "0jkck8f5dlba4w52nk9kxnwww4zhfm4kh7kmwcwjns9py7bn7xcv";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "26a976dac61991eaaf426c0fd9d31eaafecc7c42";
    sha256 = "0xagj2h525033dwhii89dwgnxjq0mwn7jak1p80sqwim17clpfyy";
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
    rev = "2121549401c0e3412f1942638703434efb300d9a";
    sha256 = "0i5crvzndpmma009wxmi0rzlpw9hm79kkcrbiyp7if0y64nhi7rd";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "48db35ee8e77b40d2749961f29a6ad53e9698571";
    sha256 = "12lnzk2y4z9bkxw4401qyhkw88zx2brq2g0gx5g7kjljadm6298w";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "067025a8c55c2b843fce40f6ba38ffe6dd543b84";
    sha256 = "047j585rlfilcczrslvyanycp4qqfnzy31crxgcz8sazz7jbk1za";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "b3090c343ba571baf0bb7d0bd503123650a67e2a";
    sha256 = "1ahi2nh2cyak4xb315pd0pqvlyny385yrrdl496psbxlvfm78ims";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "a53948ed52c280e5a2bd917f4d17ffbfa69440c4";
    sha256 = "0lymhkz4n4in51p708krvqd43wais746a935944047iihmpv7hpn";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "1d3cc48288cc8917f01cd867c574d90f08cfdbb0";
    sha256 = "0irqx5qr87skf57nkb5gl6jy6aqz8bihg7h1ji69ivnvg1c5nhl1";
  };
}
