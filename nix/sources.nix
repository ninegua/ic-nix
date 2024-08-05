{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "97cfe8acbb20c51709ff1ce6346ac7006dfce53b"; # pin
    sha256 = "sha256-Ou9MhgR7zEtiLxZXGwbSPBGboN0puJ5Azqwg0i4RT+Q=";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "6ab0f50688905b525063bc66d078e942008c7083";
    sha256 = "1j8ymccf0p1sqw7p43xxhbiaz2mk1mivvhbja0sx1qvgaawcvhws";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "5ac33ad976c51d1320fdfc5389851fe106095f42";
    sha256 = "063y052zklk30g61zqkk8ydzvhy371n75v7w74wl651rrdskyipx";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "cf195379127156f865866b1d2986df028158bac0";
    sha256 = "1cq86l3girnh0pljmbpqcm92ia78af26yyfhrramk2qfhd7jsp4k";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "00625224f980880efd1214a5eb02a43311c27ccb";
    sha256 = "0s4r2618sn6766y5my7wbr4krhizrxnfb3i64g2njf64vdi5q286";
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
    rev = "4a5555e29c53dffd578bacebc2d55e26bb234058";
    sha256 = "0i86c5kbg7zm4bqbpb3sfjqsq94qhz6lgidc5pmpngl3gkgx1jvr";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "61b6f12f87f2e1c91526c176ad68ba2eb27a068e";
    sha256 = "0dnpw9w127bqjlzch33k14zjjfx8mhhpxr7x65qxp0gglhf62g6s";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "34b4eb0b581bbf04902e20bf1370e3a293d1956f";
    sha256 = "1gr49p938hzm8fq4r3n7j2lzfj0hmah5sb411sma24plnmwy7ljx";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "59795716487fbb8a9910ac503bcea1e0cb08c932";
    sha256 = "1qrqpprl370ap1dv7fwiwg5mpd8l03g7050aa55v224mw960y662";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "7e9489a65aba3e6993d8b96f6ef09e34a50837c1";
    sha256 = "1vsikyf9n5pkmyxqqqf5zsr05zw440jhifvvpz899l5g043m9r7w";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "25df24529735c0a9f20ff073be3a0db47378876e";
    sha256 = "1ir94g1nic4skbz77ccr4hvkha89zba0vf4cly5asxlnnb53dl99";
  };
}
