VERSION?=$(shell git rev-parse --abbrev-ref HEAD)
SYSTEM?=$(subst ",,$(shell nix-instantiate --eval -E '(import <nixpkgs> {}).system'))
TARGETS=dfx-env ic-binaries-$(VERSION)-$(SYSTEM).tar.gz ic-canisters-$(VERSION)-wasm32.tar.gz

default:
	echo $(VERSION) $(SYSTEM) $(TARGETS)

all: $(TARGETS)

binaries: ic-binaries-$(VERSION)-$(SYSTEM).tar.gz

canisters: ic-canisters-$(VERSION)-wasm32.tar.gz

dfx-env:
	mkdir dfx-env

dfx-env.tar.gz: | dfx-env
	sed -e "s/\"20220520\"/\"$(VERSION)\"/" dfx-env.nix > dfx-env/default.nix
	tar -zcvf dfx-env.tar.gz dfx-env

ic-binaries-$(VERSION)-$(SYSTEM).tar.gz:
	tar -zcv -C $$(nix-build --pure release.nix --no-out-link -A binaries) --transform "s,^.,ic-binaries-$(VERSION)," -f $@ .

ic-canisters-$(VERSION)-wasm32.tar.gz:
	tar -zcv -C $$(nix-build --pure release.nix --no-out-link -A canisters) --transform "s,^.,ic-canisters-$(VERSION)," -f $@ .

.PHONY: binaries canisters default all

