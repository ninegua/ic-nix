{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "3b6853464c3ce93be748e19867ca29e74fc89bba"; # pin
    sha256 = "0gszmiqchc9i2lh6rw1yi5j74lgffcg34r70ri9w2jxfxr6nwf7w";
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
    rev = "b2856ed9fdad8da850a4222b8aa3f06c429280c4";
    sha256 = "0iv855c279b5q7fy4sdndni1y44abig2ss6yv0im99fzmsr4565v";
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
    rev = "f1bd76d917afadfc0b64b6f036a9f1e9fdcfd492";
    sha256 = "1wcbm1fs4pf1q5dnqj4xh7bqdnrw8b3kwc5py7hphysv89xf60n0";
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
    rev = "029dabfaa916d992f002045c2a932954abdc6063";
    sha256 = "09rz110i8ck2lrp8csvlncqf5mp09wssqgl9k95r5k13wcqni50m";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "9d53c5ef85c1e3fc995b2efe63188d07427b60b6";
    sha256 = "1v688lrrfw7j9b4mkw4z26qvm7sjjp8vcslfd5hkpv631d36kf7b";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "cb5e687e9b93ca1f78494311be1111e79c56cd81";
    sha256 = "1x42h2pr8mlvaqq3jx7mipq26cblavz1500ixsh1vylmackdqg60";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "b43202831822378961704816a140773c2431f04a";
    sha256 = "0pd4616nyq42n5il7pxmz0iz5yi58jnpsfkg94laqrsxy6jh115z";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "5ebfd87e99c8ca57149cad8ae054290d11bae274";
    sha256 = "0rdmb2i4mjx8iaflsijbq8l746a974h02njfk0swzbyas6qrg4rd";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "7fa251796221211ffd8292cddb382dbc959dcf77";
    sha256 = "1hsr8wic8018m3wqhf54pjxpfww6zr45i0jlmm5zifqyqnhsibzw";
  };
}
