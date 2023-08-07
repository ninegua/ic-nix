{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "9c89622231301daf93528aa3b64b4d1ec4657680"; # pin
    sha256 = "0j155qqivm6lhyp17wdi4mrw9gym8dyqf7yak28nxas0z04vr622";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "68a0262851845f659f1715ba560cbda9d2d11eb0";
    sha256 = "1kaq1jn8hv64z9vb6430dmsrsc81qrn9nyw2j077528br958cis1";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "1cdfde671614960dc22a299a2ef74f6bf0c6c223";
    sha256 = "0x2yf2fbkqrhxr76xifnkr6kh4h5vwhps72d3dcas6yqp6296kbl";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "f1f6099eb8b8ddddabd96399f5f248eca1fc4baf";
    sha256 = "0qkhf5ks21fj6pbmn3wpsb5jsqzm5ymw76h646h92kvvakybjhzg";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "9f51a7102085ec6a6ced5778f0864c9af9f50000";
    sha256 = "1cnr8k3d7xqck4h7kbaz39jyj66bzn3jihqbnh54id0rnhjy1dz9";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "98a9658f14010bf9cc3471d97d59c06a5ab10a59";
    sha256 = "1s4mlj4szmdlrd6rj6m941q559jifd85xc9m2sn0ybmpvi2k1cqy";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "cc11d8df05c18d3a7db239404abd2eae098b668f";
    sha256 = "0fx7p342cwfsjsq8wrf2gfrmdhw6vz1i0mwh3i5pcrcramhl74sp";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "d88f85dd906760c7cd3cf2be65bf9d3061dc6bc6";
    sha256 = "0a5gl4drc32b2alfnpawrz56c45adw0nklrshrlylrd5hclvdkn8";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "42d911dd249ffb01c04ca429ae09006c2b047a3a";
    sha256 = "11pf3b7650dpbkyg36b18yd91i3v5h8iksxsgz3y3lb45pyivx1j";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "2c3f8a388a60559ffa27c7a68ae01a8da56c1eb5";
    sha256 = "10234w4vwk0yq54j634qp9dmkq02xkppyy8kjczmnr6arx5j6jkd";

  };

}
