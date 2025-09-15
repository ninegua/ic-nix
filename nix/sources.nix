{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "ab62c6ec1c3b5f492df53c05bb0bf5f2eb6298ba"; # pin
    sha256 = "1pf0jl9zz3zb6akqdxs4qgnmmjqbpd18a8iz3k42nnx69ps22vj3";
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
    rev = "13b30bd2728df1e839c75a8d6033ac83ab0e26ed";
    sha256 = "1c0fwq5kp3biipck58hnnkpmmiibpb7jdc49lqp0s7i503jnd3v0";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "646e5f3edb6f400bc71db9991da7a81b8bc175f9";
    sha256 = "0bks334zf086yyfpyaq3drzb4cwnz1q5fsy8j0hr4cr127yx6bc1";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "81af198571f2bcfe7b20e3a5d0c60efe7cfbd25c";
    sha256 = "0npvl8nb65m8cgfkgm721ng6dwvp6nxhdv2d65xnw7vcd7s74kgv";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "44a08b4958bd9c8c7f1bf8582dbffe8dcb4e71b5";
    sha256 = "18l0jxyyys84zqa03v78ycrf8bkqsgskyryi6fhdsvczlidq949k";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "ddcce6f5b93fd3d91450867643a92c746a6b2d47";
    sha256 = "1kmyczrs49mnqs52wvsv4ipvv9l4kqz34qky2z84n4xigljmg9y8";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "f2011bb84fe821188c1395fa2e5729b6811d3886";
    sha256 = "1vgv26cb1gpqcc6z5afr3y6vg520fc5c6kkgbxwcgjab2ibaaydq";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "1ddf879f368f765145223c08bbe2c8c8f4782dcc";
    sha256 = "1zq6gldxmvpymbyjm6823fs5p4kqpvhlqdvpwwnf9dfwb8fd18rp";
  };
  candid-extractor = fetchgit {
    url = "https://github.com/dfinity/candid-extractor"; # main
    rev = "f321226125c6f30a280fe0a5013067de4a1e1847";
    sha256 = "12df4v35x17ijc5habzilxcn9a964yjg9r89lbqd109p9gb9a63n";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "0884eac1930aeb47893928081ce000df4b53d3e0";
    sha256 = "1znwk5h198ayrw1d8xsdz7ypjbra1mm2fk43v0qi2wl0ybhsw8gz";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "9b800c388be46089e12c1a7875df0b0f137e79cb";
    sha256 = "11gsxwkxwibf5x43fzkyi9qzlsqs41sdb18hiyk0bagvvj82yw0p";
  };
}
