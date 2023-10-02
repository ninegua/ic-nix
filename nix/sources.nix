{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "91bf38ff3cb927cb94027d9da513cd15f91a5b04"; # pin
    sha256 = "0ym13pflxiyd2ws30m941na9zfdwcqh1sdig83cvfpzzmrl8v2j3";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "36a99cd19ad41d9e94f6221667bc6a4b3fddaace";
    sha256 = "1b4dkjwddzshc16w2rni96fdik8jmb5vcwdd0f8y0fffg3vx76lx";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "ddbc845848e2b4b9110b7d134b993475924ced79";
    sha256 = "05ym91qk8w0z9pg35jkrrl258d7znnm4s81ar6wmkh8byn3r54n7";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "475e617e2ec91091f12168b1432ca6039aa7cb0e";
    sha256 = "1sdb4zscpkcif9ln0l5cfisn1w167ixm4f3yk6my3ih41p4wpcs6";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "d4dae89648d654cdcad6b0aa8b265bf957f07531";
    sha256 = "1lfa9sx1drf96w8ss5h7p60pppwi3k4gjqinvfh2smcrggpks6p9";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "a7be23c1eed5063b451576d24a2de66816eb5ce9";
    sha256 = "11g11f8a8g7mqni3g73b7ylzbk7xkwy8ii1zp03yripcxsjgnplm";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "d00702fe8fe153195dd2bea8f9bb60abf776a9d7";
    sha256 = "150rdfnnz65139y2wvkh42ph9cx6af4ndp6sbl3f8r7723jh41x5";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "f1fefa7dc81992ef41323cc7f47d168c7bdc05fd";
    sha256 = "03ij4w7lpkjlh7bq2bpdm931g55vpb1qgv40kkpn3835m6aj9alh";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "822ebefcee0873d752fab4f2450e13951dbfca35";
    sha256 = "09ivmfshv3fz5g5ma95zkk1ga0qqr0aajw23zs100j0h6ifm4h6g";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "30337723566e9ac18c1c8fb57688cb7d4e24ca03";
    sha256 = "1rwlm9s725vfs475940fxs7395w9r27dlnwjsmikxjlchcvvl1s7";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "a2623bc5f06ed6cebc6e4e6a8142d4fe96ec0e20";
    sha256 = "sha256-18/gUBdyBWwdGgXXWbQNEgmAy8mGfGdGx+uTBNyoptY=";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "9c4db330d96938d95eda69bbf5878db91aae0aa1";
    sha256 = "sha256-aSKGiG0cRMZIp8uhACuDu+roQvITPeozAVri+Xeu/U4=";
  };
}
