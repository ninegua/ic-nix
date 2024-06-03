{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "ec35ebd252d4ffb151d2cfceba3a86c4fb87c6d6"; # pin
    sha256 = "0apjra98ibadbbmsy6sgpraqd896hajgyhdlrq53jvbs9nj88w17";
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
    rev = "c89946270d551dd85aaa429dfc0019265b74c2ae";
    sha256 = "0cmsvcl3csq69nrq0nvs39dyijf8p4v4b6r29dxb2rwivahh51g3";
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
    rev = "455de361e9bc1485c828798f7b055a1fcf4b4e90";
    sha256 = "0d7cnk7xcrgspsy9i8grh9y4kch3fq2wpi73lgz8iy7zdf2dilhb";
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
    rev = "c934d17d8864a0896a0ca96872fabb769d34eac4";
    sha256 = "1zripjd1irf372f6b1igs9qix7sqbaw33yh35i8gsll8br8zba4f";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "7b5b6acd85181b4032dae4e4b0723899d54e13ac";
    sha256 = "01ljdbi95w2fczyq83dq21j85hlxvkbbs9g6bygsxw2cjbsgaa7i";
  };
}
