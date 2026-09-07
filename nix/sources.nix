{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "a2a3e3dc570a82bf3d194a5ce896b4db2ec400cb"; # pin
    sha256 = "16v04svlwbp2sr0dbsfvrrfyrni4a2b7qv64bxb3kzvl2fd2341i";
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
    rev = "881ac318d0d92d62e23735fc823d1263971ecf2d";
    sha256 = "1hs6mm0zhn62nk7v3xl15rj17vqp1jvrpyjmd1b1crlbjvpc4jxb";
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
    rev = "0f6445903bd373b5905202bd215e384516174b99";
    sha256 = "0cnw8g168rca97g4jncbrs0qdrlzxagb1cs3w4xbyj0fz23cjb4f";
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
    rev = "40849ff29e7a64f07cf34899a80312ce4b387ef2";
    sha256 = "0jli064xknmf23n6ym7hj13k1hr61bja6if23w460dg5gzclq998";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "7cc578c060df6aabdb6654abe9c0f09a8df6584c";
    sha256 = "1fipa88s9bn696jjnwzfxm5yyx7gspa5mvmp8cpgwmb4g1sbcw3m";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "6fc4c564d601dd8fe94bc34c2e7bc1a2ab758ffd";
    sha256 = "1rh9q81mflhan3zxsz8ddpzj8c3wkm920bwl0ql8cs3393892ncw";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "e41d8ac25194086fa19ef6ee676decc34c500b50";
    sha256 = "1sjqqw3h9k86x2zrsr832r5k74xndjwd4vgbky4k86ribkxisndk";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "cf9f28c5c8aa0ee3646b5210f1dcf74960f25ddb";
    sha256 = "0ib73fgbx0njsg99wir5p93f7n6cksrswxs938175vkvb0qnzbv8";
  };
  icp-cli = fetchgit {
    url = "https://github.com/dfinity/icp-cli"; # main
    rev = "a1e1ab49a939e8331e649cfb642a298840fad4ea";
    sha256 = "074nmcxaz8dkfpb3m4cfjl3m4i5pihs75jmjagv3k44ch8vmj8nw";
  };
  icp-cli-network-launcher = fetchgit {
    url = "https://github.com/dfinity/icp-cli-network-launcher"; # main
    rev = "afe904601d0e3d5219773d41d8227d69896800fa";
    sha256 = "0yqcgdrmlv3mlfp7cqjws0c1f8ggn211977j8rnmh85qjxz87sbq";
  };
}
