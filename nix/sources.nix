{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "e947becfc936de3f189e331a2c43834de54373b4";
    sha256 = "0144asgzzcjb0hz5hs7v45yrz2dhl4pk9n2qb673wixanx97gqxw";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "c619cc48b192361f0a4d62241ccab01662d5505a";
    sha256 = "0z2jz135d0byiwik4sc19x94dzwpk0bky8jbmi5n4g5xb0bk2sfh";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "4d97ffd267aa344a6e95fb1603df12a875b00ee1";
    sha256 = "1jl91gm51gnrl08g5fbzgq68fr28986ycizmkmjyi8sa3d7i20r0";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "2cdee3abf68b18763f76488f479e8d14a3d885f7";
    sha256 = "1izxkfr0jp45lv4w9a6797zhwxrdcm5r103l5lfhgh1ydvzm749s";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "294b23c3fde3f14d671f4bbaf23ed0459fae73ca";
    sha256 = "1kshvk1df72jf7aamlbi0y2203srjarh4inyrw5dkpz1amkjmx6b";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "60cc67d1cd250f957df1791b3f4e8f964fecc173";
    sha256 = "0zsf218jcfhmvkirdla4kfzjr12wpjcprdj1f58spmhz68chddkb";
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
    rev = "50e211bf4b62cb33515aa1cbc4602d82f589f1eb";
    sha256 = "0kpsw7nckb1cdvxgjbyxprmb6macrivaww8xspwsdlkyvgppja78";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "73a8af2096093129274b23347be0c012e2362655";
    sha256 = "1fxqd9yg275958jhy879drpzg97l4w1msbwgjr3dhqg2skdha55c";
  };

}
