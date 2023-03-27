{ pkgs, sources }:
with pkgs;
let
  stdenv = llvmPackages_11.libcxxStdenv;
  linker = callPackage ./nix/static-linker.nix { inherit stdenv; };
  buildInputs = [ ] ++ lib.optionals stdenv.isDarwin
    (with darwin.apple_sdk.frameworks; [ DiskArbitration Foundation ]);
  mkDrv_ = cargoPatches: name: cargoSha256:
    rustPlatform.buildRustPackage {
      inherit name cargoSha256 cargoPatches;
      src = sources."${name}";
      buildInputs = [ openssl-static ] ++ lib.optionals stdenv.isDarwin
        (with darwin.apple_sdk.frameworks; [ Security ]);
      nativeBuildInputs = [ pkg-config ];
      RUSTFLAGS = lib.optionals stdenv.isDarwin [
        "-Clinker=${linker}"
        "-Lnative=${libcxxabi}/lib"
      ];
    };
  mkDrv = mkDrv_ [ ];
in rec {
  icx-proxy = mkDrv "icx-proxy"
    "sha256-Zv9wBf32sv/bQUo4do+xejil5KQebtS/3rGbiRdomnQ="; # cargoSha256
  idl2json = mkDrv "idl2json"
    "sha256-o3cOoFbjhRBwndcEDq0D6rsqunKyWb+oNHLrcH5zs+Q="; # cargoSha256
  vessel = mkDrv "vessel"
    "sha256-+gx9kKgS4M+usVWK/sK34/7XFob5Vn4K6Ha5rBJ9Dgs="; # cargoSha256
  ic-repl = mkDrv "ic-repl"
    "sha256-x6xNF5Pg2Tu0uYX0o0Ywoh87k434Bk56zHvrfVCrTWU="; # cargoSha256
  candid = mkDrv "candid"
    "sha256-3DtEkpyeJi2VcpJOXnZCPvwrQH/C9Tnr4xjZ/X4PQsQ="; # cargoSha256

  shell = icx-proxy;
}
