{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "5e285dcaf77db014ac85d6f96ff392fe461945f5"; # pin
    sha256 = "11pmkjkb3vcf83kfgsggyk8ky9a7mkr3zlghmna8nl71spi5m4xa";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "0b9e75f3b2ff9faa41829de919e663476f936478";
    sha256 = "1l5hhd6mjkcja993w5dnllxlpmk9nvldbwc5gyx8vbcl0wc2qrx6";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "3bebf964c0081cc4b115e09904af25cbe7eb5019";
    sha256 = "1ygib4rwf65xzfn1iq01ca2cbkzx5k8mx6hx1d80rvlidrqwxd71";
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
    rev = "f80b7ee0f806d9c586c4421ab2c1b9b5c0f41dfe";
    sha256 = "071gjbvflq6plglvw4f8ck03vzbb1hasqlplk2gzcl1bf7mixizx";
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
    rev = "43bff5dc2c40eb0d55b2e0169444dce1d5f89ba6";
    sha256 = "0sv8jr1km4113acw8xmjvlgrdkynrr1hzfrgsk4vqqyi6p8k0wic";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "2eb0900b6a809152a0323ac8a5bbfdfddcd3b361";
    sha256 = "00jzrhvpprxbg1hx99mdjbfbq3fy955bx1vgn33vnaz1rhx1cqrm";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "b0622bbbd3cc5c54f9b3ba6faf95de0385066df7";
    sha256 = "0rnr8y6sd57zvw23zv8f17pqwqy357dfvn8f48ciih10a58rg8h7";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "8620c0e92802451ca5616d5e822a7712feb0ff21";
    sha256 = "0pnzqbd4sb2wnpqhkqpxx4b5dwmkz5qyr2hy3i18mqh53zllyrkm";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "ed2d34f96439b05c8a88964d6d6c09606220c1b4";
    sha256 = "1vfnn39mfl33y87qz1z4mvq5ahi2ghcrr1a08sbwhbymrvk35ffs";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "c2f87729004a8aa406e0c39900b64ec93249a6fb";
    sha256 = "032wlv856hz74mnb7m4zl5rhisp57v89qvgg9xccsrhyis6cnvvb";
  };
}
