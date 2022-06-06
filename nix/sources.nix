{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "1400bf7d002626c2ad3680ea21f9cd0b306a507a";
    sha256 = "1q28l6x5sshbljyj28jgqld9xjmnp94k16bcsr00rdjhvsfldl8w";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # main
    rev = "5e15a91cd152d3faa869be3f7ee34202b7b82e8c";
    sha256 = "0ghb74xf13dx4z9my4bbvvfdv21hnrszr1dl48afa4q6rwk30y35";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "8ceab824bddb4c4d725761aae8847a8794541182";
    sha256 = "15g0gvsd9g8k0c5wbnx27b04hsyn83s29v1dbqscdiyammf0gc0w";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "b3abf8945fa27c57a0dd0880b793e12de7f3d743";
    sha256 = "1sckvr53ja8390qzd4y81na7kxfmawlzj7z7iwn4yl9p3d1hcqc2";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "30094b6ed05f19cee102115215863d185f2db4f0";
    sha256 = "15zca07fj9ki4sb43jpnbd7wf3qcbs5y8607r9s2ky451rc00yas";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "d438b72124df144fad6a8f4d015f657d1f1c87b7";
    sha256 = "1gdcdbg8nqpiy170bhlgzxpz3wdcc8wpxwazsprgz44chghldahr";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf";
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "13dd83fca5eddf48d63abc7a07cffa4fd44e4f6e";
    sha256 = "0n41qjblka2z745n5vskvn9lfa1qs65mfw3196c7r0adb26xmlgz";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "41b561942281533f67299e485c4763f3ce91f787";
    sha256 = "1kxqghw2vis2xfjwawasfwsqc3ys1lbn80xgya10ikv6yvpbr05f";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "72b681c3a4fa9cfa1b705e3346118d7eae38ef84";
    sha256 = "08p8zwq0m2wkgsc4xfn5822hcn9qk6zsmljnva9dgj716rjknjdz";
  };

}
