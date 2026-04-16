{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "606cab75d9840e2e1c5ef1ce734a7e6a4f754f0b"; # pin
    sha256 = "0gdynbr9kxy0nbk4zh9x6bq7jr3z5d1pj1nw852nfrfszsgzvja7";
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
    rev = "2171d269ad42a3d1c433cbcc9ed97828d367acff";
    sha256 = "1yrlj0si7w27n8862fsaa8sziyrvywjxkpxja7i9q3x2z6damndz";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "c768aa8d5c67e6e5b72fc09fb6695d5041060856";
    sha256 = "174shf091x79fj4ak99skf9jjb777y6kg2y15d51sakbri6aqf1a";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "9991447a74e69c100e1c6955a964aaf2836688bb";
    sha256 = "0kvb55vs74g0p419scsnsxhaqkc8fi068wj5jx76vdqliqmm46pk";
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
    rev = "a6c2c0077ec31b827dd6e948ac495e3a18db229b";
    sha256 = "15asf66wpailvz5c5zlk77350sxkvx6hjrjs1xrpi8l7hiq8jn9z";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "a69ffcc5f1d3c9b8e7e7c733e1e120373272b58e";
    sha256 = "17lcrmcpikd96dw1r65dpzpyaxyywi3bswhjkc7r0if6711y4s0x";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "39ef0989c4f7bdd71a0a68fdaf0f1146887e692c";
    sha256 = "1v4i52kvwb2lwflbn5z21h151z1qhj13n97qxapr7fdn7398gkxk";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "e361a8e6742809291af07c32e0d34d7b47919f82";
    sha256 = "0b8anhsnrpnlwyfy5fs3vfqryrdpnd329mm2hk2kc4a6wdv77kqs";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "363b347ecfaaf12d521df9cc70c82508cc9654f0";
    sha256 = "1k0q3jd28cif38002cxkqzjnr5r2w49zn2813mndld5n0b84d0xx";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "d06dd90c65509d4e9880379917e51803cc35a269";
    sha256 = "1xxq9grcx954spxfjpy7hdq092i2zhfspgc54rd1qwlmcfyqwfx0";
  };
}
