{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "1e3f540180f15de4aae10a40257907dc47af8480"; # pin
    sha256 = "00zqdnl09qhhfd8qjw0jdxnd7miawhxzrhwhcm3k2xkwwx3xp1v2";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "05f41f0d540adbef9ddbec728f84c7ec92194629";
    sha256 = "15chiw8314hyc5kb9vy46qv1qqivyrbw3ffi2fhhhn3snd3sp12b";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "a59b713857eec969d1c79215ec0b36f2c1d0ee6d";
    sha256 = "0chcwdl5av6bg8jzffn8ps1hprzpy3z808g6w6cn9vi3q06ya5sw";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "80ededb39954739b18b88fc0e5561264003cf9ab";
    sha256 = "0fw6vqv9643cq4vi00sg2g055623vv8flld2zv4vrlffim0d01gw";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "be1704a9568e98ae073f074f7271cae68c23d161";
    sha256 = "1xgrrbl83qv8by0a53vs0ca6y2qxsm9jmczqa61q45jpkrrpq4fa";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "b9ccecfcd24722e28ecafe417e27bf29b7412ea1";
    sha256 = "0i54vaw11754711bcg1qb3l04s6w7bm5ckphzg4fh7hjijn9ah5k";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "d00702fe8fe153195dd2bea8f9bb60abf776a9d7";
    sha256 = "150rdfnnz65139y2wvkh42ph9cx6af4ndp6sbl3f8r7723jh41x5";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "bcf7214381cfcd2f653dcd00b17b4c84412c324d";
    sha256 = "1zzpb5wfylji3v88xdfiw8jf6qdi9s240wqjm9v88cv0a0y3z34b";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "7bac9659efa29b6555d701bcaf73cdaf3da89165";
    sha256 = "1pzbnks46hbxwz3lav3294fzjqi2qcpm2spbhykl506s34mincc0";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "782c43753e896ebd228cc9a1a1ad7c19498d2fff";
    sha256 = "1harmil8d1h00bhga124wnrnlirnz6h55kd4qmy89zvblymwylxr";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "6bc4b33d2fd2ee08ef492779cf96bbf2f4146a2b";
    sha256 = "0454pcn04iqj5hhka91d8ljmgk42cy32c6qk04yvxifyws5ggg62";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "daf0035cfdc6abdef271a1b9179c282fc3e8550d";
    sha256 = "10z3ngmwc7xbqw3297cvzr257kd396z35cmvnldp5ndd88755abb";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "dd4ff1786f459112d100137435594562b5e910fc";
    sha256 = "0njhdb6hk2pvps1f6lrsm26yy8zpxl38azdyx0k368zvdzkqlkdb";
  };
}
