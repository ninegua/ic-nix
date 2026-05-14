{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "fa3e237b0ba69d4ba64524c5c120cd11f452c192"; # pin
    sha256 = "0fdrz5bxmqxmk0w65sdyhxivi1sbrg96qkr7f2511lahglxsmgzr";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "b02855e1801ce081677d4c2a840199b830487d72";
    sha256 = "1g6mcn8m8xbkdalpagzkvk2w5a28fdy25fmbbrpd6x53g84rjrg8";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "5d3c2f39a77b36ff592d470296b87c1a7fa77ffa";
    sha256 = "sha256-H/omb7JQMxglaAZ6dHGKuGijNRFoy3eCxc0JaM4+uGo=";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "c768aa8d5c67e6e5b72fc09fb6695d5041060856";
    sha256 = "174shf091x79fj4ak99skf9jjb777y6kg2y15d51sakbri6aqf1a";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "8734c8e94e1fea91c3734cc5b49609f6d23ccb02";
    sha256 = "11rg962wxv8scz4aca4cxzfiby4q167c4msh8lg45sfa93bkql95";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "80347902ee962fa0e7b6bd416979064d3eeaf43f";
    sha256 = "0apzqy22warj0lxd9vqrkn4247ll6pd2wnz8lfw3pldhgn7849n2";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "a6c2c0077ec31b827dd6e948ac495e3a18db229b";
    sha256 = "15asf66wpailvz5c5zlk77350sxkvx6hjrjs1xrpi8l7hiq8jn9z";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "a69ffcc5f1d3c9b8e7e7c733e1e120373272b58e";
    sha256 = "17lcrmcpikd96dw1r65dpzpyaxyywi3bswhjkc7r0if6711y4s0x";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "578487d0fefde5a84183c25517cfa72eac0c437b";
    sha256 = "01lcwlhb2r7wxl4hmiwws22886ycpcv5k9xnfcwayzyicbakqvxh";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "6fc4c564d601dd8fe94bc34c2e7bc1a2ab758ffd";
    sha256 = "1rh9q81mflhan3zxsz8ddpzj8c3wkm920bwl0ql8cs3393892ncw";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "9cefbbd2da6c7a34216078eaa7b74ee4c011f864";
    sha256 = "1p1h7sg9qlxdas7x2d1qw07d9niiq84qrl3cvgi05iix4j8lallx";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "cf9f28c5c8aa0ee3646b5210f1dcf74960f25ddb";
    sha256 = "0ib73fgbx0njsg99wir5p93f7n6cksrswxs938175vkvb0qnzbv8";
  };
  icp-cli = fetchgit {
    url = "https://github.com/dfinity/icp-cli"; # main
    rev = "d15712255cdcf9628018b34c710214af618d7931";
    sha256 = "1d2wad9fc8p9l3svfgssjz9swfy6nh9mnrfs9zhviwf8kdv0mw6y";
  };
  icp-cli-network-launcher = fetchgit {
    url = "https://github.com/dfinity/icp-cli-network-launcher"; # main
    rev = "926539f21b010e73c645b401f8b2b858fe09989f";
    sha256 = "14752ai5lg6wfk1xlm9indfmd5vzd9g26fx2c53b0lapragn4lmk";
  };
}
