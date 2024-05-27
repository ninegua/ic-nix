{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "b6b2ef469bb00d38b48b789cae91251f27011b82"; # pin
    sha256 = "13sjprp6ksl45xmll70ssav7i38nb7ag4d4974jljzfpa2aar8hi";
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
    rev = "d141570c9941080233dd63de4e04c00da579241a";
    sha256 = "10mxsmd74d0zar6qkal3i33brpaxhrvfyjd5jnlkwz5b95524b87";
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
    rev = "48e412d9c77c97a9762185cdf59388dc81578bca";
    sha256 = "1h5m0qrs272kdvwwpc2mm046wg886rh7hck7a4cd04gh3gfy9sa9";
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
    rev = "223c28283aca1d4c321e560d5a1818df21469a77";
    sha256 = "0sq9m7g066xi7150s200d8r32pllp11k86qclzlxb9hjqm46cgvf";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "d3db617c3698e7ee1a4a3074c495ff063b91bab1";
    sha256 = "05giqrswbwhnk1vvc2rqi4vl3fx0m687q5ff6d6vqq289b3x7yw7";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "36c945b99e808c3fcd66a4d925014b964571d4d4";
    sha256 = "0p5k5lndac986i4xz3xgzz71l4j2c5i9zygi75jxvlk1sf3hp04i";
  };
}
