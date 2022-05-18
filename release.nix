{ pkgs ? import <nixpkgs> { } }:
with import ./. { inherit pkgs; }; rec {
  binaries = pkgs.stdenv.mkDerivation {
    name = "ic-nix-binaries";
    nativeBuildInputs = [ pkgs.patchelf ];
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out/bin $out/share
      cp ${motoko.moc}/bin/* $out/bin/
      cp ${ic.binaries}/bin/{replica,ic-admin,ic-prep,ic-starter} $out/bin/
      cp ${sdk.dfx}/bin/* $out/bin/
    '' + pkgs.lib.optionalString pkgs.stdenv.isLinux (''
      for exe in $out/bin/*; do
        chmod 755 $exe
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
