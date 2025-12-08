{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "724ae4101bfdd8d4443126a6a8b1ec5ca9b68a12"; # pin
    sha256 = "096axvrn5jqi8mmm9mgnd6hi5n3isjfahriq5bpp4fp4x42dkp5v";
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
    rev = "470c027878014b27f20cf5c9f7b7a93ec467f7f5";
    sha256 = "021y8iadhmvq6c13n7av4dgsab5rcnxg2jkbrq2qpb3amllzd5wc";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "19e82a1a3e2e9fabf94bd900929ab0c31e475a94";
    sha256 = "131arhsqby3p7g09fq72hf24xr5057sqcy3817padla55xrpxdm7";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "0bf00fe3e0a44473ccc71ab2cf1d957d489e82d0";
    sha256 = "1h461n4pnqpvmn8rq0byymml58l9xy15swwa40p9kmpa73i9xj1m";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "44a08b4958bd9c8c7f1bf8582dbffe8dcb4e71b5";
    sha256 = "18l0jxyyys84zqa03v78ycrf8bkqsgskyryi6fhdsvczlidq949k";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "ddcce6f5b93fd3d91450867643a92c746a6b2d47";
    sha256 = "1kmyczrs49mnqs52wvsv4ipvv9l4kqz34qky2z84n4xigljmg9y8";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "65a9462fd63503182c7c5dd44f92839a21047e71";
    sha256 = "15n3dhp7qmg8ldwcya9wk6w5gls2i5jhkim02924a4pxym5y65w3";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "bc49504faf55fce75793a6501e61e7ace680d922";
    sha256 = "17ncnjx2w39shd0hf5ih0s5b2bhin2hmni4wgs5nwd56fsd6868a";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "b43202831822378961704816a140773c2431f04a";
    sha256 = "0pd4616nyq42n5il7pxmz0iz5yi58jnpsfkg94laqrsxy6jh115z";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "42e97dcacbeed3cf7a9e042b2c5d94011a0a56b0";
    sha256 = "0ln9b6ndmy3sz5vpf1ja0fw1agsn2ryvaxxpq9wcshpnay3h118j";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "5bd03e1df6c2982fc9edf12eed66cb0a968f5ea3";
    sha256 = "0lcmlmk8zkkjgcj1gcylg8byqa2gaxjp78qxqd79x6qs2dwrrkp9";
  };
}
