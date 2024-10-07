{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "c43a4880199c00135c8415957851e823b3fb769e"; # pin
    sha256 = "1azxrg29w51qznnpss60xgs62rll0km3a3vrj39hrrbv1ysj3mgl";
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
    rev = "15a4ac210f1d69e52557ada6fc54f7f995853bf4";
    sha256 = "0mk7x43dmc5w8angw5hwv9dl1m25b38r0vdipj86jib1c8wpvnpv";
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
    rev = "ab9b342e608166502a3ab44092be8f23d1bff27d";
    sha256 = "05ry9mqacasgwzh3nybv0f6xj3jdaln96k6kzy47yyd4kixnj8dg";
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
    rev = "63f400b893d85b4176367f8c3d3aa5214c987712";
    sha256 = "1mplnvmm3ibw2znxs9ar4yh8mp1vk4zz7yplyynfbnlqv41610h8";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "f3bcbf19237870cd13e658e24d065d90f33ddc2e";
    sha256 = "13ca93pbr34ivgs312xczw741ksz01n3q56340yyfvqc0v2jn6i7";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "e3021b7a867d8c9853d75dc2eaa4af88a1738aa0";
    sha256 = "18pqsf339z075gk61fiyssibn5h3icqfiw2x6rgrlp29az7d9asv";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "882fa28116c84887be626a44ce031b739e45e3d5";
    sha256 = "0y9gp9j0a26gklhch9wa99fyg34a1iqvk6hx4i0viciq6sg9vbaw";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "98164b277b5cabd875a1eb139dce2f453cd02aeb";
    sha256 = "0szawy7w5xp16r5xyyjcsbqglx39vb2pnbw46dwx40w3sswyylaj";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "5471d0353f8395c33daf7a6ba9a0778f8b6fc7a8";
    sha256 = "0cr7m8g7gjv7a371jy70v0sh918rvkxdrk2aasq59lillkpayay3";
  };
}
