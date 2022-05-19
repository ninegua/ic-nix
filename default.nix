{ pkgs ? import <nixpkgs> { } }:
let
  pkgs_with_overlay = pkgs.appendOverlays ([
    (import (builtins.fetchTarball
      "https://github.com/oxalica/rust-overlay/archive/master.tar.gz"))
    (self: super: {
      rust-bindgen = super.rust-bindgen.overrideAttrs (_: { doCheck = false; });
      rust-stable = super.rust-bin.stable.latest.default.override {
        targets = [ "wasm32-unknown-unknown" ];
      };
      rustPlatform = super.makeRustPlatform {
        rustc = self.rust-stable;
        cargo = self.rust-stable;
      };
      rust-nightly = self.rust-bin.nightly."2022-05-16".default.override {
        targets = [ "wasm32-unknown-emscripten" "wasm32-wasi" ];
        extensions = [ "rust-src" ];
      };
      v8 = self.v8_8_x;
      zlib-static =
        (super.pkgsStatic.zlib.override ({ splitStaticOutput = true; })).static;
      openssl-static = super.pkgsStatic.openssl.override ({ static = true; });
      libiconv-static = super.pkgsStatic.libiconvReal.override {
        enableStatic = true;
        enableShared = false;
      };
    })
  ]);
in let
  pkgs = pkgs_with_overlay;
  sources = import ./nix/sources.nix { inherit (pkgs) fetchgit; };
  motoko = import ./motoko.nix {
    inherit pkgs;
    sources = { inherit (sources) motoko libtommath musl-wasi; };
  };
  ic = import ./ic.nix {
    inherit pkgs sources;
    moc = motoko.moc;
  };
  icx-proxy = import ./icx-proxy.nix {
    inherit pkgs;
    src = sources.icx-proxy;
  };
  sdk = import ./sdk.nix {
    inherit pkgs;
    src = sources.sdk;
  };
in {
  inherit pkgs;
  motoko = motoko // { shell = motoko.moc; };
  ic = ic // { shell = ic.binaries; };
  icx-proxy = icx-proxy // { shell = icx-proxy.icx-proxy; };
  sdk = sdk // { shell = sdk.sdk; };
}
