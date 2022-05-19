{ pkgs ? import <nixpkgs> { }, force ? false }:
with pkgs;
let
  version = "v0.1.9";
  ostype = "linux";
  arch = "x86_64";
  system = "${arch}-${ostype}";
  motoko-base = fetchGit {
    url = "https://github.com/dfinity/motoko-base";
    ref = "refs/heads/next-moc";
  };
  binaries = fetchTarball {
    url =
      "https://github.com/ninegua/ic-nix/releases/download/${version}/ic-binaries-${version}-${ostype}-${arch}.tar.gz";
  };
  canisters = fetchTarball {
    url =
      "https://github.com/ninegua/ic-nix/releases/download/${version}/ic-canisters-${version}-wasm32.tar.gz";
  };
  ic-nix-source = fetchTarball {
    url =
      "https://github.com/ninegua/ic-nix/archive/refs/tags/${version}.tar.gz";
  };
  makeDrv = { binaries, canisters }:
    stdenv.mkDerivation {
      name = "ic-nix-bin";
      phases = [ "installPhase" "fixupPhase" "createCachePhase" ];
      buildInputs = [ coreutils ]
        ++ lib.optionals (!stdenv.isAarch64) [ autoPatchelfHook ];
      installPhase = ''
        mkdir -p $out/bin $out/share
        cp -r ${binaries}/bin/* $out/bin
        cp -r ${canisters}/share/* $out/share
        ls -R $out
        chmod 755 $out/bin/*
      '';
      createCachePhase = ''
        dfx_version=$($out/bin/dfx --version|cut -d' ' -f2)
        cache=$out/share/dfx/.cache/dfinity/versions/$dfx_version/
        mkdir -p $cache/base
        cp -r ${motoko-base}/src/* $cache/base/
      '';
      /* cd $cache
         for exe in $out/bin/*; do
           name=$(basename $exe)
           (cd $cache; ln -s ../../../bin/$exe .)
         done
      */
    };
  prebuilt-drv = makeDrv { inherit binaries canisters; };
  build-drv =
    let release = import "${ic-nix-source}/release.nix" { inherit pkgs; };
    in makeDrv { inherit (release) binaries canisters; };

  dfxBins = [
    "dfx"
    "replica"
    "ic-starter"
    "canister_sandbox"
    "ic-ref"
    "ic-starter"
    "icx-proxy"
    "moc"
    "mo-doc"
    "mo-ide"
    "replica"
    "sandbox_launcher"
  ];
  dfxPaths = drv: list:
    builtins.listToAttrs (builtins.map (name: {
      name = "DFX_${
          lib.strings.toUpper (lib.replaceChars [ "-" ] [ "_" ] name)
        }_PATH";
      value = "${drv}/bin/${name}";
    }) list);
  shellFor = drv:
    mkShell ({
      nobuildPhase = "touch $out";
      nativeBuildInputs = [ drv ];
      DFX_CACHE_ROOT = "${drv}/share/dfx";
    } // dfxPaths drv dfxBins);
  warn = mkShell ({
    buildPhase = ''
      echo 
      echo '****************************************************************************************'
      echo WARNING: 
      echo '  It appears there is no prebuilt binaries available for your system ${stdenv.system}.'
      echo '  Run nix-shell with `--arg force true` if you want to build it from source.'
      echo '  Note that if this is the first time you build it, it can take about an hour to finish.'
      echo '****************************************************************************************'
      echo
    '';
  });
in shellFor (if stdenv.buildPlatform.system == system then
  prebuilt-drv
else if force then
  build-drv
else
  warn)
