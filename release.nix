{ pkgs ? import <nixpkgs> { } }:
with import ./. { inherit pkgs; }; rec {
  binaries = pkgs.stdenv.mkDerivation {
    name = "ic-nix-binaries";
    nativeBuildInputs = [ pkgs.patchelf ];
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out/bin $out/share
      cp ${moc}/bin/mo* $out/bin/
      cp ${ic.binaries}/bin/{replica,ic-admin,ic-prep,ic-starter,ic-btc-adapter,ic-canister-http-adapter,canister_sandbox,sandbox_launcher} $out/bin/
      cp ${dfx}/bin/* $out/bin/
      cp ${icx-proxy}/bin/* $out/bin/
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
    '';
  };
}
