{ fetchgit }: {
  ic = fetchgit {
    url = "https://github.com/dfinity/ic"; # master
    rev = "c337458aafa8e8864eadfcfe38d7e5fa385b0006"; # pin
    sha256 = "18rkbwjgy5qh27svx224xfswgls0j2smp04i04m4r1wcask2anrp";
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
    rev = "822efe37044cc9804b61a1b6c510b1acd71c0995";
    sha256 = "0hl7y69ndx9wn12ycp03wdpmjx2a4aca6pb845wjnvs99kl8fggx";
  };
  motoko-base = fetchgit {
    url = "https://github.com/dfinity/motoko-base"; # next-moc
    rev = "8028da2d691151a3202d7539b5828a7a381f40c6";
    sha256 = "02z0yb2lq5yixfi262szfdy2pjpv4jp9rgpqq0hrkn7siq102ha8";
  };
  musl-wasi = fetchgit {
    url = "https://github.com/WebAssembly/wasi-libc"; # main
    rev = "be1704a9568e98ae073f074f7271cae68c23d161";
    sha256 = "1xgrrbl83qv8by0a53vs0ca6y2qxsm9jmczqa61q45jpkrrpq4fa";
  };
  sdk = fetchgit {
    url = "https://github.com/dfinity/sdk"; # master
    rev = "119a6b1a9de07dc49cff99a90a0443ee3f4408bc";
    sha256 = "00l7a2141bany83407wgy2k8mjaw54nq7khlfx1m723bbb8azgv0";
  };
  lmdb = fetchgit {
    url = "https://git.openldap.org/openldap/openldap.git"; # mdb.master
    rev = "55fd54dae6f90080b770dbc9dbcee5044976b7bf"; # pin
    sha256 = "0syagyv0jmdmivhlyw5y78rmmm8l175pchiv5g3r1n2mhsk7624j";
  };
  vessel = fetchgit {
    url = "https://github.com/dfinity/vessel"; # main
    rev = "d00702fe8fe153195dd2bea8f9bb60abf776a9d7";
    sha256 = "150rdfnnz65139y2wvkh42ph9cx6af4ndp6sbl3f8r7723jh41x5";
  };
  ic-repl = fetchgit {
    url = "https://github.com/chenyan2002/ic-repl"; # master
    rev = "75b03f101f48bf212f8b6314c3a7f21630962bad";
    sha256 = "0h3dg6i0il67pd8i4rx1gfplkb44jk0ws4mgpg747xkgfdq1nvkh";
  };
  ic-wasm = fetchgit {
    url = "https://github.com/dfinity/ic-wasm"; # master
    rev = "9cfc86ca5367aab47b945a1419d0d76fa3031cbf";
    sha256 = "0m3mhhmabv1cyk2yr5cqq44nvgqaxdkm1p0q58ci1x7ggbk7hnp9";
  };
  candid = fetchgit {
    url = "https://github.com/dfinity/candid"; # master
    rev = "05dab775ea31b3576b6aeee2c501a3e2dd26ad37";
    sha256 = "0smsxabsfyq61q1dbjb8j4jh0jcg5g94zcizmg66rg854zay6v7y";
  };
  cdk-rs = fetchgit {
    url = "https://github.com/dfinity/cdk-rs"; # main
    rev = "0b14facb80e161de79264c8f88b1a0c8e18ffcb6";
    sha256 = "0vd7n88i01i42ni68qlj3yxc85623w5kj2507476z2fsrsrd8rs5";
  };
  agent-rs = fetchgit {
    url = "https://github.com/dfinity/agent-rs"; # main
    rev = "3cb1c46a4bf951060f97eb10d5347058a5b364bf";
    sha256 = "1c3p2nay68n9qnqyhljzy9j0bsb1z02xx27kqqrvcbajwfmk5xns";
  };
  dfx-extensions = fetchgit {
    url = "https://github.com/dfinity/dfx-extensions"; # main
    rev = "f7a384b8ea8660361c61259a0109dcda3b46f879";
    sha256 = "0kc868mdbkcvzndlmdj0niqlrr9x36dyl648ib924xd9pbf9wj3y";
  };
}
