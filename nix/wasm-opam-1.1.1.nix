{
  stdenv,
  fetchFromGitHub,
  ocaml,
  findlib,
  ocamlbuild,
}:
stdenv.mkDerivation {
  pname = "wasm";
  version = "1.1.1";
  src = fetchFromGitHub {
    owner = "WebAssembly";
    repo = "spec";
    rev = "opam-1.1.1";
    sha256 = "1kp72yv4k176i94np0m09g10cviqp2pnpm7jmiq6ik7fmmbknk7c";
  };
  patchPhase = ''
    substituteInPlace ./interpreter/Makefile \
                        --replace-fail "+a-4-27-42-44-45" "+a-4-27-42-44-45-70"
  '';
  nativeBuildInputs = [
    ocaml
    findlib
    ocamlbuild
  ];
  strictDeps = true;
  makeFlags = [
    "-C"
    "interpreter"
  ];
  createFindlibDestdir = true;
  postInstall = ''
    mkdir $out/bin
    cp -L interpreter/wasm $out/bin
  '';
}
