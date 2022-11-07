{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "b5fa78c590188b96f9635f4e82ed1e958884e19c";
    sha256 = "1hzcm6v6yrfymg68af7byrxygs0ana22l41y83imkgdj9z0rhdgw";
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
    rev = "5fe6f2579b16a7bc7d9bb2937923b27922a50976";
    sha256 = "0lhngr33xzvapkbsfw1c8vcqgvv0m8yc6v6zdm3ii9y698hjw3pc";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "aafcdee0c8328087aeed506e64aa2ff4ed329b47";
    sha256 = "1m422l0078x4qhmcdxdf6v0zb2w6br3dkfhncar9ss24brxhlwl5";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "a7af7c064ba2a44776ccd3c629ecae31a18037d8";
    sha256 = "03f385al6bxw2yjsa4sjchc1n5yyacndkrrzg1h1f6dh0093bjvi";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "45d668d10ed6720936c6f5ddb4f3addd4bd0afea";
    sha256 = "04sk808vrk2lph8d2130g0ci0gqhydfrpkbnrlf9rapf80fwbjyf";
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
