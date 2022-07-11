{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "ab63860413356c272c7dcb66a4ecda279638bde3";
    sha256 = "1c2wk8rwwq09iw74hv8ynfjj05qvljzvyxirk7wh7803gkv0isb4";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "dcaa13546787c982f947e6ec3b4fb3418f488f18";
    sha256 = "1j71h296bdx86m8ikzf86wp7zp4xisy1x9pb36n65kcxjam4lbyz";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "2daba3d097631f30fbaee75650800303c11b24a8";
    sha256 = "19vjic77wiq733h6r3ra1acwm9nphgbzbi24nrm8rllrfz57byqd";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "648cb099febc790a9bacb69ce4c9e61e2a28ccad";
    sha256 = "02c9p516qr0vlnd30n8djsd8psp0jk9vzcic8yb2sylbky6a9w7l";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "30094b6ed05f19cee102115215863d185f2db4f0";
    sha256 = "15zca07fj9ki4sb43jpnbd7wf3qcbs5y8607r9s2ky451rc00yas";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "739ba4fa08e11c57a42aabab7e2665852665d405";
    sha256 = "0ws26spqg74zkqgm8q3k4g6l6mmrbslwpmbvyvqvsrqmjvy0r5yk";
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
    rev = "725e12a95ca5d82c772eb2ad6abeff05f425b032";
    sha256 = "1ki01wc54hmbkjvyz9y165ii0v8s66qjbh2qf458qrijjh0yprpk";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "bffa0ae3c416e8aa3c92c33722a6b1cb31d0f1c3";
    sha256 = "0k33wdd2cph6f3hs8ljsaspp4p7haarrrb9fvn4i2gzp355zi29r";
  };

}
