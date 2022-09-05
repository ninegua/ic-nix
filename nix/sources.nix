{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "7464a8cf40e619666673a0939cdc88cc0dafa156";
    sha256 = "1gryfviqvcjnbjf9w6d71gg0i1ns8kmvdyb77nkqbzdqspr8gclp";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "7624053a50e1683c48757ee5dacbb454921e39ef";
    sha256 = "1rm27a00983v581cqzh6nvsc01bpkjvvkybmzmvpnb9f4nkzrxgb";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "c8fbcb889844b8b7a77dedbf75379912809f2c2e";
    sha256 = "1sffy4vlcl4xhd8l3z7hx3m6v0wcjz5la8bag81dlb27slx9x1hi";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "c174fc4bfc0287ccbfbd5a4b55edbc8669e3f2f3";
    sha256 = "1hjjm95av6g0ff2440vml9imgqa5k2s8n45vj6aa1ckrdji2w349";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "2057ce9262f76f7ef5a2002fa16da219e2176896";
    sha256 = "0k1gbdplxgl290bkd7z99020d8crqc3kq4vdrivl9iabpk95l9dd";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "9fce71de0f92c90b4079c37d13771ee36b481d70";
    sha256 = "1dy41hdqlqs1sxp4cq6jq1anw74crs8c35lraab64whqg0h77v59";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "85d3b082367e8ec75ca066d49b21cc1f8568efa5";
    sha256 = "1apf3gz8zs5z471hq9f7in4ra2wcrivjihr2jzzvp2lbqykfb114";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "9f163efdae0ffca8163e57ca4c26fb19add017f6";
    sha256 = "1798idsnckziadcdfh6w9f0n159n6xagpnvfsrzlgbfmmgzqadmx";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "528a4b04807904899f67b919a88597656e0cd6fa";
    sha256 = "1bra4dkfi87k9c7qrzb2qj81kw32id6625f67w9b4q4fz0az4cmk";
  };

}
