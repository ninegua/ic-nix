{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "df87dc70c910f4a1b80f8751628fe8ea45188910"; # pin
    sha256 = "0nzq40flgks1wjynxhxzf2vj2nhcbbckx41k5mypikg5gzi3pmsf";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "b02855e1801ce081677d4c2a840199b830487d72";
    sha256 = "1g6mcn8m8xbkdalpagzkvk2w5a28fdy25fmbbrpd6x53g84rjrg8";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "8bee077e2937c3beff45a9ac3f4a180c4fd16950";
    sha256 = "1nl2faz85fyvkgj1ap1mx5gdpvvq6sx6v30ln7m7jy8zfgv80bjv";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "d1b336e142bec76577e3d63d9f1fac74de48df0a";
    sha256 = "1s1x0dznkszfj0gjdhn9k95axvpsf38w52yv9hzyf5zypmafb41g";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "9d53322a977ff81f882ad861d9617e482f031050";
    sha256 = "1ns6dachxx5xcawvxj9vfgldij26kpzx6znifpjpz32y36pj16sh";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "2dce1bdf4bacd725332df11459e7ea67e08605a6";
    sha256 = "0di3nnniifnx0bxsa04bq9pz26pnrx4pwsy8cm025zl7cnkcmry5";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "ddcce6f5b93fd3d91450867643a92c746a6b2d47";
    sha256 = "1kmyczrs49mnqs52wvsv4ipvv9l4kqz34qky2z84n4xigljmg9y8";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "8c908cd12bf9e73a204c546b24e0b170df8f00d8";
    sha256 = "1b9dbdqlri6j6x8np48wl256rv6w5chs94vbhkwnj148mv121wqm";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "2e4a2cf6a66593e2cb3289535899eb232635bef2";
    sha256 = "1nrc86pv25hccq0g7x8kj38mqlqk9idh7qg1qsdib1p9kz6nync6";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "b43202831822378961704816a140773c2431f04a";
    sha256 = "0pd4616nyq42n5il7pxmz0iz5yi58jnpsfkg94laqrsxy6jh115z";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "6fef5bfa96d2ed63b84afd173cc049e38cb5a210";
    sha256 = "1mjipskw2djfqqryk65phpz5npabw7pi4p5y0l8j9lp8vdzdpamj";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "5bd03e1df6c2982fc9edf12eed66cb0a968f5ea3";
    sha256 = "0lcmlmk8zkkjgcj1gcylg8byqa2gaxjp78qxqd79x6qs2dwrrkp9";
  };
}
