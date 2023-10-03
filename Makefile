VERSION?=$(shell git rev-parse --abbrev-ref HEAD)
SYSTEM?=$(subst ",,$(shell nix-instantiate --eval -E '(import <nixpkgs> {}).system'))
TARGETS=dfx-env.tar.gz binaries canisters extensions

default:
	echo $(VERSION) $(SYSTEM) $(TARGETS)

all: $(TARGETS)

binaries: ic-binaries-$(VERSION)-$(SYSTEM).tar.gz

canisters: ic-canisters-$(VERSION)-wasm32.tar.gz

extensions: dfx-extensions-$(VERSION)-$(SYSTEM).tar.gz

dfx-env:
	mkdir dfx-env

dfx-env.tar.gz: | dfx-env
	sed -e "s/\"20220520\"/\"$(VERSION)\"/" dfx-env.nix > dfx-env/default.nix
	tar -zcvf dfx-env.tar.gz dfx-env

ic-binaries-$(VERSION)-$(SYSTEM).tar.gz:
	tar -zcv -C $$(nix-build --pure release.nix --no-out-link -A binaries) --transform "s,^.,ic-binaries-$(VERSION)," -f $@ .

ic-canisters-$(VERSION)-wasm32.tar.gz:
	tar -zcv -C $$(nix-build --pure release.nix --no-out-link -A canisters) --transform "s,^.,ic-canisters-$(VERSION)," -f $@ .

dfx-extensions-$(VERSION)-$(SYSTEM).tar.gz:
	tar -zcv -C $$(nix-build --pure release.nix --no-out-link -A extensions) --transform "s,^.,dfx-extensions-$(VERSION)," -f $@ .

subnet-replica-versions:
	curl https://ic-api.internetcomputer.org/api/v3/subnet-replica-versions?limit=1 -o $@

replica-rev: subnet-replica-versions
	cat $< | jq -r '.data[0].replica_version_id' > $@

update-sources-ic: nix/sources.nix replica-rev
	sed -i "0,/pin/{s/\"[^\"]*\"; # pin/\"$$(cat replica-rev)\"; # pin/}" $<

update-sources: nix/sources.nix update-sources-ic
	update-nix-fetchgit $<

clean:
	rm -rf dfx-env subnet-replica-versions replica-rev $(TARGETS)

.PHONY: update-sources binaries canisters extensions default all clean
