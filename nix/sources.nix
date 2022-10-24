{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "d4729f7303caa02b4bde2e930cf78260a0e23c2a";
    sha256 = "0lkij2bb4ca710bl3l7y14zcm6kvqsy050pf3k80wini1rwy4xr4";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c619cc48b192361f0a4d62241ccab01662d5505a"; # pin
    sha256 = "0z2jz135d0byiwik4sc19x94dzwpk0bky8jbmi5n4g5xb0bk2sfh";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "ce35f96c3541488fe7a24146e629427b50d6a42e";
    sha256 = "0cfdnq1yywba8qbg6xmdy219payj864pc3sfim4wb3hcwaxnx675";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "d52aecd7dabe3f5f8169b7680fe0a0702a67b0e3";
    sha256 = "08sbys84lnvjpf2822zli500hyi6yc07rrvmcbcgrpyzjkgp48l3";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "21d93b927d11dcf54f04086dbf5aa0bf7a85e69f";
    sha256 = "1zhsq6vklirgfkmxy2k699x4yq1nqg4a3ys6wbijdxp818lzcksy";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "db3de4defbeb5a171152ee366fc51e52260804b4";
    sha256 = "188305b184l3ipwknk8m6qx9s4k77zs127af4kj9w13jv8ky763v";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "dbcbdb5c824dd916dea7bb42b88dc8bbc201ff80";
    sha256 = "1cr2yz3gx3pv6fkgcpizd09nknjr55i32b7xq73n0s56da0psyqz";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "7913f8b9eb91f66e71b4f5c5d4421fa52e08b97e";
    sha256 = "1b1q5hvpybdh4cqwcfh294qc2ia6bd0vx1hfc8sw2w15hy8jv1q0";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "c7b41a08b3126cf5604c6bb354dbd23f602faff4";
    sha256 = "0fafqlknwgmndgvv33z4m98cv0gk6n0zidmn5xiclfgdcp0sl2ss";
  };

}
