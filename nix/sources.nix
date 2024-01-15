{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "a5be62d9d0e7c4f7fb4b8b5f24a92b3b9c4ccedb"; # pin
    sha256 = "0a8c4ps95zabci4hf0h1nnp6kzih15ljmqzgq8fvkrg1srcpcm3c";
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
    rev = "bd9a40f7f22d5ffe69db6b99dca92a22a1da57a4";
    sha256 = "0iyhnxf7fs22j2s98dk3jnyrbv5wc5z3k312nn2c8hrv3cdrnyda";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "7939b372f44836049b1afeedeee3a90e3741a2ad";
    sha256 = "01y9f8cd3qkhlgrjmn065giaqyj1hm8apf0v9xa4add28b0382b8";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "cc62fa82c29bfced82d280cbccc231667ee80822";
    sha256 = "087sr3kdvwl9n1riv24r65g1y3bndafj2avgl063xkbvxscsrbzl";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "2fcc47b0ec988ec2dd32c32ceff11b0cbc0bacce";
    sha256 = "1l96a00gsvj6jhifnsmk2xd0zfay0vhxjhvbl65k4g8m4iha479l";
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
    rev = "3a62b2223782a4111146c158af413606b821ded9";
    sha256 = "1irqx11lzf61vw7sh75qzvvlzp2phl74rn4c7cnsgxyz7qpdw3jf";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "61692f44cf85b93d43311492283246bb443449d3";
    sha256 = "1b06dphnj89qmyv4gxh8gqm1bgqfpivr4di2nl9hbvqqyx4vzb65";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "d0b4ccdaeaefdfac7c5d4248692d3f1b7a66247e";
    sha256 = "0ks4j10l17xnj8vsz5avxac7b6q2qy9hid66bqsscrlxrb3z1mza";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "edcbe3af0ac6031facc86d5ea40eeb2def66327e";
    sha256 = "0rxphdg5c9wsfk27d9509fwfqcsq8j4qa08j1x165q9f303q5xkn";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "a7f44ad05e77fc89b8447dd65b345e7a62fd1042";
    sha256 = "108mch56fbfn1mj8zxbiapc8yxixx3qcz6ga5prfmp3y09phbqg1";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "b6517ab68905eabf10bc82b460f6791690b84009";
    sha256 = "1xgn5pnjxfsq9yj3mvlp5q3ffvfs9dzrh6yip0ac8ahjfgv747nz";
  };
}
