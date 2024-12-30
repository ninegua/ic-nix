{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "9427aba69301dbaaa9b7eb48d809b01749b24d88"; # pin
    sha256 = "1wvk4xrf3v8742ywg7jxyqnxd2k7k1pzf4dzakvplbj3y3dmlb01";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "f30b8fd6051a939cd595e72c704b1e663ac7dee4";
    sha256 = "13ji8nba6w11ysy1x54h547975y8cp1xp3gm90cbi3cbf4dzwk94";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "d87550d3ff875c69140e02be5749811a4fee3bb6";
    sha256 = "168qxgain0bplgx32s1gl1135xd960s444fhn1npsi5h1j0gg8an";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "c6331b0f236e13581b6b094a9b6442ffbc0b254c";
    sha256 = "0pyqwv7af6ccd3imwbnww64959k56vl8r9dsr2g25spmnfsnrl7a";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "8f8f45c903a181d64bfa18fafaacd4642a770fd3";
    sha256 = "02li4w3ss0awzkz64hf2w7vxafalcgs7b9av8zdsvdn85jkskbxr";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "a52de499b67266af936090c1d48130071c8d545c";
    sha256 = "1cf4hk6nf493sfvs8clw5935p4hj8w0z42dplal5705vsm2hylc8";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "2121549401c0e3412f1942638703434efb300d9a";
    sha256 = "0i5crvzndpmma009wxmi0rzlpw9hm79kkcrbiyp7if0y64nhi7rd";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "48db35ee8e77b40d2749961f29a6ad53e9698571";
    sha256 = "12lnzk2y4z9bkxw4401qyhkw88zx2brq2g0gx5g7kjljadm6298w";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "87f42eefb1070381565d8de3235628a674641fbd";
    sha256 = "1kfchlrfwk5b6ahhkkrkf9iby9znjri4jcjwbm3kwiqx8g9v97dp";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "929fd0b31e9ec69aad7cf6285df0394f25fe1815";
    sha256 = "1b0qvh042hhjaag311hd43978hy2ripggg6n4z7gl57api6vzbwj";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "9c80fb40b287aa6d81215384519725fd4dc02c70";
    sha256 = "0z8bh1320nkxw6wb0vdjhj6qdrmhiis3n8i6ya6z3hqr2dq6q5zd";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "1d3cc48288cc8917f01cd867c574d90f08cfdbb0";
    sha256 = "0irqx5qr87skf57nkb5gl6jy6aqz8bihg7h1ji69ivnvg1c5nhl1";
  };
}
