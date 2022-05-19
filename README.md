# Build Internet Computer Projects with Nix

![ci](https://github.com/ninegua/ic-nix/actions/workflows/ci.yml/badge.svg?branch=main)
![release](https://github.com/ninegua/ic-nix/actions/workflows/release.yml/badge.svg)

Usage:

- To build a project, run `nix-build -A <project>`.
- To enter a development environment for a project, run `nix-shell -A <project>.shell`.
- To download the latest pre-built binaries, go to [release page](https://github.com/ninegua/ic-nix/releases/latest).
- To start canister development with latest build, run:
```
nix-shell https://github.com/ninegua/ic-nix/releases/latest/download/dfx-env.tar.gz
```

**WARNING**: Releases are built against the latest main branches of each project on a weekly update schedule.
They may not always work. Please understand the risks before proceed.

Supported projects:

 - [ic]
 - [sdk]
 - [motoko]
 - [icx-proxy]

Supported platforms:

- [x] Linux x86-64
- [x] Linux aarch-64 (*)
- [x] OS X x86-64 (*)
- [x] OS X aarch-64 (*)

(*) Build succeeds, but running some of the tests could fail.

Supported nixpkgs:

- [x] 21.11
- [x] unstable

Feature:

- [x] Build native binaries with nix-build with glibc.
- [x] Dynamic binaries with minimal dependencies: glibc on Linux, system libs on OS X.
- [x] Build Wasm binaries with nix-build.
- [x] Develop with nix-shell.
- [x] Build release binaries on Github.
- [ ] Build and run all tests.

Note that this effort requires no nix support of a project unless it already has.

[ic]: https://github.com/dfinity/ic
[sdk]: https://github.com/dfinity/sdk
[motoko]: https://github.com/dfinity/motoko
[icx-proxy]: https://github.com/dfinity/icx-proxy
