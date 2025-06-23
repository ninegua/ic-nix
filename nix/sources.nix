{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "3564b37939f037ba4d051ada88251c13954597d2"; # pin
    sha256 = "00mnifb5xbfbxdiix4wknifid8ga6rcfi0scpbfqi7fnw2p5kvmd";
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
    rev = "aea7f5c43f93019ee71387be4e0fefaec3608445";
    sha256 = "1zwhrzh89y1y4xrs3z967vi1hj5zqa6ln6zkgfyw3kg3iqbl5ng6";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "0e2bed69abc22094021a00bba094211e2e9bfb66";
    sha256 = "1ndcgn22jzl9jzlzs348ij3v0ix6n1v1yf9qmg0liqz2cwd0ghab";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "597d0a139f4c75d37a821146cd7c51f9185a3d70";
    sha256 = "1f05bkqjyndxh37mkgh77ch7s44624dyj64pl19rpsklm1glyxrq";
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
    rev = "e3cbed2cc5c202184e740268e4582fdf80c169c9";
    sha256 = "097q6jynbsh6d3symy9gm5k0x6hhmxh46n0rpczb7bv7l6h5z5md";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "4c52e75c12bb730e795d8a4c2862987f4a9524a3";
    sha256 = "0xbxmwfk5124d86dhawbvprvq80j8j6wl0li706cf5pw9sb3ibqa";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "8edf4b97822f2a4ccf2609d427d6bc0bf2af680b";
    sha256 = "12s2hkwbc6rcnn3r9cxgr4jaqd1w8krrzfwqxg18v58c89va4lj4";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "f321226125c6f30a280fe0a5013067de4a1e1847";
    sha256 = "12df4v35x17ijc5habzilxcn9a964yjg9r89lbqd109p9gb9a63n";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "23589cca4e455f069c203e42d3758c12f12b9f87";
    sha256 = "0wqclfwr36ahz6p4fcx90i73xancilr4vnwzgk993mvnywqv7znq";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "2949dd3cbf6e8a52093da32c7ff27011f5ff3f3d";
    sha256 = "1rj7vknjx9mywkyp0g3zii91j8zhp4fqilg9ip0hl2b0har83ba3";
  };
}
