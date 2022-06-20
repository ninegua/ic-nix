{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "b4520987d4af25eef72ea1c9e009092babd26ed9";
    sha256 = "1h3yx77xbv0laqcf9pzs1x18xvnfiak4z7h8rw3gmxbqlh2xc32y";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "76b4159d452e0c9295603a3db99ebd4b282d085e";
    sha256 = "0hb39b2hr5xj3k82v3hp9h2xj42dlxxddj1rxk43cahxwk70isi6";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "82146bd54e48dcb4fa7ab05d819461935c9a0a1a";
    sha256 = "0dls8cii1rlwnydfjf0xqng8x8h01l71mywq02wkiqavvpsyicgj";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "7ca5b2c83dacd88ccfc543b297b870b91b730362";
    sha256 = "1pnch81lwcs0xfsih1gmzdkqackj97y3mz1cmrd0a2csinvxkmlx";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "30094b6ed05f19cee102115215863d185f2db4f0";
    sha256 = "15zca07fj9ki4sb43jpnbd7wf3qcbs5y8607r9s2ky451rc00yas";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "b2927b8eeb1a26bea6f4008c4a662f2d6af499b0";
    sha256 = "1m89yrallh1ba0jf3zglgn11kfkkvl2y2z8vvin3j2r9vyp7q1b7";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "13dd83fca5eddf48d63abc7a07cffa4fd44e4f6e";
    sha256 = "0n41qjblka2z745n5vskvn9lfa1qs65mfw3196c7r0adb26xmlgz";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "725e12a95ca5d82c772eb2ad6abeff05f425b032";
    sha256 = "1ki01wc54hmbkjvyz9y165ii0v8s66qjbh2qf458qrijjh0yprpk";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "5d3c7c35da652d145171bc071ac11c63d73bf803";
    sha256 = "0m97hngasqfbriky388c73iqdcddfz59bfgy3cxjw0aclifnacly";
  };

}
