{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "ef8ca68771baa20a14af650ab89c9b31b1dc9a5e"; # pin
    sha256 = "0cmmmzay348xwalfh7fq02csbzyxj7l835qd38h3f4gs17ylhkjj";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "68a0262851845f659f1715ba560cbda9d2d11eb0";
    sha256 = "1kaq1jn8hv64z9vb6430dmsrsc81qrn9nyw2j077528br958cis1";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "f2ea70ee8865d1888e7b96180c31aeb9e7ed5eb9";
    sha256 = "0xbmp4mkvh38c8wf0i6fzzxjfwgh9s4z780han44bakqn4mpx2yc";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "26b254ed962e564e5d991eb8caee8fd1bb7845d1";
    sha256 = "1yd6s5aa2wp113kndnygfkzfga12kfrixi9mxvwllzfhgi9kcpfl";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "bd950eb128bff337153de217b11270f948d04bb4";
    sha256 = "0832z9hnrbfibgbsg5m140hhaf0rjl5087jqv452plfjia7ayw65";
  };
  sdk = fetchgit {
    url = "https://github.com/ninegua/sdk"; # master
    rev = "88f8569726fc120f7633691a4d171c3ac1cf5417";
    sha256 = "sha256-xSZxE0ESJnV9zOPLFqjdKHbC36ANBAqJd1XzwgmhutE=";
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
    rev = "b85b1482404507961c832eaadef760087333d2b5";
    sha256 = "0ccdgj9azgkkqcfhvhw16mjm0rvijzxp8h77apwqqwkm77agiyni";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "adca2dece3ec1456aa381b3cac28752376f5c88e";
    sha256 = "sha256-V5xFkGCVXPQEkBn3ydz8IT0WnsfH+ChQpSxNt+GmSsI=";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "199fd05b4524ded8eec5fa74da788be0a5a14319";
    sha256 = "0qm68s2dvdfggafbyix6c1k2pcw85ykd4am883781m6zq3g0ilnh";

  };

}
