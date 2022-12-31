{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "cec9976e224701d89082796dfcfb63727c80e167";
    sha256 = "05lnk5djnf1435qlij8asxam9bjzxvn2rw3v4f4a25mfakiq09ni";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "4f732947846f3314e73db185e2932ad5a05c37b3";
    sha256 = "0axwm3kxy5lyv9wx18bf86ra76ribk07i5v0rqfrijyfh2biv2ar";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "b8b34d7831270c02dce8e11aa4146d6867d7942c";
    sha256 = "0ynw4yifgpw7pylsrw0dj1dfbaj37nd403i6r08vjkj6apj4cmb4";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "5c9145e79bf471fb662b9b4028937783e97e23d1";
    sha256 = "0vxf5w7dyzhbf6qcqs6y9xwa6kvw39xk5h9mdn573zb5fa1ip5ny";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "082a15c5a92f044a2873d3a099dab863c037c7a8";
    sha256 = "0wr4arq38wqn4qd5pgdvz12w899wczi0sz54i1jb68h91vjkdnm4";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "634680d7f0b09a36a335ae92c9e8ecec19921c7d";
    sha256 = "1n634bjdzh6v1ripzk2a0frb4r3vmajs0nmkijfi3iy3rdplbi2p";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "3b38f3f75f3334d558a4fc9ed0290fee61f67224";
    sha256 = "1zb2zbp8kdllg84zr5376ah22cry2d3v3gjwhxh3x1nhmbxf216k";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "3b63aaca78d2910e5481f1d116f2a228f7441194";
    sha256 = "1lcxzy44s0dqiwzd9ib0vs76g157ndacl9wazrjj5wlw3gfn3yj9";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "b15c305046b675fca083477f5fe5ac8dee96315a";
    sha256 = "00v8jvskaml6rnyii1r62jm84arbxqrhdpg1nks6nswflhzh7xmc";
  };

}
