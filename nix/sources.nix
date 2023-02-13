{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "8cec935302f157bc20ff9583fd8bc96b5d48b71e";
    sha256 = "0my8mw0i9xy9r4f5ix52i972pn8rm4cyvs3s7ahz9fzlkcm1338m";
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
    rev = "dcfa0a635ce27b389f16df6ef42aa043662f508a";
    sha256 = "1yrqg5j2wq9v9v8jbd3337yk6xdwlvmdpfl9c400szsi93wqxj3a";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "8c70bf452e16a9e81d95b764b636e2bee3fd0b39";
    sha256 = "101nbb5ws43rlkh96fvdcjzdkhwpl33fsl4bxfnfq10835vyn3kz";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "8daaba387ce70a6088afe3916e9e16ed1c2bc630";
    sha256 = "0818aqsn6clm8nc0adbzah67dkhzjc8z20qfgiwq76690jgnp5d4";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "bc2283ede24820dfeada4e69b9f3672e1ff53990";
    sha256 = "1kh86fflb6pszx0bivx7k0mlix09ffwl81zhwmzy4ci60w0vcpkg";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "e0688426d630e378eb22b1a6a0fa130a8be95685";
    sha256 = "0flh8nb5hc0sdfp7kkzqxbqdjclkdczb2qv6d09zbs6y8crp9x1j";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "9adb8a183d2ef6d4425c5c36b04edd36bab76446";
    sha256 = "1rbif5v10ri9cvdy6dlhyf3nbbb1dhf8szxfczzmdb5dc4kgjn1g";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "42ffed660ded37585c4b9f97e3ce90919e24c518";
    sha256 = "1hpvkk8f98vzz7fzbd6q8xw9l89ybb87yxmw421skkdgpx6sakky";
  };

}
