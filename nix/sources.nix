{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "9c4bc948fa244757379385617208934837098fed";
    sha256 = "1k8ifnlyabv37bnf1cs70akfy1h9c16sq09xqgpzasr0lm6c91hy";
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
    rev = "e60209204d9c13e4dfea75cc1ee7fecf86fb6cc9";
    sha256 = "18b8r3l8ki0zia9c050n08j67ax1wapch2cnfjfk8hh62z3cn4nb";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "384ac4913da4e61631a3019899ab53459c06cb78";
    sha256 = "1fiydbjc5rvdja81syjvphs3p9fz82gw4xslsn3cz7fr5spdk58v";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "8098d8621ef6eeaa27f71bc4a0efb9dd51ea8f5e";
    sha256 = "1ql21f8d5m9081ikic2q2mc5ds0fkj4cr07scb3ji761js7m7dcb";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "31577b05c9f0e9c77431db8b1cd05946bd1f8304";
    sha256 = "1asrwi5kj4kyj41ral2zb6qsjhzmwyz3s44b494g8zs9vdg3iilb";
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
    rev = "6edd82f928b6242c596003ced00ffc8e099ee04e";
    sha256 = "1y19415mjiycn15fbslf41755v40x9pbca37x95hhq19db03mgcy";
  };

}
