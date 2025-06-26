{ pkgs ? import <nixpkgs> { } }:
let
  pkgs_with_overlay = pkgs.appendOverlays ([
    (import (builtins.fetchTarball
      "https://github.com/oxalica/rust-overlay/archive/master.tar.gz"))
    (self: super: {
      rust-stable = self.rust-bin.stable.latest.default.override {
        targets = [ "wasm32-unknown-unknown" ];
        extensions = [ "rust-src" ];
      };
      rust-nightly = self.rust-bin.nightly."2024-07-28".default.override {
        targets = [ "wasm32-wasip1" ];
        extensions = [ "rust-src" ];
      };
      v8 = self.v8_8_x;
      zlib-static =
        (super.pkgsStatic.zlib.override ({ splitStaticOutput = true; })).static;
      lzma-static = super.pkgsStatic.xz;
      libunwind-static = super.pkgsStatic.libunwind;
      openssl-static = super.pkgsStatic.openssl.override ({ static = true; });
      libiconv-static = super.pkgsStatic.libiconvReal.override {
        enableStatic = true;
        enableShared = false;
      };
    })
  ]);
in let
  pkgs = pkgs_with_overlay;
  pkgsRust = pkgs.appendOverlays ([
    (self: super: {
      rust-stable = pkgs.rust-stable;
      rust-bindgen = super.rust-bindgen.overrideAttrs (_: { doCheck = false; });
      rustPlatform = (super.makeRustPlatform {
        rustc = self.rust-stable;
        cargo = self.rust-stable;
        stdenv = self.llvmPackages.libcxxStdenv;
      }) // {
        importCargoLock = super.callPackage
          (if pkgs.lib.versionAtLeast pkgs.lib.version "24.11pre" then
            ./nix/import-cargo-lock-24.11.nix
          else
            ./nix/import-cargo-lock.nix) { cargo = self.rust-stable; };
      };
      # workaround for nixpkgs 23.11 for HOST_CC when invoking cargo.
      rust = if super.rust ? envVars then
        super.rust // { envVars = super.rust.envVars // { setEnv = ""; }; }
      else
        super.rust;
    })
  ]);

  sources = import ./nix/sources.nix { inherit (pkgs) fetchgit; };
  motoko = import ./motoko.nix {
    inherit pkgs;
    sources = { inherit (sources) motoko libtommath musl-wasi; };
  };
  ic = import ./ic.nix {
    inherit pkgs sources;
    customRustPlatform = pkgsRust.rustPlatform;
    moc = motoko.moc;
  };
  utils = import ./utils.nix {
    inherit pkgs sources;
    customRustPlatform = pkgsRust.rustPlatform;
  };
  sdk = import ./sdk.nix {
    inherit pkgs;
    src = sources.sdk;
    customRustPlatform = pkgsRust.rustPlatform;
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
