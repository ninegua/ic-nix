{ pkgs ? import <nixpkgs> { } }:
with import ./. { inherit pkgs; };
let
  sources = import ./nix/sources.nix { inherit (pkgs) fetchgit; };
  ic_commit = builtins.unsafeDiscardStringContext
    (pkgs.lib.strings.fileContents "${sdk.dfx}/share/replica-rev");
  wasm_names = [
    "registry-canister.wasm"
    "governance-canister_test.wasm"
    "governance-canister.wasm"
    "ledger-canister_notify-method.wasm"
    "root-canister.wasm"
    "cycles-minting-canister.wasm"
    "lifeline.wasm"
    "genesis-token-canister.wasm"
    "identity-canister.wasm"
    "nns-ui-canister.wasm"
    "sns-wasm-canister.wasm"
    "ic-ckbtc-minter.wasm"
    "sns-root-canister.wasm"
    "sns-governance-canister.wasm"
    "sns-swap-canister.wasm"
    "ic-icrc1-ledger.wasm"
    "ic-icrc1-archive.wasm"
    "ic-icrc1-index.wasm"
  ];
  urls = map (wasm_name:
    "https://download.dfinity.systems/ic/${ic_commit}/canisters/${wasm_name}.gz")
    wasm_names;
  downloads = map builtins.fetchurl (urls ++ [
    "https://github.com/dfinity/internet-identity/releases/download/release-2022-07-11/internet_identity_dev.wasm"
    "https://github.com/dfinity/nns-dapp/releases/download/tip/nns-dapp_t2.wasm"
  ]);
in rec {
  binaries = pkgs.stdenv.mkDerivation {
    name = "ic-nix-binaries";
    nativeBuildInputs = [ pkgs.patchelf ];
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out/bin $out/share
      cp ${moc}/bin/mo* $out/bin/
      cp ${ic.binaries}/bin/{replica,ic-admin,ic-prep,ic-starter,ic-btc-adapter,ic-https-outcalls-adapter,ic-state-machine-tests,canister_sandbox,sandbox_launcher,ic-nns-init,sns} $out/bin/
      cp ${dfx}/bin/* $out/bin/
      cp ${icx-proxy}/bin/* $out/bin/
      cp ${idl2json}/bin/* $out/bin/
      cp ${vessel}/bin/* $out/bin/
      cp ${ic-repl}/bin/* $out/bin/
      cp ${candid}/bin/* $out/bin/
    '' + pkgs.lib.optionalString pkgs.stdenv.isLinux (''
      for exe in $out/bin/*; do
        chmod 755 $exe
        rpath=$(patchelf --print-rpath $exe)
        echo $rpath | grep -q : && echo "More than 1 rpath found in $exe: $rpath" && exit 1
        patchelf --set-interpreter /lib64/ld-linux-x86-64.so.2 $exe
      done
    '');
  };
  canisters = pkgs.stdenv.mkDerivation {
    name = "ic-nix-canisters";
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out/share
      cp -r ${ic.canisters}/share/ic-canisters $out/share/
      cp -r ${sdk.dfx}/share/dfx-canisters $out/share/
      mkdir -p $out/share/wasms
      for file in ${pkgs.lib.strings.concatStringsSep " " downloads}; do
        echo Copying $file
        target=`echo $file|sed -e 's/^[^-]*-//g'`
        cp $file $out/share/wasms/$target
        gunzip -k $out/share/wasms/$target || echo skip
      done
      test -f $out/share/wasms/lifeline.wasm && cp $out/share/wasms/lifeline.wasm $out/share/wasms/lifeline_canister.wasm
      test -f $out/share/wasms/lifeline.wasm.gz && cp $out/share/wasms/lifeline.wasm $out/share/wasms/lifeline_canister.wasm.gz
      mv $out/share/wasms/nns-dapp_t2.wasm $out/share/wasms/nns-dapp_local.wasm
    '';
  };
}
