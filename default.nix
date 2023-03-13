{ pkgs ? import <nixpkgs> { } }:
let
  pkgs_with_overlay = pkgs.appendOverlays ([
    (import (builtins.fetchTarball
      "https://github.com/oxalica/rust-overlay/archive/master.tar.gz"))
    (self: super: {
      rust-bindgen = super.rust-bindgen.overrideAttrs (_: { doCheck = false; });
      rust-stable = super.rust-bin.stable.latest.default.override {
        targets = [ "wasm32-unknown-unknown" ];
        extensions = [ "rust-src" ];
      };
      rustPlatform = super.makeRustPlatform {
        rustc = self.rust-stable;
        cargo = self.rust-stable;
      };
      rust-nightly = self.rust-bin.nightly."2022-12-15".default.override {
        targets = [ "wasm32-unknown-emscripten" "wasm32-wasi" ];
        extensions = [ "rust-src" ];
      };
      v8 = self.v8_8_x;
      zlib-static =
        (super.pkgsStatic.zlib.override ({ splitStaticOutput = true; })).static;
      libunwind-static =
        super.pkgsStatic.llvmPackages_11.libunwind.overrideAttrs (old: {
          postInstall = ''
            echo $PWD
            mkdir -p $out
            cp -r ../include $out/
          '';
        });
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
  utils = import ./utils.nix { inherit pkgs sources; };
  sdk = import ./sdk.nix {
    inherit pkgs;
    src = sources.sdk;
  };
  depsOf = drvs:
    pkgs.mkShell {
      name = "deps-env";
      nobuildPhase = "touch $out";
      buildInputs = builtins.concatMap (drv: drv.buildInputs) drvs;
      nativeBuildInputs = builtins.concatMap (drv: drv.nativeBuildInputs) drvs;
    };
  ic-no-shell = ic // { shell = null; };
  projects = { inherit motoko ic ic-no-shell sdk utils; };
in with builtins;
let derivations = pkgs.lib.lists.fold (a: b: a // b) { } (attrValues projects);
in projects // derivations // { deps = depsOf (attrValues derivations); }
