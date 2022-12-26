{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "e996624c002fc74b867169ee8d9d46da1b0f52b5";
    sha256 = "0490ivg4c0jqr2l3gnf2bvngy9lqagyaf4jyiczjixc8b6l6jl3g";
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
    rev = "1c2f749fbd2cc8ab0dc9701bcffded8f455e4a9e";
    sha256 = "19qcx7vbbxpa7f1zczr3fs5b1bl3ci8d3gm1dmixrn2ngzc75nad";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "ea3b699936e690b5c62859ece1fc3edfa71a536d";
    sha256 = "1ijf7kpzld4wd8n90y1m686bdmssmxhablf42vzdc9sgl43vlgai";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "ebd3240030d463a3b51b630200229093d00cc28d";
    sha256 = "03vmicfb56fakaz1lnlvsnq76afw8vgm0x0iniiknyf579w8kk4l";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "53a61638a3762f28f4ebfa3297e6d67580492027";
    sha256 = "1sg3pn8jgnz21p4p81qj30yf8nx5cn6wa6vcav75nrwx8p4zp09z";
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
