{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "30bf45e80e6b5c1660cd12c6b554d4f1e85a2d11"; # pin
    sha256 = "05im3c50jg412an86d7myfj013ssf74gmmdn4bixqrvwhsx6hgqh";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "702a629e4fbbc657aa596c28c2224dd04303a86b";
    sha256 = "1ld5gandxi41kaisdz14sky8bv6r69y9ljjna8grl3jaw9qjk4m7";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "43d229ff0cf7814ebb51cae89f7032c03c64de4a";
    sha256 = "03hwf9my2yivq1cx8vk8qkjalxjls4g5kx158ixcfjlmfwxavb4b";
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
    rev = "cb67f24b7acb9aaa4609f38a34527a9436fb6b72";
    sha256 = "19abml936jd43l8nx6zjy5lciqlqavnw9ywqa79bazhfli3wfm50";
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
    rev = "05ca5719c3baf7fb4c4982e31097ff8b07fd8a25";
    sha256 = "0yr2x34wfi40cccgdp0h3y8c6cizanmi46204a0m9gr4nwxr9wq9";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "8273d321e9a09fd8373bd4e38b0676ec6ad9c260";
    sha256 = "1mijcjavnf7ww14fg0g82h4bbsag3razmabcqb4hbhc1klywjv4v";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "a37848b4e3ccf563ac2b77fbf6193a4174dfa0e3";
    sha256 = "1w3mhhil800g7knx1yag1vnzfam4lad6a217n0zmyhfx1gr8rbma";
  };
}
