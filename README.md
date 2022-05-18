# Build Internet Computer Projects with Nix

Supported projects:

 - [ic]
 - [sdk]
 - [motoko]

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
- [ ] Build and run all tests.
- [ ] Build release binaries on Github (static build if possible).

Note that this effort requires no nix support of a project unless it already has (and plans to continue) nix support.

Usage:

Run `nix-build -A <project>` to build it, or `nix-shell -A <project>.shell` to enter a nix shell.

[ic]: https://github.com/dfinity/ic
[sdk]: https://github.com/dfinity/sdk
[motoko]: https://github.com/dfinity/motoko
