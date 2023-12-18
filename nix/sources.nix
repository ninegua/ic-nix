{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "4778b79d21b327f8ee6c86e023da57236d3cbab1"; # pin
    sha256 = "0px05wc6zvahmwk72j207kzcbgxvinw36krxyl7cg73d73l6ncpl";
  };
  icx-proxy = fetchgit {
    url = "https://github.com/dfinity/icx-proxy"; # master
    rev = "c312760a62b20931431ba45e5b0168ee79ea5cda"; # pin
    sha256 = "0fx8qxsvsw7i4mnvf4cv4snmj194hsavsm4f1pv587cbvj1kv9ai";
  };
  idl2json = fetchgit {
    url = "https://github.com/dfinity/idl2json"; # master
    rev = "05f41f0d540adbef9ddbec728f84c7ec92194629";
    sha256 = "15chiw8314hyc5kb9vy46qv1qqivyrbw3ffi2fhhhn3snd3sp12b";
  };
  libtommath = fetchgit {
    url = "https://github.com/libtom/libtommath"; # master
    rev = "6ca6898bf37f583c4cc9943441cd60dd69f4b8f2"; # pin
    sha256 = "08qzskv6v8c3zrxdqf0rh7r5a78dsr846zj306yqmw9x521wy3v8";
  };
  motoko = fetchgit {
    url = "https://github.com/dfinity/motoko"; # master
    rev = "ad6fc86cfc79610da03c1539056caaacc63222e2";
    sha256 = "0i3wg01l0rbqq98hl68fsrmvdl9rwj2yddvwgffn1jlpnyfi6avz";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "92a6a49da38b2ebb29061612dddc76230a7385bc";
    sha256 = "0a2f8ihxsbxjqmshwqlzrg7dxm3a2qq0c1fgc9jshrq1ba6zirx1";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "4bac52eac3fd97157c15f86ffcab4e91533aa6f3";
    sha256 = "0hbkpwzl0gfcxbq7kjy4wd8d28fs32hvl485fqh8i2zcnr72krgw";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "02ae1d4edc590507b2eb5989f870ffdc20f44709";
    sha256 = "1jlyhjph7rhq464f58mc10xs0sik1sf95d63ihs718hgs38f4qc2";
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
    rev = "3f5be4da089b3825d37c4a7cbf7acbbcd12f2252";
    sha256 = "1gybhy3ipwbg45y7wn8w1rb2v5df4ri2kyhixnvawj99z7khf3nz";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "61692f44cf85b93d43311492283246bb443449d3";
    sha256 = "1b06dphnj89qmyv4gxh8gqm1bgqfpivr4di2nl9hbvqqyx4vzb65";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "7b45d8a4c29ec1b3bbbb727ac0675b1bd117585b";
    sha256 = "01fd8naqg96jqqqd2y8pdlw5n0lgmc20dl0jq7a6833ajv9j910n";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "fbacb220f9e8ce913e3cb79cbd8191988a3c8c25";
    sha256 = "0lqwgzs39prwaxv86zhwld3kzpf88qajrgnd4djd4j28cfffrcba";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "c498e1253520b1509924793af7e27b7b8b50fc0f";
    sha256 = "1x97vcjr09w3n7sgypi59b12x5sfk3ii5nn35mfgnrdm6z0i1v29";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "b6517ab68905eabf10bc82b460f6791690b84009";
    sha256 = "1xgn5pnjxfsq9yj3mvlp5q3ffvfs9dzrh6yip0ac8ahjfgv747nz";
  };
}
