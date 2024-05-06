# Build Internet Computer Projects with Nix

![ci](https://github.com/ninegua/ic-nix/actions/workflows/ci.yml/badge.svg?branch=main)
![release](https://github.com/ninegua/ic-nix/actions/workflows/release.yml/badge.svg)

Unofficial build of common binaries used by developers of the [Internet Computer blockchain](https://wiki.internetcomputer.org).

- Directly built from source.
- Cross-platform (Linux and Mac OS X, both `x86_64` and `aarch64`).
- Mostly statically linked with no extra runtime dependency other than libc.
- Weekly release of latest versions at build time.
- Optionally, a standalone SDK environment for nix-shell.

**Usage**

Depending on your objective, you can do any the following:

- To build a project, run `nix-build -A <project>`
- To enter a development environment for a project, run `nix-shell -A <project>.shell`
- To download the latest pre-built binaries, go to [release page](https://github.com/ninegua/ic-nix/releases/latest).
- To start canister SDK development with latest build, run `nix-shell https://github.com/ninegua/ic-nix/releases/latest/download/dfx-env.tar.gz`

All you need is a working [nix] installation on your computer.

**Compile-yourself from source**

For those who prefer to compile from source:
```
nix-shell https://github.com/ninegua/ic-nix/releases/latest/download/dfx-env.tar.gz --arg force true
```

You can use pre-compiled derivations by setting a binary cache (courtesy of [cachix]) `nix-shell -p cachix --run 'cachix use ninegua'`.

**VSCode/direnv**

Assuming you're developing on `ic`.

1. Make sure you have [`direnv`](https://direnv.net/) installed.
1. Clone this repo next to `ic`.
2. Under `ic/rs`: run `echo "use nix ../../ic-nix/default.nix -A ic.shell" > .envrc`. 
3. In the same directory, run `direnv allow .`

If using VSCode, you should also install the [direnv vscode extension](https://marketplace.visualstudio.com/items?itemName=mkhl.direnv), to make sure that rust-analyzer will be using the same versions of Rust as your shell.

**WARNING**

Releases are built against the latest main branches of each project at the time. They may not always work. Please understand the risks before proceed.

**Supported projects**

 - [ic]
 - [sdk]
 - [motoko]
 - [agent-rs]
 - [candid]
 - [icx-proxy]
 - [cdk-rs]
 - [dfx-extensions]
 - [ic-repl]
 - [ic-wasm]
 - [idl2json]
 - [vessel]

Supported platforms:

- [x] Linux x86-64
- [x] Linux aarch-64 (*)
- [x] OS X x86-64
- [x] OS X aarch-64

(*) No pre-built binaries because GitHub Actions has yet to offer this runner type.

Supported nixpkgs:

- [x] 23.05
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
[ic-wasm]: https://github.com/dfinity/ic-wasm
[idl2json]: https://github.com/dfinity/idl2json
[vessel]: https://github.com/dfinity/vessel
[cdk-rs]: https://github.com/dfinity/cdk-rs
[agent-rs]: https://github.com/dfinity/agent-rs
[dfx-extensions]: https://github.com/dfinity/dfx-extensions
