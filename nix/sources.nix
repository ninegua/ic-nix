{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "5c2c0c5bc886df2c297c9340e9586bdfd122c323"; # pin
    sha256 = "10kbn1p0a8fd4vbgxy48c12wxicbx57zrq6kgz1rmf1nidbxc6c4";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "b02855e1801ce081677d4c2a840199b830487d72";
    sha256 = "1g6mcn8m8xbkdalpagzkvk2w5a28fdy25fmbbrpd6x53g84rjrg8";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "aa81ff31fcdcd0a3e39be07ed5bf79e324bd34bf";
    sha256 = "0rgf3w74sqszma61saq7ckzsklxvxris907w9qrw9ackkrg1xr84";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "c768aa8d5c67e6e5b72fc09fb6695d5041060856";
    sha256 = "174shf091x79fj4ak99skf9jjb777y6kg2y15d51sakbri6aqf1a";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "b038e268df7dfa4b26c8f669c38644a8a0f1dd01";
    sha256 = "0zb8ddcrwr8svds4w5l7fad35ywzp7zlvdbk2xmkk5d9rj7h01vv";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "80347902ee962fa0e7b6bd416979064d3eeaf43f";
    sha256 = "0apzqy22warj0lxd9vqrkn4247ll6pd2wnz8lfw3pldhgn7849n2";
  };
  ic-repl = fetchgit {
    url = "https://github.com/dfinity/ic-repl"; # master
    rev = "f93f609c4787d7d59317304e90cd58b36f415843";
    sha256 = "0k0kdi7x7p5axcc4zj77hjj8cv28v8d1w37ahx157v7c2d2iqakj";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "ca2a971c4b82e0503c24bf72ac46f547f3cebede";
    sha256 = "135nk6bgdmfz8q6nvxbs4gb9lvwmydhfcr3ld9j4wjmvh93c5jp0";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "96fd262e0e7e9d0df16751bd745b52a236eac1be";
    sha256 = "1knp3rn5qizl8q5866qq9f7skvxp8j5kk5cgnzkkvcpjif25xrrk";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "6fc4c564d601dd8fe94bc34c2e7bc1a2ab758ffd";
    sha256 = "1rh9q81mflhan3zxsz8ddpzj8c3wkm920bwl0ql8cs3393892ncw";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "cf970ece984644a670fe1d21648b545474aa2aef";
    sha256 = "0dm6zf4iyn81fv4kk1kbvw87hr4s21ymzs4m6v5y41cw73s3ps94";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "cf9f28c5c8aa0ee3646b5210f1dcf74960f25ddb";
    sha256 = "0ib73fgbx0njsg99wir5p93f7n6cksrswxs938175vkvb0qnzbv8";
  };
  icp-cli = fetchgit {
    url = "https://github.com/dfinity/icp-cli"; # main
    rev = "d2f41d941a67cd9cbece22bc809f795b9de0904b";
    sha256 = "17kbd1h6agf18cfndah0cfisb45gywwjgv3pgmi1vjwp9766vw4s";
  };
  icp-cli-network-launcher = fetchgit {
    url = "https://github.com/dfinity/icp-cli-network-launcher"; # main
    rev = "7c94afbec98106151091229cf1c917f3a96eb831";
    sha256 = "0p8h8r2iwdvdy7xdhg8mragrj8k1hxvz9dm59djnzsv82anr8v0x";
  };
}
