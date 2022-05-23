{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "744085424b236b2ac990f04d2e1b41bcd9c4b674";
    sha256 = "06p2di6rplfzww6kggafsdnp1q7l6xfyx6pj2mg3sqy1s754jbmd";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda";
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "33278441c0eca523068c623881b690709af58197";
    sha256 = "1yn7qpnxn997bqcx4mwgc4k7m560v9208s7ghwrz8j2004651za1";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "08213dc8a69978e5a70149c8940e7b87bc065b52";
    sha256 = "1c29lfgxi9qzxiw0wlx8wkcp37ixywc6dyj2xqyh4ml6isnhn1l0";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "9886d3d6200fcc3726329966860fc058707406cd";
    sha256 = "07f8zykag6kvmqdmn45rkm9v3fbgmqfn80d00lnfyslnwrpfc96d";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "3a225b611cd408ca752a627c30c25ce3467313dc";
    sha256 = "09ibnja04zqib64f7kiqwssaxvqgflrp2zjs3p235vqqizjnr5sr";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git";
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # mdb.master
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel";
    rev = "13dd83fca5eddf48d63abc7a07cffa4fd44e4f6e"; # main
    sha256 = "0n41qjblka2z745n5vskvn9lfa1qs65mfw3196c7r0adb26xmlgz";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl";
    rev = "41b561942281533f67299e485c4763f3ce91f787"; # master
    sha256 = "1kxqghw2vis2xfjwawasfwsqc3ys1lbn80xgya10ikv6yvpbr05f";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid";
    rev = "72b681c3a4fa9cfa1b705e3346118d7eae38ef84"; # master
    sha256 = "08p8zwq0m2wkgsc4xfn5822hcn9qk6zsmljnva9dgj716rjknjdz";
  };

}
