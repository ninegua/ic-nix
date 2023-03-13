{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "2e27bd630dd32d582b3e8aa941182b212e7f60f0";
    sha256 = "0lc5bja552zzz6wz95y698bln6g0a98pww0zfhdhydyh9mliqqa4";
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
    rev = "0bea8a5e225b615693eb9929e2b198bf7a937205";
    sha256 = "0zqidw58k3g1x8p0sjq4scn452dqfhr0bgj35msbc3fafmsyfldz";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "98c5717b283a8ec233907c3a3e92c79e3bbab1b3";
    sha256 = "1hji6j89p2yk975yxpb0p4xzx4vxa6qa14f0vm1ls0f5jq8ch99g";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "f2a35a454e8472b63831885daacc7f5fadd46747";
    sha256 = "1k7hkx9q9d93xcdmpnp519znvfffh10xk1y853pdjxnlmxndkw9j";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "a19bb11a066e6b324d9750d346e8b56b32ae50fa";
    sha256 = "0adsv7nlgd5w4qn5rzs94gg7g7hy15lfnlz9nq9n19c9h5b8gs09";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "99661e40c4c47110129176ee9ecc61a50f1f60db";
    sha256 = "0azbr1gz6xlk9dwr5zc451krnvb5p3g2fl7iyjh0zhpylb5v3d4y";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "58374a36f80d25b1aeefb2e0e7b962cf20fcd755";
    sha256 = "1100m8s6w7gl2wh255n0d1d8c8jkbplkwzrcxxrr418v3gkd189w";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "42ffed660ded37585c4b9f97e3ce90919e24c518";
    sha256 = "1hpvkk8f98vzz7fzbd6q8xw9l89ybb87yxmw421skkdgpx6sakky";
  };

}
