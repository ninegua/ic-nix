{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "ff10ea1dba07c0f66c66536a46a97146cf260e90"; # pin
    sha256 = "1nvcllszkffv4bvva23r4gqq947ci65fs34dq8808qfx7rg55ksm";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "ec5016aedd8cb499f9b4c5dede51f82b155268c5";
    sha256 = "050fbcj4x632qcwrwxbvy9qn29im7mj9wz4sfh08la2wwdhga2yq";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "fba7afbbbc15ead40373f0c0721dd1d234e163de";
    sha256 = "02kxclzc63ahn5xdw75b6wrv2yyscdg5mnknpffd18vvkyqy1z64";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "25d7085f17112884f8adf8936b358dfc8bb719de";
    sha256 = "0w6qizw4j2srkm1l8qcwqxp55q9ymprbaf56b9k4pk60gal3nkl5";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3"; # pin
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "bf5bb9de70c395930af6881296647c7df937048c";
    sha256 = "1753x9i9vm0pw1pnn2iqjdc8s0mcfw320vz99zvddx3mcplnkwaz";
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
    rev = "4a24c216512aa3f6cea7edbde47b828147fd4548";
    sha256 = "13rd91xv7x9zy4ih7n8jajbzqsxap60fnhfvb7nkih3m29anvcjz";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "2eb0900b6a809152a0323ac8a5bbfdfddcd3b361";
    sha256 = "00jzrhvpprxbg1hx99mdjbfbq3fy955bx1vgn33vnaz1rhx1cqrm";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "ae4d0f794a808b88f8b83da7eb96ca87b3d751d4";
    sha256 = "1xr9yxypy5kd0cxvap029z82m4vn3y4clvjjsdl251bc8kwdc5qi";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "2797f87537dceec0e5dd48d20f206ed15b8783cd";
    sha256 = "0dqgvpzc6xvnrfywf1b3vfkk60nh9pnq9jyrihvfy5v33i92fncc";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "7840c34933fc509f443c3045c1c634201ad87e07";
    sha256 = "1p43i66d1jmldm3xf5ik3zrd1f0191h6dzklq26amkr3qydrvifr";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "c2f87729004a8aa406e0c39900b64ec93249a6fb";
    sha256 = "032wlv856hz74mnb7m4zl5rhisp57v89qvgg9xccsrhyis6cnvvb";
  };
}
