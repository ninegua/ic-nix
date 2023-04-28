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

subnet-replica-versions:
	curl https://ic-api.internetcomputer.org/api/v3/subnet-replica-versions?limit=1 -O

replica-rev: subnet-replica-versions
	cat $< | jq -r '.data[0].replica_version_id' > $@

update-sources-ic: nix/sources.nix replica-rev
	sed -i "0,/pin/{s/\"[^\"]*\"; # pin/\"$$(cat replica-rev)\"; # pin/}" $<

update-sources: nix/sources.nix update-sources-ic
	update-nix-fetchgit $<

.PHONY: update-sources binaries canisters default all
