{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "cacf86a2ea7e21150d106e9e4dda5973088f53c5"; # pin
    sha256 = "1p642iv2qpda13vsvpwk26z5rk4h12q0pqw7xq7ixgpwpx636cnd";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "54a6867c62b672dd980589f2ce79d3ddb78b549f";
    sha256 = "0ysfhw8ay8f4xrzzfnccsixbnz6pb56ml5ypmc5q0d66yqjvx0bb";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "1219a50cc957f6628a1dc27f10a26729a3f9ce10";
    sha256 = "02pahp95dzlqzndcsqdlicbjm8w7j0mmsb8w7mvjcx7n7gssfqnd";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "e71081becffefbac27785ab762286d933abc0493";
    sha256 = "1vin4s74d8w2pyi6zipbqrvz2k621a4705fc0sshjd23rkd35fn1";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "babc9db3bb5f79426454e3c3cc4c6e6a295fa518";
    sha256 = "0q6n31ig0db64x7gkvyzpfljpcbkgdz76j2gfxjn6xhs58vv1lp6";
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
    rev = "746bea25ddd4cc98709f6b9eaa283f32a21ac30d";
    sha256 = "0ymqfxhknw784pxfng03qgxrrxl3r5g156lq6j9b4l8nny6lss67";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "9f3c746ecedc644f0e81b74297fcdda716f2d06e";
    sha256 = "1c2zh6v270bp38ayc2q97q6s4l98zyac1ad8m74xbm5mrwf9737a";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "829343f682c727639386d5f306783008c6f07a45";
    sha256 = "1h66jq09slcm9qs6kaxsvafd3dgc1y4b1gbv0wgcn6lwfq949yxr";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "19bfaf3a1203673c25e78606cc53f1d361a60402";
    sha256 = "0mnbx6dl4sn59a3cc1banhi790jm58fcj0yrwph5sw6qrpqnv4sv";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "729398880545a1f49a4c6286d0dd0c94254b236f";
    sha256 = "0c5l09vb8703xlh4k83smh5w7qhry396f3c6p57a0l23igz28414";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "af69209b8f2f659abbb05ec47b7e81c310b83b43";
    sha256 = "1dj9bgxsq6j1dna475s6vvin46miywkmc22g7jhb66a9ygqx8mdr";
  };
}
