{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "62e841d27ea12451f504e74c54843b7cbf93ca4d"; # pin
    sha256 = "07w8k1kwc5lb0ixiw8zh82a8m7x87pr1gfrlskc3jvvdb2581z8m";
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
    rev = "9e051faaf58dce4215e0e816a6da240550ec6d30";
    sha256 = "163ddrn8gr0j3286s8dh5i1nw3465f45ccc41aihnrlhdpnpwanz";
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
    rev = "8734c8e94e1fea91c3734cc5b49609f6d23ccb02";
    sha256 = "11rg962wxv8scz4aca4cxzfiby4q167c4msh8lg45sfa93bkql95";
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
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "4ef8268d347a583c280c0521d4afee9d886b200d";
    sha256 = "0acw6rap1k998bn68b18vv9k7cg69f1pnm7xjpay98dfvzkjnk9h";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "3e13d85a0fcc6f083b1773aedb70ed308f125d36";
    sha256 = "0mccq56fhhbfpmflgqcq3zxcvh3ym4d392nr989kv530hfkzjx0i";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "578487d0fefde5a84183c25517cfa72eac0c437b";
    sha256 = "01lcwlhb2r7wxl4hmiwws22886ycpcv5k9xnfcwayzyicbakqvxh";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "6fc4c564d601dd8fe94bc34c2e7bc1a2ab758ffd";
    sha256 = "1rh9q81mflhan3zxsz8ddpzj8c3wkm920bwl0ql8cs3393892ncw";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "af6d55f058297a54de3ebff3d9b3176882de224b";
    sha256 = "0vp4p8zffy4iva9rvvmnvkjhk1ri4zl48ny8ckjyg4rsyqrjqxl4";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "cf9f28c5c8aa0ee3646b5210f1dcf74960f25ddb";
    sha256 = "0ib73fgbx0njsg99wir5p93f7n6cksrswxs938175vkvb0qnzbv8";
  };
  icp-cli = fetchgit {
    url = "https://github.com/dfinity/icp-cli"; # main
    rev = "935ac0264aa37c171457d41d40febb6dcd420ea4";
    sha256 = "0fylzhjc5wfp2myqihsmwi7g1ax6sdj93jrjf0dhhhk53j8si99j";
  };
  icp-cli-network-launcher = fetchgit {
    url = "https://github.com/dfinity/icp-cli-network-launcher"; # main
    rev = "a618e4a4111ff6942456d280032992b98cd83b5a";
    sha256 = "15p9frbx104hmk460lp8d6w7a59s7rqkn3slhd2gwvyldcvy9n3r";
  };
}
