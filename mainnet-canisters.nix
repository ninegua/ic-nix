{ pkgs, sources }:
with pkgs;
let
  json-content =
    builtins.readFile "${sources.ic}/mainnet-canister-revisions.json";
  revisions-data = builtins.fromJSON json-content;
  canisters = [ "registry" ];
  filenames = {
    bitcoin_testnet = "ic-btc-canister.wasm.gz";
    cycles_ledger = "cycles-ledger.wasm.gz";
    cycles_ledger_index = "ic-icrc1-index-ng-u256.wasm.gz";
    cycles_minting = "cycles-minting-canister.wasm.gz";
    dogecoin = "ic-doge-canister.wasm.gz";
    governance = "governance-canister.wasm.gz";
    governance_test = "governance-canister_test.wasm.gz";
    icp_index = "ic-icp-index-canister.wasm.gz";
    icp_ledger = "ledger-canister_notify-method.wasm.gz";
    internet_identity_backend = "internet_identity_production.wasm.gz";
    internet_identity_frontend = "internet_identity_frontend.wasm.gz";
    lifeline = "lifeline_canister.wasm.gz";
    migration = "migration-canister.wasm.gz";
    nns_dapp_test = "nns-dapp_test.wasm.gz";
    registry = "registry-canister.wasm.gz";
    root = "root-canister.wasm.gz";
    sns_aggregator_test = "sns_aggregator_dev.wasm.gz";
    sns_governance = "sns-governance-canister.wasm.gz";
    sns_ledger_archive = "ic-icrc1-archive.wasm.gz";
    sns_ledger = "ic-icrc1-ledger.wasm.gz";
    sns_ledger_index = "ic-icrc1-index-ng.wasm.gz";
    sns_root = "sns-root-canister.wasm.gz";
    sns_swap = "sns-swap-canister.wasm.gz";
    sns_wasm = "sns-wasm-canister.wasm.gz";
  };
  renames = {
    cycles_minting = "cycles-minting";
    governance_test = "governance-canister_test";
    icp_index = "index";
    icp_ledger = "ledger";
    sns_ledger_archive = "sns_archive";
    sns_ledger_index = "sns_index";
    sns_swap = "swap";
    sns_wasm = "sns-wasm";
  };
  repositories = {
    "cycles_ledger" = "dfinity/cycles-ledger";
    "internet_identity_backend" = "dfinity/internet-identity";
    "internet_identity_frontend" = "dfinity/internet-identity";
    "nns_dapp_test" = "dfinity/nns-dapp";
    "sns_aggregator_test" = "dfinity/nns-dapp";
    "bitcoin_testnet" = "dfinity/bitcoin-canister";
    "dogecoin" = "dfinity/dogecoin-canister";
  };
  downloads = lib.mapAttrsToList (name: filename:
    let
      key = if renames ? "${name}" then renames."${name}" else name;
      data = revisions-data."${key}";
      repository = repositories."${name}";
    in {
      name = lib.toUpper name + "_CANISTER_WASM_PATH";
      file = fetchurl {
        url = if data ? rev then
          "https://download.dfinity.systems/ic/${data.rev}/canisters/${filename}"
        else
          "https://github.com/${repository}/releases/download/${data.tag}/${filename}";
        sha256 = data.sha256;
      };
    }) filenames;
  mainnet-canisters = stdenv.mkDerivation {
    name = "mainnet-canisters";
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out
    '' + builtins.foldl' (acc: data:
      ''
        install -m 755 ${data.file} $out/
      '' + acc) "" downloads;
  };
  env = builtins.listToAttrs (builtins.map (data: {
    name = data.name;
    value = "${mainnet-canisters}/${builtins.baseNameOf data.file}";
  }) downloads);
in {
  inherit mainnet-canisters;
  env = env // { POCKET_IC_USE_LEGACY_ICP_INDEX_INIT_ARGS = "1"; };
}
