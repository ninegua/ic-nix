{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "9477af986056f3149104c7595a8fcee709f6ebde";
    sha256 = "1v8lzxhm4wvshn40av8f364ql8zfhlqixc4zmhwh54fgk34zykr2";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "7624053a50e1683c48757ee5dacbb454921e39ef";
    sha256 = "1rm27a00983v581cqzh6nvsc01bpkjvvkybmzmvpnb9f4nkzrxgb";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "069324d2b18be2eef32b113a7ba21e1e62726e90";
    sha256 = "0837f9w2idddr40xdcryb23qd063md14zpf9h2vzcizwk6nycc6c";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "73d34ad41c97541d140a35403e5afea5682135a5";
    sha256 = "0sb4xh9hl7x9p8hb4g9vf67vldsg5pbi93ys9jciv36zww0lv4f1";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "dcd28cf8f6db612d8f71f2f9ca6bb6b4e46451b8";
    sha256 = "04zlrsz4ymnkd9pcbnhx118cs6hp40d3d185gbbhrsysxwrdq1rg";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "8444d0af2f8eb31b752dd8b8661352e963585649";
    sha256 = "0msk7daz05z8znxr41zzbrh64x3g21jq5jfqjfd1n67mc2x6zkva";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "3cb62011e2dfd4b9b7f7aee06ce53d9825e5900e";
    sha256 = "0clmcp0vjih2wsngi526a1f9phhwjm09mdgspmdmpqpkijh7g2b2";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "5e6a75dc6b52c2c9ec2c83bc60f8549a771fc15d";
    sha256 = "0xkxndqas3iznhr9csmxqbjw84ixjl3vxjljb6h6jnq480fkgn0g";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "f5c2846abd0f724c46eb15bca5a09b7beaaeb33d";
    sha256 = "0n3hab7vaj38k95wbkdcj4fl7g5wp7m6kd1skxgs8v2779r4dwxz";
  };

}
