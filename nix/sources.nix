{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "615045e039c57ed842c689e49a07ab3de3a8a781"; # pin
    sha256 = "09cw6mayy67bj08izn0id0ny7bxqi530y3j79s5dl6fay4d0ha0i";
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
    rev = "ae0cf8037e2ff7cb1a014135727dc1496e5722d1";
    sha256 = "0zyxygrc21kd3102bbz1dvzm1ajf7livgx35wk4mhmzg301qn1hl";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "df83fbfb4b196910d8e1f789a7e2ca91dd734378";
    sha256 = "03sn34yh5fbvmlr7vs5cdm607z9j87rkxskzjk532la6wfzybjag";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "92b85e02f3110a0f1d12979634331c66b0ced43c";
    sha256 = "0zch4g8q904c8nsd34m7z1m38v12jkpbnykw1rli7zli2rxn73yl";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "b5a65f205857c3b09bce82d42e39bc8c1079821e";
    sha256 = "0z2winfsbrhmzb40gzn5hb9c96vibysz0jgvc5vjl5ckw55gk252";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "ed7c87eba5400c7d0f7e50f0e3f860d70c62d4d6";
    sha256 = "1idm42hh5srv39a97grf0a0p06x482hkbvg56l120ci8l1shyqdp";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "4c52e75c12bb730e795d8a4c2862987f4a9524a3";
    sha256 = "0xbxmwfk5124d86dhawbvprvq80j8j6wl0li706cf5pw9sb3ibqa";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "bc3e6802c153eb9e9d8fd5f383b8d4ea9e6b5b87";
    sha256 = "0qxljzr1w5sbjbprk7kixnsf75hhwr0qa2cmkzvfl6p9bwhi7isb";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "f321226125c6f30a280fe0a5013067de4a1e1847";
    sha256 = "12df4v35x17ijc5habzilxcn9a964yjg9r89lbqd109p9gb9a63n";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "6fa748eedbdff38b4b2f2ccb831f95ea096f8c14";
    sha256 = "04qwirbyy1s83wj15qh24238gw601inq3mpsn1fm8vyhrn1r263w";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "2949dd3cbf6e8a52093da32c7ff27011f5ff3f3d";
    sha256 = "1rj7vknjx9mywkyp0g3zii91j8zhp4fqilg9ip0hl2b0har83ba3";
  };
}
