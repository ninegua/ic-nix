{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "17d483c60a09b393ad82a2091b68a242ac69c72d"; # pin
    sha256 = "160czk958d9adxvxxpil3davdcb01pzrrni4h1zncjnghz92db7k";
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
    rev = "944903fa31f93bbc091d6711b28f66ed11b2d1f4";
    sha256 = "1knk1bfcm8b6bx0shn3ydbl1iwpi7rh1llsf3jwn72mnm70ja6r2";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "67a12dfe31bbeaf3f73f948c0907ea0751f54674";
    sha256 = "1wwfw6i4nhy6r2pcxy2ks1v03q6alb5bs59xgdz3vc53z12s456n";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "de5f59db98210676d4e925f88948e553c7de421c";
    sha256 = "19x15chd9kdkhrsrwj240bzla93kcln3y95vgyfkb00d0cjns2cj";
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
    rev = "8df9bd5317135386b614c4a59b309315453cc47e";
    sha256 = "1l76ax6mmczlm8k3gqlq85k8ybd2sp5jpwajv9p406jp24nh1zpv";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "27bdf42e00ee46eb38eaf7a6f452f563743b3923";
    sha256 = "0b9y9bgryxrsccqzknl9yr0f71p3f60iggw14mn1yhxrgnibyp4b";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "e361a8e6742809291af07c32e0d34d7b47919f82";
    sha256 = "0b8anhsnrpnlwyfy5fs3vfqryrdpnd329mm2hk2kc4a6wdv77kqs";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "8bbbee22592b7306c792a579152afcafa0161d67";
    sha256 = "1znv6s0g3k10sf30r4pnjn7kjazafh911xysgdjlaydmmv0m7725";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "d06dd90c65509d4e9880379917e51803cc35a269";
    sha256 = "1xxq9grcx954spxfjpy7hdq092i2zhfspgc54rd1qwlmcfyqwfx0";
  };
}
