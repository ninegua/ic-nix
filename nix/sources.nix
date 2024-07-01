{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "9c006a50d364edf1403ef50b24c3be39dba8a5f6"; # pin
    sha256 = "10sxf3gi82qydqws1zw3jd6v4rayk2yzcy3z8jhrqilynpbadg69";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "7151798dd6e80f43f7ee65a1141d32380e991dc2";
    sha256 = "1xw33z50alark7jnr62nn7chfglh0lrvbfw7kk79azgimzz158v8";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "0d36eff4c567b53ee0a6c654ff448ace8263ffc4";
    sha256 = "1zifcq3yavhwkhhkjr1jkddabyh9fkp5vc3fp8zsmx2iilkrz89r";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "e4d326221fc1ecb253b9b793c3de6417e42865b1";
    sha256 = "0hnnb808ppggxq5g4bha3zq5mb7ygck994dh1ki09nj2brj4ml7h";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "416959be6e9e756bdf8a2975a58909919da9c85d";
    sha256 = "092ka6acs1n3g000hgxqmiqajk94qgc9imrf3rxkw0dlkpwmxf6m";
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
    rev = "c96369a5183c26d87ad16d38277c786c2a55b52d";
    sha256 = "0p26a1fbb38inkvmlmim84adm8cm9pbzb5rn0m1igzlh7mjsrn2k";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "d45e0b9d4baa1e21be518c564a8138e033cd6d82";
    sha256 = "1yi4ff8rh04r6p6khf6mw0iym5fyrs55ncml92gw4nw6jvd0xb2s";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "af33ed8763151aeadebcf63c8a6c9d9736c144cc";
    sha256 = "1896zaspq2v6cimyhpzbl74hqjpic7d0h29a152k33vbvkiafwi0";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "8857ee400c271654ec6e8a0a5a94c1e4a94943c9";
    sha256 = "1gvpv3xw2j04hgxzfk32xljdfag8262bj1rg3zahmpaa0cf0zg9k";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "be929fd7967249c879f48f2f494cbfc5805a7d98";
    sha256 = "1bnz76bqraqrjiama1svbgxf8hf34sc4imz1y968731kg44ffk7z";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "3fdddbc931ccf86a9db7f096f8b5740e035b8156";
    sha256 = "0v89qcny2xlw2000nhn8r8z6w46lw6gfps5hpgadfri5a2hyygsv";
  };
}
