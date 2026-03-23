{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "bcac7ca3862fd8409d56d9dcda919a5f25acbbd4"; # pin
    sha256 = "06xln0ccc5y8w7j9pdf2mavdh0vkh6xinzzgqd15hrlnvx19pjqq";
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
    rev = "f1bebb14d37e11a786a363a09d45d7bbaaf9640b";
    sha256 = "1fl62as2nj6pqkh5m268az25y80i3kr78f2g8pbavjb3m169x2b1";
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
    rev = "1da291f005d963f82b634430b3f7e9be0cb3a6a0";
    sha256 = "1yk82qdqzdjzfa0m9rpz264b2lrlxxbhpm2zx36z75q9zdkn81qq";
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
    rev = "3573be8f63561b5aa4bd8d63c24cd6e85870008a";
    sha256 = "1j516z571k08kh37fvgjxi9f155hi8hndx9nw8f69wr3gkl18ds8";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "9d53c5ef85c1e3fc995b2efe63188d07427b60b6";
    sha256 = "1v688lrrfw7j9b4mkw4z26qvm7sjjp8vcslfd5hkpv631d36kf7b";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "6b0576e5461e36ffd0a82675049ce1087b23d679";
    sha256 = "13b9vij4zrp0k8p4czrpyra7khcqi02ad08yxqrhsgdlhxcn8bhg";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "b43202831822378961704816a140773c2431f04a";
    sha256 = "0pd4616nyq42n5il7pxmz0iz5yi58jnpsfkg94laqrsxy6jh115z";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "86c660394d3b9dbd652c02d92711785f4282232f";
    sha256 = "11m9gkbgfxpakhrjjz6gqsqqk1hg3vb4vqc03df770glfgj0r713";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "d06dd90c65509d4e9880379917e51803cc35a269";
    sha256 = "1xxq9grcx954spxfjpy7hdq092i2zhfspgc54rd1qwlmcfyqwfx0";
  };
}
