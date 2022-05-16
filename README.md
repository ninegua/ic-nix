# Build Internet Computer Projects with Nix

Supported projects:

 - [ic]
 - [sdk]
 - [motoko]

Supported platforms:

- [ ] Linux x86-64 (?)
- [x] Linux aarch-64
- [ ] OS X x86-64 (?)
- [x] OS X aarch-64

Feature:

- [x] Build with nix-build.
- [ ] Develop with nix-shell.
- [ ] Build and run all tests.
- [ ] Build release binaries on Github (static build if possible).

Note that this effort requires no nix support of a project unless it already has (and plans to continue) nix support.

**Usage**

Run `nix-build -A <project>` to build it, or `nix-shell -A <project>` to enter a nix shell.

[ic]: https://github.com/dfinity/ic
[sdk]: https://github.com/dfinity/sdk
[motoko]: https://github.com/dfinity/motoko
