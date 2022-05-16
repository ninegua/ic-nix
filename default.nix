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
        targets = [
          "wasm32-unknown-emscripten"
          "wasm32-wasi"
          "i686-unknown-linux-gnu"
        ];
        extensions = [ "rust-src" ];
      };
      v8 = self.v8_8_x;
    })
  ]);
  sourcesnix = builtins.fetchurl {
    url =
      "https://raw.githubusercontent.com/nmattia/niv/d13bf5ff11850f49f4282d59b25661c45a851936/nix/sources.nix";
    sha256 = "0a2rhxli7ss4wixppfwks0hy3zpazwm9l3y2v9krrnyiska3qfrw";
  };
in let
  pkgs = pkgs_with_overlay;
  sources = import sourcesnix {
    sourcesFile = ./sources.json;
    inherit pkgs;
  };
  motoko = import ./motoko.nix {
    inherit pkgs;
    sources = { inherit (sources) motoko libtommath musl-wasi; };
  };
  ic = import ./ic.nix {
    inherit pkgs;
    source = sources.ic;
    moc = motoko.moc;
  };
  sdk = import ./sdk.nix {
    inherit pkgs;
    source = sources.sdk;
  };
in { inherit motoko ic sdk; }
