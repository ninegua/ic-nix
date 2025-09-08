{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "91732387a03c7c82bdaea6f78d7f8321cc8cb559"; # pin
    sha256 = "0bxk7gaxjpv9inyd51mr8i8ixh4cy1zqfnal204dmcf27m1gmbbl";
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
    rev = "01a4a625efc8fe5830c13f2ff73a5407e86e32d8";
    sha256 = "1jgq0v6wl7jv6i19g3g492h39w7kcljb974is0rprzas3k877grf";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "437a8d46e18ce3ddb42b33266991c52e637317ee";
    sha256 = "0hb15f76kfcskydl076w3bxjijvhm33arxnj6xrf6gg1m112qp6r";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "c3bd57f80bc4ed7468df1f5631b604fffb846509";
    sha256 = "19ggj90xwn06d2jj5wmh7x0nxbss6630907vbx5nw3scfg6y7mbs";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "44a08b4958bd9c8c7f1bf8582dbffe8dcb4e71b5";
    sha256 = "18l0jxyyys84zqa03v78ycrf8bkqsgskyryi6fhdsvczlidq949k";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "ddcce6f5b93fd3d91450867643a92c746a6b2d47";
    sha256 = "1kmyczrs49mnqs52wvsv4ipvv9l4kqz34qky2z84n4xigljmg9y8";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "f2011bb84fe821188c1395fa2e5729b6811d3886";
    sha256 = "1vgv26cb1gpqcc6z5afr3y6vg520fc5c6kkgbxwcgjab2ibaaydq";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "1ddf879f368f765145223c08bbe2c8c8f4782dcc";
    sha256 = "1zq6gldxmvpymbyjm6823fs5p4kqpvhlqdvpwwnf9dfwb8fd18rp";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "f321226125c6f30a280fe0a5013067de4a1e1847";
    sha256 = "12df4v35x17ijc5habzilxcn9a964yjg9r89lbqd109p9gb9a63n";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "0884eac1930aeb47893928081ce000df4b53d3e0";
    sha256 = "1znwk5h198ayrw1d8xsdz7ypjbra1mm2fk43v0qi2wl0ybhsw8gz";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "9b800c388be46089e12c1a7875df0b0f137e79cb";
    sha256 = "11gsxwkxwibf5x43fzkyi9qzlsqs41sdb18hiyk0bagvvj82yw0p";
  };
}
