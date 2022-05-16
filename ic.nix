{ pkgs, source, moc }:
let
  pkgs-with-overlays = pkgs.appendOverlays ([ ]
    ++ pkgs.lib.optionals pkgs.stdenv.isDarwin
    [ (self: super: { lmdb = pkgs.callPackage ./nix/lmdb { }; }) ]);
in let pkgs = pkgs-with-overlays;
in with pkgs;
let rocksdb = rocksdb_6_23;
in (rustPlatform.buildRustPackage rec {
  name = "ic";
  src = source;
  unpackPhase = ''
    cp -r $src ${name}
    echo source root is ${sourceRoot}
    chmod -R u+w -- "$sourceRoot"
    runHook postUnpack
  '';
  sourceRoot = "${name}/rs";
  nativeBuildInputs = [ moc cmake clang pkgconfig python3 pkgs.rustfmt ];
  buildInputs = [ libclang.lib libiconv llvm.lib lmdb openssl rocksdb sqlite ]
    ++ (if stdenv.isDarwin then
      with darwin.apple_sdk.frameworks; [ CoreServices Foundation Security ]
    else
      [ libunwind ]);
  ROCKSDB_LIB_DIR = "${rocksdb}/lib";
  ROCKSDB_INCLUDE_DIR = "${rocksdb}/include";
  LIBCLANG_PATH = "${libclang.lib}/lib";
  cargoSha256 = "sha256-zg1NLVIb3vkGiNfLOiBp+ycPPhWu5f59+Lsw57YIY/k=";
  doCheck = false;
})
