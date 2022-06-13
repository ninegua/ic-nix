{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "25f28745116689641513477464e2f997b61ac553";
    sha256 = "0z6iqzv7l5ppsm40izr6fgyqppgc0crdrc756nfa30hpd8z6yh8n";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "5e15a91cd152d3faa869be3f7ee34202b7b82e8c";
    sha256 = "0ghb74xf13dx4z9my4bbvvfdv21hnrszr1dl48afa4q6rwk30y35";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "13f8a6693b7ca0d02899ae91b40c9dd17a3b8f36";
    sha256 = "0chxh32xjxvqljbnyykw550w72l7kiava9xbgd2ccnkjfyh84bsy";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "b7ddafd36e483f8af7083e5cb46cf81e57667957";
    sha256 = "1py0vfww4l10yh80l3hr67bwjllc4pmnyi54jwczk9aa1ffny0y3";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "30094b6ed05f19cee102115215863d185f2db4f0";
    sha256 = "15zca07fj9ki4sb43jpnbd7wf3qcbs5y8607r9s2ky451rc00yas";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "860ed9980702ba96c7b199c7938c41b0eb416688";
    sha256 = "069aahi8bnvjzr5k4xy9v0hjn00vpwg4jfbzmvysy118yj4s5lb2";
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
