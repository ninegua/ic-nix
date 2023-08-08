{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv_ =
    buildFeatures: dontUseCargoParallelTests: cargoPatches: name: cargoSha256:
    rustPlatform.buildRustPackage {
      inherit name buildFeatures cargoSha256 cargoPatches
        dontUseCargoParallelTests;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ Security ]);
      nativeBuildInputs = [ pkg-config ];
      RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxxabi}/lib" ];
    };
  mkDrv = mkDrv_ [ ] false [ ];
in rec {
  icx-proxy = mkDrv_ [ "skip_body_verification" ] false [ ] "icx-proxy"
    "sha256-RkO9vjpJACsEZjgfQ57/c73EObJRB2l/5R3zt08u+WA="; # cargoSha256
  idl2json = mkDrv "idl2json"
    "sha256-VTqJDYAxjkCmtpJ7mT5I6/Osg5kKce0kwWw5YjafEuA="; # cargoSha256
  vessel = mkDrv "vessel"
    "sha256-+gx9kKgS4M+usVWK/sK34/7XFob5Vn4K6Ha5rBJ9Dgs="; # cargoSha256
  ic-repl = mkDrv "ic-repl"
    "sha256-YS4mhUgS5oQw4Eoa48AB4oMtCuq25zpoYzzsvDnyAQk="; # cargoSha256
  ic-wasm = mkDrv_ [ ] true [ ] "ic-wasm"
    "sha256-iGCju0JG+jkysmDAeTfjNCYaSfg7N3Qqq8HpPlRHMgU="; # cargoSha256
  candid = mkDrv_ [ ] false [ ] "candid"
    "sha256-KAltIw1SdhP0H2OveybngcNMpa8KgUE31ctyg5oWzA8="; # cargoSha256

  shell = ic-wasm;
}
