{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "b314222935b7d06c70036b0b54aa80a33252d79c"; # pin
    sha256 = "1rgi489c93839q5avpxpkyhdrn52jc49l6hks4cnqi73a81nrrw2";
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
    rev = "bbad160b25abeced4d55a2c2d9b4563d58728773";
    sha256 = "111kqhk09vxk4b1r4h4bzldmrsw50b18mks3q01gyxmv91ql9fjc";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "a16022115032d64c136ddac1ef81e59261bbfb66";
    sha256 = "0f4hsa1dl1j20cni7c1w8z4a8kfkisaafrsbf9xsrh4h4p33l6n7";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "bd950eb128bff337153de217b11270f948d04bb4";
    sha256 = "0832z9hnrbfibgbsg5m140hhaf0rjl5087jqv452plfjia7ayw65";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "891055d99ae70f01796013277f40a3da3cc18fc4";
    sha256 = "0bdxv7i5pwihwwdbwb32aah5g3pxsjnbsqzsw6fra7yrgk1hd8lp";
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
    rev = "96bb59a03c930fc5708b7c779666fd3da2f07c6b";
    sha256 = "0wb3j09p596w8qnfk6zqgkp6r00m06zrspzlxkivjc1k632kyk0f";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "e212e096cb726548c6d6edba1189375dc5ad364e";
    sha256 = "0wixm6xiwbdb6bq783zniaygh161gzsspsrw60izs1r9xfcx2h0r";

  };

}
