{ pkgs ? import <nixpkgs> { }, force ? false, version ? "20220520"
, system ? pkgs.stdenv.buildPlatform.system, ic-nix ? fetchTarball {
  url = "https://github.com/ninegua/ic-nix/archive/refs/tags/${version}.tar.gz";
} }:
with pkgs;
let
  ostypes = [ "linux" "darwin" ];
  archs = [ "x86_64" "aarch64" ];
  supported-systems =
    builtins.concatMap (arch: builtins.map (os: arch + "-" + os) ostypes) archs;
  binaries = fetchTarball {
    url =
      "https://github.com/ninegua/ic-nix/releases/download/${version}/ic-binaries-${version}-${system}.tar.gz";
  };
  canisters = fetchTarball {
    url =
      "https://github.com/ninegua/ic-nix/releases/download/${version}/ic-canisters-${version}-wasm32.tar.gz";
  };
  sources =
    import "${ic-nix}/nix/sources.nix" { inherit (pkgs) fetchgit; };
  makeDrv = { binaries, canisters }:
    stdenv.mkDerivation {
      name = "dfx-env";
      phases = [ "installPhase" ]
        ++ (lib.optionals (!stdenv.isDarwin) [ "fixupPhase" ])
        ++ [ "createCachePhase" ];
      buildInputs = [ coreutils ]
        ++ lib.optionals (!stdenv.isDarwin) [ autoPatchelfHook ];
      installPhase = ''
        mkdir -p $out/bin $out/share
        cp -r ${binaries}/bin/* $out/bin
        cp -r ${canisters}/share/* $out/share
        ls -R $out
        chmod 755 $out/bin/*
        echo $phases
      '';
      createCachePhase = ''
        dfx_version=$($out/bin/dfx --version|cut -d' ' -f2)
        cache=$out/share/dfx/.cache/dfinity/versions/$dfx_version/
        mkdir -p $cache/base
        cp -r ${sources.motoko-base}/src/* $cache/base/
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
    let release = import "${ic-nix}/release.nix" { inherit pkgs; };
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
    phases = [ "WARNING" ];
    WARNING = ''
      echo 
      echo '****************************************************************************************'
      echo '  It appears there is no prebuilt binaries available for system ${system}.'
      echo '  Run nix-shell with `--arg force true` if you want to build it from source.'
      echo '  Note that if this is the first time you build it, it can take about an hour to finish.'
      echo '****************************************************************************************'
      echo
      exit 1
    '';
  });
in shellFor (if force then
  build-drv
else if builtins.elem system supported-systems then
  prebuilt-drv
else
  warn)
