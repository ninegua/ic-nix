{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "02dcaf3ccdfe46bd959d683d43c5513d37a1420d"; # pin
    sha256 = "0a2nr0zcp9jslpl7m52rlqi5jych7bd7qxyw1x3b3b7c6hn4p342";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "080e1599560cfc3c95e8aa82e76ba35360d5e28d";
    sha256 = "0q3l0qyvyj6xk1v2iw40mdnx7b8yynf4x9bqmjn6hwfqvq1jhizq";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "760676a0f5ec396f49cb92dc4b6c5c19a512f4c2";
    sha256 = "0vai7av8dkvdwk19qbxr2kkpx1q5x3985am80bm85l1mi923lazv";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "f2b7a634e34213aa5288cd2333ddfb7fa4403f6d";
    sha256 = "1wd9rcmhg82h08l3gz3gmn2xpgalvf679w7yz2g35yzbg2b5g2fd";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "e6851226d34e0ba41d02a00194b00dc6a6479f9b";
    sha256 = "0cszxs3swqx14p4xw2hlgkd35z615m3dxn9yv718qq3v99qc1bmh";
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
    rev = "a62c7afbd489edd1bcd4d0669d7ee574840c3036";
    sha256 = "0vc0h8s98r2f3yn9pslanxlihgrhj9k8a781wgvrbjrck12dgsrc";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "2eb0900b6a809152a0323ac8a5bbfdfddcd3b361";
    sha256 = "00jzrhvpprxbg1hx99mdjbfbq3fy955bx1vgn33vnaz1rhx1cqrm";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "ae4d0f794a808b88f8b83da7eb96ca87b3d751d4";
    sha256 = "1xr9yxypy5kd0cxvap029z82m4vn3y4clvjjsdl251bc8kwdc5qi";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "70ddb3aa63d68b9f529df0e31c729cec621835e7";
    sha256 = "0jwc291rwiagr0b6mvzkzjgn6j5r13bm14m6zdh9zffa6npsppzr";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "b9e49377a8120d9c2a4465b58a312ffe86e5519d";
    sha256 = "16qfl0w7sm5a6xyaxvz9lr4y03zyz738yvrsrxhzxivns6hw3nvp";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "c2f87729004a8aa406e0c39900b64ec93249a6fb";
    sha256 = "032wlv856hz74mnb7m4zl5rhisp57v89qvgg9xccsrhyis6cnvvb";
  };
}
