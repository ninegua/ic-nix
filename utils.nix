{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv_ = dontUseCargoParallelTests: cargoPatches: name: cargoSha256:
    rustPlatform.buildRustPackage {
      inherit name cargoSha256 cargoPatches dontUseCargoParallelTests;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ Security ]);
      nativeBuildInputs = [ pkg-config ];
      RUSTFLAGS = [ "-Clinker=${linker}" "-Lnative=${libcxxabi}/lib" ];
    };
  mkDrv = mkDrv_ false [ ];
in rec {
  icx-proxy = mkDrv "icx-proxy"
    "sha256-Zv9wBf32sv/bQUo4do+xejil5KQebtS/3rGbiRdomnQ="; # cargoSha256
  idl2json = mkDrv "idl2json"
    "sha256-o3cOoFbjhRBwndcEDq0D6rsqunKyWb+oNHLrcH5zs+Q="; # cargoSha256
  vessel = mkDrv "vessel"
    "sha256-+gx9kKgS4M+usVWK/sK34/7XFob5Vn4K6Ha5rBJ9Dgs="; # cargoSha256
  ic-repl = mkDrv "ic-repl"
    "sha256-nOXdfGdMhG5ou3uzPhRs5HNE8i5NYbRXyDL30BmDy3U="; # cargoSha256
  ic-wasm = mkDrv_ true [ ] "ic-wasm"
    "sha256-4gi8eBI42JggMesDEK/Lo73MWV2UduR8oci0Z0ld89o="; # cargoSha256
  candid = mkDrv "candid"
    "sha256-3DtEkpyeJi2VcpJOXnZCPvwrQH/C9Tnr4xjZ/X4PQsQ="; # cargoSha256

  shell = ic-wasm;
}
