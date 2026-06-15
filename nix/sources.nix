{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "77f5bce6c37ee4e149cf7c41fdaef38059a7a058"; # pin
    sha256 = "1cafqgwb88ajjaincdvi9na6d54c6giaw8il41v04578m4m91wyi";
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
    rev = "b9006b2363e4b00fa8ca4b109a57f08653e24c02";
    sha256 = "1gbnr4z7glijqm575rs0rj94534lycchz6c7mim48vl9v0plbinn";
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
    rev = "9f41b205390626aa358e8a2a96498bb26e632f13";
    sha256 = "0j5kfs7x3c2pjqxqw4h20c8ijlw2gzninscn8nkazv3f6rln49j9";
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
    rev = "f97db285a05ef378588f8c36728f58de00547f0f";
    sha256 = "0847hkji67l3zw765lpn9qxnahk8dk6xysrjs4vxxn65pl63dpp0";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "6fc4c564d601dd8fe94bc34c2e7bc1a2ab758ffd";
    sha256 = "1rh9q81mflhan3zxsz8ddpzj8c3wkm920bwl0ql8cs3393892ncw";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "3267c270e21933b205a50ac75bc616eb782d3725";
    sha256 = "0vp4p8zffy4iva9rvvmnvkjhk1ri4zl48ny8ckjyg4rsyqrjqxl4";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "cf9f28c5c8aa0ee3646b5210f1dcf74960f25ddb";
    sha256 = "0ib73fgbx0njsg99wir5p93f7n6cksrswxs938175vkvb0qnzbv8";
  };
  icp-cli = fetchgit {
    url = "https://github.com/dfinity/icp-cli"; # main
    rev = "917d7e7f3b2948a2907761efa234cda40e335230";
    sha256 = "085fg2x5m045sw7i6b8gv6b7hhcs7gi33bvc8d8mkmsjjgq05xsc";
  };
  icp-cli-network-launcher = fetchgit {
    url = "https://github.com/dfinity/icp-cli-network-launcher"; # main
    rev = "593ae2ef7fe4b15e4d322a054eddb40f5a6c53a2";
    sha256 = "10mnzfgvx5mdacxnyzi6pj3c8qcl45msmn9zrmgklxxj3vrd1mm8";
  };
}
