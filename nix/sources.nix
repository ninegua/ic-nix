{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "b9a0f18dd5d6019e3241f205de797bca0d9cc3f8"; # pin
    sha256 = "0fnhsb909iw2z6z5ab4nglrazs3hb8lbb54xb38gvx76576283l3";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "43d8d6ac14deebcbedafd10711dd2e86793fb724";
    sha256 = "11mipfqwl9pycpmh319y6ac2ggfjzvd2kla03crlh7rfj93w6jnk";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "1c300024f238dbd7b98021c0ec20f5e7ad2826ef";
    sha256 = "00zlw3ggpylmwd8424aszjch2nja3s6hvd9qzhn7hqwzwsknwlxm";
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
    rev = "4a2960eda721f685b988de91b971386cde8cde7c";
    sha256 = "1y1285s3b1znnyqvjbxp0rgv06nrd9m57ryixsc7d328w61kciy6";
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
    rev = "2eb0900b6a809152a0323ac8a5bbfdfddcd3b361";
    sha256 = "00jzrhvpprxbg1hx99mdjbfbq3fy955bx1vgn33vnaz1rhx1cqrm";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "7755301c80273a642f53f78b4e3493f4e0ecde8e";
    sha256 = "1jsax2i8gp9fhhwmpy9kas09mzgq4ma3jx1wmqc80gy01cz7w5vn";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "7fa27b03d0d891b30a89b1b281ca3ba0661f2750";
    sha256 = "1vprhla82h8c31k77d8cp1pakydbssnj245ybsiii0y78zawbqcy";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "be929fd7967249c879f48f2f494cbfc5805a7d98";
    sha256 = "1bnz76bqraqrjiama1svbgxf8hf34sc4imz1y968731kg44ffk7z";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "77579fff243f6303dd3c8545a070a1b1ce03069f";
    sha256 = "1djjprpx73a57gmq4k6kwm5n0pg1394ff61fgs31dmy8yrqqp9pd";
  };
}
