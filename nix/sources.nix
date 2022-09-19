{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "50c53c8e996e7b00b88c2f43120c46534cc499f6";
    sha256 = "1v7fgcws7pf2id5cmiz9328k9w1rsillbbnizjyl2i8i6h0vh3d7";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "7624053a50e1683c48757ee5dacbb454921e39ef";
    sha256 = "1rm27a00983v581cqzh6nvsc01bpkjvvkybmzmvpnb9f4nkzrxgb";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "e111bd09da3daaa01ebd6f81c68462f8036012df";
    sha256 = "0m8n4pvv2srqy1k5b8zqqlq7cas81hj749cvnj1w1a6yvdimim54";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "c174fc4bfc0287ccbfbd5a4b55edbc8669e3f2f3";
    sha256 = "1hjjm95av6g0ff2440vml9imgqa5k2s8n45vj6aa1ckrdji2w349";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "c40403f9b02f1b71c73a0537518ba26f91c194c4";
    sha256 = "00v78srd4f1k3b0kddkyhyd5wq6bigppdsh88gmx401kxh0kjps3";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "c8a1d862e548436a9b59a932ac0eb315ae47e7e1";
    sha256 = "1hisx9rlyq6lnsq60l25zpljvf66vhr0bsf4s4zmsrba64lj7sxp";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "85d3b082367e8ec75ca066d49b21cc1f8568efa5";
    sha256 = "1apf3gz8zs5z471hq9f7in4ra2wcrivjihr2jzzvp2lbqykfb114";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "97cf04148739cd6b0f9b5ac4a7bc7029ed11c1f6";
    sha256 = "0j9w748ivbk82w6vqryb2ss2pg7v3zvfzk3zbmmvk03dhvdfp2n7";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "528a4b04807904899f67b919a88597656e0cd6fa";
    sha256 = "1bra4dkfi87k9c7qrzb2qj81kw32id6625f67w9b4q4fz0az4cmk";
  };

}
