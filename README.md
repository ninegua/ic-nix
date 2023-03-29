# Build Internet Computer Projects with Nix

![ci](https://github.com/ninegua/ic-nix/actions/workflows/ci.yml/badge.svg?branch=main)
![release](https://github.com/ninegua/ic-nix/actions/workflows/release.yml/badge.svg)

**Usage**

- To build a project, run `nix-build -A <project>`.
- To enter a development environment for a project, run `nix-shell -A <project>.shell`.
- To download the latest pre-built binaries, go to [release page](https://github.com/ninegua/ic-nix/releases/latest).
- To start canister development with latest build, run:
```
nix-shell https://github.com/ninegua/ic-nix/releases/latest/download/dfx-env.tar.gz
```

All you need is a working [nix] installation on your computer.

For aarch64 (Apple M1) architecture, you have a couple choices:

1. Compile everything from source by passing extra argument `--arg force true`.
2. Use `x86_64` binaries by passing extra argument `--argstr system x86_64`.
3. Use pre-built `aarch64` binaries by getting it from the [20230101](https://github.com/ninegua/ic-nix/releases/tag/20230101) release. These were built offline and manually uploaded.

Before you compile from source, you may also want to setup the binary cache (courtesy of [cachix]) by `nix-shell -p cachix --run 'cachix use ninegua'` to avoid unnecessary compilation.

**VSCode/direnv**

Assuming you're developing on `ic`.

1. Make sure you have [`direnv`](https://direnv.net/) installed.
1. Clone this repo next to `ic`.
2. Under `ic/rs`: run `echo "use nix ../../ic-nix/default.nix -A ic.shell" > .envrc`. 
3. In the same directory, run `direnv allow .`

If using VSCode, you should also install the [direnv vscode extension](https://marketplace.visualstudio.com/items?itemName=mkhl.direnv), to make sure that rust-analyzer will be using the same versions of Rust as your shell.

**WARNING**

Releases are built against the latest main branches of each project on a weekly update schedule. They may not always work. Please understand the risks before proceed.

**Supported projects**

 - [ic]
 - [sdk]
 - [motoko]
 - [candid]
 - [icx-proxy]
 - [ic-repl]
 - [idl2json]
 - [vessel]

Supported platforms:

- [x] Linux x86-64
- [x] Linux aarch-64 (*)
- [x] OS X x86-64 (*)
- [x] OS X aarch-64 (*)

(*) Build succeeds, but running some of the tests could fail.

Supported nixpkgs:

- [x] 22.05
- [x] 22.11
- [ ] unstable

Feature:

- [x] Build native binaries with nix-build with glibc.
- [x] Dynamic binaries with minimal dependencies: glibc on Linux, system libs on OS X.
- [x] Build Wasm binaries with nix-build.
- [x] Develop with nix-shell.
- [x] Build release binaries on Github.
- [ ] Build and run all tests.

Note that this effort requires no nix support of a project unless it already has.

[nix]: https://nixos.org/download.html
[ic]: https://github.com/dfinity/ic
[sdk]: https://github.com/dfinity/sdk
[motoko]: https://github.com/dfinity/motoko
[cachix]: https://github.com/cachix/cachix
[candid]: https://github.com/dfinity/candid
[icx-proxy]: https://github.com/dfinity/icx-proxy
[ic-repl]: https://github.com/chenyan2002/ic-repl
[idl2json]: https://github.com/dfinity/idl2json
[vessel]: https://github.com/dfinity/vessel
