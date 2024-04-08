{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "ac971e7b4c851b89b312bee812f6de542ed907c5"; # pin
    sha256 = "13d7kjqjk4sk3mj2ndz4kn3pq9hfrrbx80vzqxzlg2bsybq9988n";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "ec5016aedd8cb499f9b4c5dede51f82b155268c5";
    sha256 = "050fbcj4x632qcwrwxbvy9qn29im7mj9wz4sfh08la2wwdhga2yq";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "a5644512e8198b86e2fc8ebeb4ac5458ff3456a0";
    sha256 = "0bj6phhjnbv0rg0pbbddgafm77bgvpdz3c6jaikv1c86i5vsml1k";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "6f49e5f877742b79e97ef1b6f226a7f905ba795c";
    sha256 = "1a6pvavjshyxhm5859zys76n0sw83wx3bigs90vqvr5nv5aw1189";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "0a1d46967087bb56916a27ab5695a00c89c27781";
    sha256 = "0rdhvqbjmbh0nbkmh3y3w0ldrgrdk26067xw03w4qs0jnpb97zbj";
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
    rev = "b4e9818dd31e3a84771c16eba38112c71fe4a6bd";
    sha256 = "0l6681jff85w9mzvpkqp8a78z250y9karblxdr7n4rggvwmwc9nn";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "2eb0900b6a809152a0323ac8a5bbfdfddcd3b361";
    sha256 = "00jzrhvpprxbg1hx99mdjbfbq3fy955bx1vgn33vnaz1rhx1cqrm";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "91b9c06965834a52689c770e2c268b29a5af661a";
    sha256 = "0s5pll18qnk4pf86yd8yq6i45h5200m05mxhhk4qqipv0jzxmr3p";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "db3b0ef81e891bd25f4e7088ae8845214631c49c";
    sha256 = "088p8wj58libh9bd76rlfcp9kki84sjsr9vlpy9b06qasnxflckm";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "140bd77346ca6331755dc1a1ca205bf6fe13a358";
    sha256 = "0m72yrc6y66snqkydp4svlj9fsc9gn2hqpqcwqwzwaqfsbb2ny7w";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "c2f87729004a8aa406e0c39900b64ec93249a6fb";
    sha256 = "032wlv856hz74mnb7m4zl5rhisp57v89qvgg9xccsrhyis6cnvvb";
  };
}
