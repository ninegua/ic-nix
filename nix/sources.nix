{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "3d6a76efba59d6f03026d6b7c1c9a1dfce96ee93"; # pin
    sha256 = "08y7vsb39mf9750nrbn4avsa3nhjnkl1h670dj6rqwz8acjwqrld";
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
    rev = "adb31da874ef0f1ed0c12b15878134e07f9ba49d";
    sha256 = "1byj2nayygfh1xxfq4hz7ridlw15ky73wyv927jxwfbkkihrmbir";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "e1b5bba80a9ef1faacfcffa3e8f64ab84d60c570";
    sha256 = "09yhfk17rb9xk2cvi6353hfb43df05pg0x1gw5qrf8n0g0dvd3jx";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "6248fe126e00ead9c25e41c4e4af9508d8c4c741";
    sha256 = "0rpbyncbh9myk7kfchmm61nizrrhybvlcl4g9x469mc8nxb7zndc";
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
    rev = "c9439739a7b800a2137dca555efee35a8cf57971";
    sha256 = "1s698q3lacgp7dfgqpcxwac06wbmasp0sykwf1lf7k762kc93rgy";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "8c20762b734316613792226fb247a2aabd8fb823";
    sha256 = "125vv6rhiqkwvznzh8y2qmyjskjcwhws41ij8n7cyy28ygfcrmr8";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "3e54016734c8f73fb3acabc9c9e72c960c85eb3b";
    sha256 = "0ryhg7w3ap1p7x2rwn644z0p978qq050iwyxdrhq79hd9lyiypk3";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "6e11a350112f9b907c4d590d8217f340e153d898";
    sha256 = "18p0yscyjchjbz0vmg2alc4pxm3lbmzg8shcnjxrjqb57ii3nvgz";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "af69209b8f2f659abbb05ec47b7e81c310b83b43";
    sha256 = "1dj9bgxsq6j1dna475s6vvin46miywkmc22g7jhb66a9ygqx8mdr";
  };
}
