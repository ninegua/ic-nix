# Build Internet Computer Projects with Nix

![ci](https://github.com/ninegua/ic-nix/actions/workflows/ci.yml/badge.svg?branch=main)
![release](https://github.com/ninegua/ic-nix/actions/workflows/release.yml/badge.svg)

Unofficial build of common toolkits used by developers of the [Internet Computer](https://wiki.internetcomputer.org) (IC) blockchain.

- Directly built from source.
- Cross-platform (Linux and Mac OS X, `x86_64` and `aarch64`).
- Mostly statically linked with no extra runtime dependency other than libc.
- Regular build of latest versions of everything.
- Battery-loaded SDK environment for IC via nix-shell.

**Usage**

If you just need the latest binary pre-built for your platforms, go to [release page](https://github.com/ninegua/ic-nix/releases/latest).

If you are a Nix user, you can start a canister development environment with a single `nix-shell` command.
This will give you immediate access to commands like `dfx`, `moc`, `didc`, `ic-repl`, and many many others.
```
nix-shell https://github.com/ninegua/ic-nix/releases/latest/download/dfx-env.tar.gz
```

Additionally if you are interested in developing individual projects included here, you can
- build a project by `nix-build -A <project>`, or
- enter a project's development environment by `nix-shell -A <project>.shell`.

If you are not a Nix user, all you need is a working [nix] installation on your computer to get started.

**Compile from source**

For those who prefer to compile from source:
```
nix-shell --arg force true https://github.com/ninegua/ic-nix/releases/latest/download/dfx-env.tar.gz
```

Pre-compiled Nix derivations are also available if you use Nix binary cache (courtesy of [cachix]) `nix-shell -p cachix --run 'cachix use ninegua'`.

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

Supported platforms and nixpkgs:

|                  | 24.11  | 25.05    |
| -------------    | ------ | -------- |
| darwin x86_64    |   ❌   |    ❌    |
| linux  x86_64    |   ✅︎   |    ✅︎    |
| darwin aarch64   |   ✅︎   |    ✅︎    |

Only the outdated nixpkgs 23.05 supports darwin `x86_64`, and it does not provide the required empscripten version to compile motoko.

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
