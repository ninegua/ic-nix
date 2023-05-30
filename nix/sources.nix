{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "857c6b7704dd4abcff451d951db2d986c4f38320"; # pin
    sha256 = "sha256-qK2NjtCg5WZofn9lzdPn27p1MYodD4gEUHTVcgd0Nek=";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "7e4a2d643f3ea36c8c111c11270c19ff18293271";
    sha256 = "0jqwiijqqvl6z9wb7323sdjnpw78v2rq9k33skknvagvxvzg6jay";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "772952225d30ae7cb9d724ff665f8e86eaf6072a";
    sha256 = "1j7bwp78k9vw26vzm62r60f1n5kd3gzflb0x89xmvmv93d4rfd0s";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "e5eec2c9b4761209a8f1e95abb350d81b362744e";
    sha256 = "0bvhhcmdvl3k1zzz1xsfdsjkb6wzsqfqmham0kmarmg5dyk37a1s";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "a6f871343313220b76009827ed0153586361c0d5";
    sha256 = "0fc1r3zbggm9p0bn6bm1bcxjsj647cbnzn5w7y5nh9g7mji4k5sq";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "df096bd0f64909d8deca20ddcaaab340fcd52a7e";
    sha256 = "0ld0v9s3cd8fjkf43h3hwwpnv29g44jchjnw9afw7pn2bdq5akms";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "99661e40c4c47110129176ee9ecc61a50f1f60db";
    sha256 = "0azbr1gz6xlk9dwr5zc451krnvb5p3g2fl7iyjh0zhpylb5v3d4y";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "515db48a43daaaff6a72c4c1a42bb5e4299bc74a";
    sha256 = "1fgs3wc4fm36nik9292bfl39hsw1vayv95bqnnpppg4l8kv34i17";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "d816f86bdb3ecb590ef1775049bf4250564f8fd1";
    sha256 = "1z1lxhfdib41ash5x83qi6wwn9cdjajp7bzvasf359rbambcy6pq";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "331217bae379cbebfa531a140f2186c99fae1425";
    sha256 = "095w2a4lxy2gd7vfjxn7jszm4x3srw8xlxb1zzd096y6h047rxlj";

  };

}
