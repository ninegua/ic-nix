{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "a17247bd86c7aa4e87742bf74d108614580f216d"; # pin
    sha256 = "0n2an3jlczwmhz7zj5y2sw96siwan905wmfsq6giibv4qhh9yzqk";
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
    rev = "5ef59d849d274b19323e290aa23e12dbfdf09682";
    sha256 = "0lq0lmigiwaymx78f7qr31vcjvc8skqp7hh7i7m3pm5fj6q5w0fd";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "3ee2d69df7f617c8f0517d4a5c8aca97d523aff1";
    sha256 = "093sfzxchbr6j8ly4nym9qyk1ljsv5pf0jlslbz0rr701y6ynwy9";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "9f51a7102085ec6a6ced5778f0864c9af9f50000";
    sha256 = "1cnr8k3d7xqck4h7kbaz39jyj66bzn3jihqbnh54id0rnhjy1dz9";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "c748bea8e8556abbded5a6bfed4df4e6bbd4a3e4";
    sha256 = "09nihqpxv577zgcdd2vz8mi091npcpnyik3mj7ml70xz0s7yrrif";
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
    rev = "5066e27c5a54d6d01c57f42e96353c268af247d2";
    sha256 = "15ydzn5xyg472xsb58906sb9kphs4c8yv3sjpk3p9bz7kz86p4q6";

  };

}
