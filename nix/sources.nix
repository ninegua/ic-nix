{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "93274f1726d9575389004069c4a46a32084051f5"; # pin
    sha256 = "089ifd7ifvihv87zjld4qr7608gflip8hbi2jja0mpa0lign9mll";
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
    rev = "5df12818805867a0eb01437194d258ef50b631d1";
    sha256 = "02lpsnjw7q4hwi1bf3k5b2gzixh8ilqds0xl41a33nzh2w9m13b2";
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
    url = "https://github.com/dfinity/ic-repl"; # master
    rev = "f93f609c4787d7d59317304e90cd58b36f415843";
    sha256 = "0k0kdi7x7p5axcc4zj77hjj8cv28v8d1w37ahx157v7c2d2iqakj";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "3e13d85a0fcc6f083b1773aedb70ed308f125d36";
    sha256 = "0mccq56fhhbfpmflgqcq3zxcvh3ym4d392nr989kv530hfkzjx0i";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "e131cfddae78d8da9032c2b21a41a245eaf82259";
    sha256 = "02b18wvqzd0md2a9079a9qwbj3is6sf2wvzy2iihavdbrap2j46v";
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
    rev = "1662a43fbb60ffb25b61f2ec910353ff6f865e16";
    sha256 = "0rvbhqx2xlv60bsbapn7pf79c2w27ql1fk2dxqd38k3gbw3z2c21";
  };
  icp-cli-network-launcher = fetchgit {
    url = "https://github.com/dfinity/icp-cli-network-launcher"; # main
    rev = "34caa202bdde683492c175be7dbb12aae567aaa2";
    sha256 = "1hfyqak2dhbmw3akmd6rmabc1rhdwfh6dnli9ggrww2maz7hi3wr";
  };
}
