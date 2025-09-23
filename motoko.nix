{ pkgs, sources }:
let
  releaseVersion = import "${sources.motoko}/nix/releaseVersion.nix" {
    inherit pkgs;
    officialRelease = false;
  };
  ocamlPackages = pkgs.ocaml-ng.ocamlPackages_4_14;
  wasm = ocamlPackages.wasm.overrideAttrs (_: {
    version = "1.1.1";
    src = pkgs.fetchFromGitHub {
      owner = "WebAssembly";
      repo = "spec";
      rev = "opam-1.1.1";
      sha256 = "1kp72yv4k176i94np0m09g10cviqp2pnpm7jmiq6ik7fmmbknk7c";
    };
    patchPhase = ''
      substituteInPlace ./interpreter/Makefile \
                          --replace-fail "+a-4-27-42-44-45" "+a-4-27-42-44-45-70"
    '';
  });
  ocaml-recovery-parser = ocamlPackages.buildDunePackage {
    pname = "ocaml-recovery-parser";
    version = "0.3.0";
    src = pkgs.fetchFromGitHub {
      owner = "serokell";
      repo = "ocaml-recovery-parser";
      rev = "b8207b0c919b84d5096486e59985d0137c0c4d82";
      sha256 = "1xp88i26vlwjsvnlzbfvk7zx31s18pfwq9w4g2fb2xq7bbnlhm24";
    };
    buildInputs = with ocamlPackages; [ menhirSdk menhirLib fix base ];
  };

  rtsBuildInputs = with pkgs;
    [
      llvmPackages_18.clang
      llvmPackages_18.bintools
      rust-nightly
      wasmtime
      rust-bindgen
      python3
    ] ++ pkgs.lib.optional pkgs.stdenv.isDarwin [ libiconv ];

  llvmEnv = ''
    # When compiling to wasm, we want to have more control over the flags,
    # so we do not use the nix-provided wrapper in clang
    export WASM_CLANG="clang-18"
    export WASM_LD=wasm-ld
    # because we use the unwrapped clang, we have to pass in some flags/paths
    # that otherwise the wrapped clang would take care for us
    export WASM_CLANG_LIB="${pkgs.llvmPackages_18.clang-unwrapped.lib}"

    # When compiling natively, we want to use `clang` (which is a nixpkgs
    # provided wrapper that sets various include paths etc).
    # But for some reason it does not handle building for Wasm well, so
    # there we use plain clang-13. There is no stdlib there anyways.
    export CLANG="${pkgs.clang_18}/bin/clang"
  '';
  commonBuildInputs = with pkgs; [
    dune_3
    ocamlPackages.ocaml
    ocamlPackages.atdgen
    ocamlPackages.checkseum
    ocamlPackages.findlib
    ocamlPackages.menhir
    ocamlPackages.menhirLib
    ocamlPackages.menhirSdk
    ocamlPackages.cow
    ocamlPackages.num
    ocamlPackages.stdint
    ocamlPackages.vlq
    ocamlPackages.zarith
    ocamlPackages.yojson
    ocamlPackages.ppxlib
    ocamlPackages.ppx_blob
    ocamlPackages.ppx_inline_test
    ocamlPackages.ppx_expect
    ocamlPackages.bisect_ppx
    ocamlPackages.uucp
    wasm
    ocaml-recovery-parser
    obelisk
    perl
    removeReferencesTo
  ];

  ocaml_exe = name: bins: rts:
    let
      profile = "release";
      binaries = pkgs.lib.strings.concatStringsSep " " bins;
    in pkgs.stdenv.mkDerivation {
      inherit name;

      src = "${sources.motoko}/src";

      buildInputs = commonBuildInputs;

      MOTOKO_RELEASE = releaseVersion;

      extraDuneOpts = "";

      # we only need to include the wasm statically when building moc, not
      # other binaries
      buildPhase = ''
        patchShebangs .
      '' + pkgs.lib.optionalString (rts != null) ''
        ./rts/gen.sh ${rts}/rts
      '' + ''
        make DUNE_OPTS="--display=short --profile ${profile} $extraDuneOpts" ${binaries}
      '';

      installPhase = ''
        mkdir -p $out/bin
        cp --verbose --dereference ${binaries} $out/bin
      '' + pkgs.lib.optionalString pkgs.stdenv.isDarwin ''
        # there are references to darwin system libraries
        # in the binaries. But curiously, we can remove them
        # an the binaries still work. They are essentially static otherwise.
        remove-references-to \
          -t ${pkgs.darwin.Libsystem} \
          -t ${pkgs.darwin.CF} \
          -t ${pkgs.libiconv} \
          $out/bin/*
      '' + ''
        # also, there is a refernece to /nix/store/…/share/menhir/standard.mly.
        # Let's remove that, too
        remove-references-to \
          -t ${ocamlPackages.menhir} \
          $out/bin/*
        # sanity check
        for exe in $binaries; do
          $out/bin/$exe --help >/dev/null
        done
      '';
    };

  musl-wasi-sysroot = pkgs.stdenv.mkDerivation {
    name = "musl-wasi-sysroot";
    src = sources.musl-wasi;
    phases = [ "unpackPhase" "installPhase" ];
    installPhase = ''
      make SYSROOT="$out" include_dirs
    '';
  };

in rec {
  rts = let
    # Build Rust package cargo-vendor-tools
    cargoVendorTools = pkgs.rustPlatform.buildRustPackage rec {
      name = "cargo-vendor-tools";
      src = "${sources.motoko}/rts/${name}/";
      cargoLock = { lockFile = "${sources.motoko}/rts/${name}/Cargo.lock"; };
    };

    # Path to vendor-rust-std-deps, provided by cargo-vendor-tools
    vendorRustStdDeps = "${cargoVendorTools}/bin/vendor-rust-std-deps";

    # SHA256 of Rust std deps
    rustStdDepsHash = "sha256-U4BTr1CzFuOMdyLuhw5ry3/u8bkRiPmnMr4pLo3IdOQ=";

    # Vendor directory for Rust std deps
    rustStdDeps = pkgs.stdenvNoCC.mkDerivation {
      name = "rustc-std-deps";

      nativeBuildInputs = with pkgs; [ curl ];

      buildCommand = ''
        mkdir $out
        cd $out
        echo ${vendorRustStdDeps} ${pkgs.rust-nightly} .
        ${vendorRustStdDeps} ${pkgs.rust-nightly} .
      '';

      outputHash = rustStdDepsHash;
      outputHashAlgo = "sha256";
      outputHashMode = "recursive";
    };

    # Vendor tarball of the RTS
    rtsDeps = pkgs.rustPlatform.importCargoLock {
      lockFile = "${sources.motoko}/rts/motoko-rts-tests/Cargo.lock";
    };

    # All dependencies needed to build the RTS, including Rust std deps, to
    # allow `cargo -Zbuild-std`. (rust-lang/wg-cargo-std-aware#23)
    allDeps = pkgs.symlinkJoin {
      name = "merged-rust-deps";
      paths = [ rtsDeps rustStdDeps ];
    };

  in pkgs.stdenv.mkDerivation (with pkgs; rec {
    name = "moc-rts";
    src = "${sources.motoko}/rts";
    patches = [ ./nix/motoko-rts.patch ];
    nativeBuildInputs = [ makeWrapper removeReferencesTo cacert wabt ];
    buildInputs = rtsBuildInputs ++ lib.optional doCheck [ wasmtime ];

    preBuild = ''
      export HOME=$PWD
      export CARGO_HOME=$PWD/cargo-home

      # This replicates logic from nixpkgs’ pkgs/build-support/rust/default.nix
      mkdir -p $CARGO_HOME
      echo "Using vendored sources from ${rtsDeps}"
      unpackFile ${allDeps}
      cat > $CARGO_HOME/config.toml <<__END__
        [source."crates-io"]
        "replace-with" = "vendored-sources"

        [source."vendored-sources"]
        "directory" = "$(stripHash ${allDeps})"
      __END__

      ${llvmEnv}
      export TOMMATHSRC=${sources.libtommath}
    '';

    doCheck = false;

    checkPhase = if doCheck then "make test" else "true";

    installPhase = ''
      mkdir -p $out/rts
      cp mo-rts-non-incremental.wasm $out/rts
      cp mo-rts-non-incremental-debug.wasm $out/rts
      cp mo-rts-incremental.wasm $out/rts
      cp mo-rts-incremental-debug.wasm $out/rts
      cp mo-rts-eop.wasm $out/rts
      cp mo-rts-eop-debug.wasm $out/rts
    '';

    # This needs to be self-contained. Remove mention of nix path in debug
    # message.
    preFixup = ''
      remove-references-to \
        -t ${rust-nightly} \
        $out/rts/mo-rts-non-incremental.wasm \
        $out/rts/mo-rts-non-incremental-debug.wasm \
        $out/rts/mo-rts-incremental.wasm \
        $out/rts/mo-rts-incremental-debug.wasm \
        $out/rts/mo-rts-eop.wasm \
        $out/rts/mo-rts-eop-debug.wasm

      for rtsDep in $(find ${rtsDeps} -type l -exec readlink {} +); do
        remove-references-to \
          -t "$rtsDep" \
          $out/rts/mo-rts-non-incremental.wasm \
          $out/rts/mo-rts-non-incremental-debug.wasm \
          $out/rts/mo-rts-incremental.wasm \
          $out/rts/mo-rts-incremental-debug.wasm \
          $out/rts/mo-rts-eop.wasm \
          $out/rts/mo-rts-eop-debug.wasm
      done
    '';

    allowedRequisites = [ ];
  });

  moc = ocaml_exe "moc" [ "moc" "mo-ld" "mo-doc" "didc" "deser" "candid-tests" ]
    (rts.overrideAttrs (_: { dontCheck = true; }));

  shell = rts;
}
