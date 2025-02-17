diff --git a/Cargo.lock b/Cargo.lock
index c01ed8066..75a6bb59e 100644
--- a/Cargo.lock
+++ b/Cargo.lock
@@ -727,18 +727,6 @@ version = "1.10.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "f61dac84819c6588b558454b194026eb1f09c293b9036ae9b159e74e73ab6cf9"
 
-[[package]]
-name = "cached"
-version = "0.41.0"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "ec6d20b3d24b6c74e2c5331d2d3d8d1976a9883c7da179aa851afa4c90d62e36"
-dependencies = [
- "hashbrown 0.12.3",
- "instant",
- "once_cell",
- "thiserror 1.0.69",
-]
-
 [[package]]
 name = "cached"
 version = "0.47.0"
@@ -773,7 +761,7 @@ version = "0.18.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "c878c71c2821aa2058722038a59a67583a4240524687c6028571c9b395ded61f"
 dependencies = [
- "darling 0.14.4",
+ "darling",
  "proc-macro2",
  "quote",
  "syn 1.0.109",
@@ -840,7 +828,7 @@ dependencies = [
  "candid",
  "codespan-reporting",
  "console",
- "convert_case 0.6.0",
+ "convert_case",
  "ctrlc",
  "dialoguer",
  "fake",
@@ -913,7 +901,6 @@ dependencies = [
  "iana-time-zone",
  "js-sys",
  "num-traits",
- "serde",
  "wasm-bindgen",
  "windows-targets",
 ]
@@ -1022,42 +1009,6 @@ dependencies = [
  "windows-sys 0.59.0",
 ]
 
-[[package]]
-name = "comparable"
-version = "0.5.5"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "8606f9aa5b5a2df738584b139c79413d0c1545ed0ffd16e76e0944d1de7388c0"
-dependencies = [
- "comparable_derive",
- "comparable_helper",
- "pretty_assertions",
- "serde",
-]
-
-[[package]]
-name = "comparable_derive"
-version = "0.5.5"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "41f36ea7383b9a2a9ae0a4e225d8a9c1c3aeadde78c59cdc35bad5c02b4dad01"
-dependencies = [
- "convert_case 0.4.0",
- "proc-macro2",
- "quote",
- "syn 1.0.109",
-]
-
-[[package]]
-name = "comparable_helper"
-version = "0.5.5"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "71c9b60259084f32c14d32476f3a299b4997e3c186e1473bd972ff8a8c83d1b4"
-dependencies = [
- "convert_case 0.6.0",
- "proc-macro2",
- "quote",
- "syn 1.0.109",
-]
-
 [[package]]
 name = "concurrent-queue"
 version = "2.5.0"
@@ -1080,28 +1031,12 @@ dependencies = [
  "windows-sys 0.59.0",
 ]
 
-[[package]]
-name = "console_error_panic_hook"
-version = "0.1.7"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "a06aeb73f470f66dcdbf7223caeebb85984942f22f1adb2a088cf9668146bbbc"
-dependencies = [
- "cfg-if",
- "wasm-bindgen",
-]
-
 [[package]]
 name = "const-oid"
 version = "0.9.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "c2459377285ad874054d797f3ccebf984978aa39129f6eafde5cdc8315b612f8"
 
-[[package]]
-name = "convert_case"
-version = "0.4.0"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "6245d59a3e82a7fc217c5828a6692dbc6dfb63a0c8c90495621f7b9d79704a0e"
-
 [[package]]
 name = "convert_case"
 version = "0.6.0"
@@ -1276,7 +1211,7 @@ version = "3.4.5"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "90eeab0aa92f3f9b4e87f258c72b139c207d251f9cbc1080a0086b86a8870dd3"
 dependencies = [
- "nix 0.29.0",
+ "nix",
  "windows-sys 0.59.0",
 ]
 
@@ -1293,15 +1228,6 @@ dependencies = [
  "zeroize",
 ]
 
-[[package]]
-name = "cvt"
-version = "0.1.2"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "d2ae9bf77fbf2d39ef573205d554d87e86c12f1994e9ea335b0651b9b278bcf1"
-dependencies = [
- "cfg-if",
-]
-
 [[package]]
 name = "cxx"
 version = "1.0.137"
@@ -1361,38 +1287,14 @@ dependencies = [
  "syn 2.0.98",
 ]
 
-[[package]]
-name = "darling"
-version = "0.13.4"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "a01d95850c592940db9b8194bc39f4bc0e89dee5c4265e4b1807c34a9aba453c"
-dependencies = [
- "darling_core 0.13.4",
- "darling_macro 0.13.4",
-]
-
 [[package]]
 name = "darling"
 version = "0.14.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "7b750cb3417fd1b327431a470f388520309479ab0bf5e323505daf0290cd3850"
 dependencies = [
- "darling_core 0.14.4",
- "darling_macro 0.14.4",
-]
-
-[[package]]
-name = "darling_core"
-version = "0.13.4"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "859d65a907b6852c9361e3185c862aae7fafd2887876799fa55f5f99dc40d610"
-dependencies = [
- "fnv",
- "ident_case",
- "proc-macro2",
- "quote",
- "strsim 0.10.0",
- "syn 1.0.109",
+ "darling_core",
+ "darling_macro",
 ]
 
 [[package]]
@@ -1409,24 +1311,13 @@ dependencies = [
  "syn 1.0.109",
 ]
 
-[[package]]
-name = "darling_macro"
-version = "0.13.4"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "9c972679f83bdf9c42bd905396b6c3588a843a17f0f16dfcfa3e2c5d57441835"
-dependencies = [
- "darling_core 0.13.4",
- "quote",
- "syn 1.0.109",
-]
-
 [[package]]
 name = "darling_macro"
 version = "0.14.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "a4aab4dbc9f7611d8b55048a3a16d2d010c2c8334e46304b40ac1cc14bf3b48e"
 dependencies = [
- "darling_core 0.14.4",
+ "darling_core",
  "quote",
  "syn 1.0.109",
 ]
@@ -1517,16 +1408,6 @@ dependencies = [
  "syn 1.0.109",
 ]
 
-[[package]]
-name = "derive_more"
-version = "0.99.8-alpha.0"
-source = "git+https://github.com/dfinity-lab/derive_more?rev=9f1b894e6fde640da4e9ea71a8fc0e4dd98d01da#9f1b894e6fde640da4e9ea71a8fc0e4dd98d01da"
-dependencies = [
- "proc-macro2",
- "quote",
- "syn 1.0.109",
-]
-
 [[package]]
 name = "deunicode"
 version = "1.6.0"
@@ -1573,7 +1454,7 @@ dependencies = [
  "ic-asset",
  "ic-cdk",
  "ic-identity-hsm",
- "ic-utils 0.39.3",
+ "ic-utils",
  "ic-wasm",
  "icrc-ledger-types",
  "idl2json",
@@ -1648,7 +1529,7 @@ dependencies = [
  "humantime-serde",
  "ic-agent",
  "ic-identity-hsm",
- "ic-utils 0.39.3",
+ "ic-utils",
  "itertools 0.10.5",
  "k256 0.11.6",
  "keyring",
@@ -1722,12 +1603,6 @@ dependencies = [
  "zeroize",
 ]
 
-[[package]]
-name = "diff"
-version = "0.1.13"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "56254986775e3233ffa9c4d7d3faaf6d36a2c09d30b20687e9f88bc8bafc16c8"
-
 [[package]]
 name = "digest"
 version = "0.9.0"
@@ -2699,7 +2574,7 @@ dependencies = [
  "http 1.2.0",
  "http-body 1.0.1",
  "ic-certification 3.0.2",
- "ic-transport-types 0.39.3 (git+https://github.com/dfinity/agent-rs?rev=9ebf6314ce2fcb36772c7d81d6d414b4628d6101)",
+ "ic-transport-types",
  "ic-verify-bls-signature",
  "k256 0.13.4",
  "leb128",
@@ -2739,7 +2614,7 @@ dependencies = [
  "globset",
  "hex",
  "ic-agent",
- "ic-utils 0.39.3",
+ "ic-utils",
  "itertools 0.10.5",
  "json5",
  "mime",
@@ -2757,50 +2632,6 @@ dependencies = [
  "walkdir",
 ]
 
-[[package]]
-name = "ic-base-types"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "base32",
- "byte-unit",
- "bytes",
- "candid",
- "comparable",
- "crc32fast",
- "ic-crypto-sha2",
- "ic-protobuf",
- "ic-stable-structures 0.5.6",
- "phantom_newtype",
- "prost",
- "serde",
- "strum 0.25.0",
- "strum_macros 0.25.3",
-]
-
-[[package]]
-name = "ic-btc-interface"
-version = "0.1.0"
-source = "git+https://github.com/dfinity/bitcoin-canister?rev=9b239d1d67253eb14a35be6061e3967d5ec9db9d#9b239d1d67253eb14a35be6061e3967d5ec9db9d"
-dependencies = [
- "candid",
- "serde",
- "serde_bytes",
-]
-
-[[package]]
-name = "ic-btc-types-internal"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "candid",
- "ic-btc-interface",
- "ic-error-types",
- "ic-protobuf",
- "serde",
- "serde_bytes",
-]
-
 [[package]]
 name = "ic-cbor"
 version = "2.6.0"
@@ -2860,17 +2691,6 @@ dependencies = [
  "thiserror 1.0.69",
 ]
 
-[[package]]
-name = "ic-certification"
-version = "2.3.0"
-source = "git+https://github.com/dfinity/response-verification.git?rev=a65009624b61736df6d2dc17756bdbd02a84f599#a65009624b61736df6d2dc17756bdbd02a84f599"
-dependencies = [
- "hex",
- "serde",
- "serde_bytes",
- "sha2 0.10.8",
-]
-
 [[package]]
 name = "ic-certification"
 version = "2.6.0"
@@ -2895,30 +2715,6 @@ dependencies = [
  "sha2 0.10.8",
 ]
 
-[[package]]
-name = "ic-certification-testing"
-version = "2.3.0"
-source = "git+https://github.com/dfinity/response-verification.git?rev=a65009624b61736df6d2dc17756bdbd02a84f599#a65009624b61736df6d2dc17756bdbd02a84f599"
-dependencies = [
- "console_error_panic_hook",
- "getrandom 0.2.15",
- "ic-crypto-internal-seed",
- "ic-crypto-internal-threshold-sig-bls12381",
- "ic-crypto-internal-types",
- "ic-crypto-tree-hash",
- "ic-types",
- "js-sys",
- "leb128",
- "log",
- "rand",
- "serde",
- "serde-wasm-bindgen",
- "serde_cbor",
- "thiserror 1.0.69",
- "wasm-bindgen",
- "wasm-bindgen-console-logger",
-]
-
 [[package]]
 name = "ic-certified-assets"
 version = "0.2.5"
@@ -2930,12 +2726,10 @@ dependencies = [
  "hex",
  "ic-cdk",
  "ic-certification 2.6.0",
- "ic-certification-testing",
  "ic-crypto-tree-hash",
  "ic-http-certification",
  "ic-representation-independent-hash",
  "ic-response-verification",
- "ic-response-verification-test-utils",
  "itertools 0.10.5",
  "num-traits",
  "percent-encoding",
@@ -2945,52 +2739,6 @@ dependencies = [
  "sha2 0.10.8",
 ]
 
-[[package]]
-name = "ic-constants"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-
-[[package]]
-name = "ic-crypto-getrandom-for-wasm"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "getrandom 0.2.15",
-]
-
-[[package]]
-name = "ic-crypto-internal-bls12-381-type"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "hex",
- "ic-crypto-getrandom-for-wasm",
- "ic_bls12_381 0.8.0",
- "itertools 0.12.1",
- "lazy_static",
- "pairing 0.22.0",
- "paste",
- "rand",
- "rand_chacha",
- "sha2 0.9.9",
- "subtle",
- "zeroize",
-]
-
-[[package]]
-name = "ic-crypto-internal-seed"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "hex",
- "ic-crypto-sha2",
- "ic-types",
- "rand",
- "rand_chacha",
- "serde",
- "zeroize",
-]
-
 [[package]]
 name = "ic-crypto-internal-sha2"
 version = "0.9.0"
@@ -2999,41 +2747,6 @@ dependencies = [
  "sha2 0.10.8",
 ]
 
-[[package]]
-name = "ic-crypto-internal-threshold-sig-bls12381"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "base64 0.13.1",
- "cached 0.41.0",
- "hex",
- "ic-crypto-internal-bls12-381-type",
- "ic-crypto-internal-seed",
- "ic-crypto-internal-threshold-sig-bls12381-der",
- "ic-crypto-internal-types",
- "ic-crypto-secrets-containers",
- "ic-crypto-sha2",
- "ic-types",
- "lazy_static",
- "parking_lot 0.12.3",
- "rand",
- "rand_chacha",
- "serde",
- "serde_bytes",
- "serde_cbor",
- "strum_macros 0.25.3",
- "subtle",
- "zeroize",
-]
-
-[[package]]
-name = "ic-crypto-internal-threshold-sig-bls12381-der"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "simple_asn1",
-]
-
 [[package]]
 name = "ic-crypto-internal-types"
 version = "0.9.0"
@@ -3051,15 +2764,6 @@ dependencies = [
  "zeroize",
 ]
 
-[[package]]
-name = "ic-crypto-secrets-containers"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "serde",
- "zeroize",
-]
-
 [[package]]
 name = "ic-crypto-sha2"
 version = "0.9.0"
@@ -3082,17 +2786,6 @@ dependencies = [
  "thiserror 1.0.69",
 ]
 
-[[package]]
-name = "ic-error-types"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "ic-utils 0.9.0",
- "serde",
- "strum 0.25.0",
- "strum_macros 0.25.3",
-]
-
 [[package]]
 name = "ic-frontend-canister"
 version = "0.2.5"
@@ -3117,25 +2810,6 @@ dependencies = [
  "urlencoding",
 ]
 
-[[package]]
-name = "ic-ic00-types"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "candid",
- "ic-base-types",
- "ic-btc-interface",
- "ic-btc-types-internal",
- "ic-error-types",
- "ic-protobuf",
- "num-traits",
- "serde",
- "serde_bytes",
- "serde_cbor",
- "strum 0.25.0",
- "strum_macros 0.25.3",
-]
-
 [[package]]
 name = "ic-identity-hsm"
 version = "0.39.3"
@@ -3198,29 +2872,6 @@ dependencies = [
  "urlencoding",
 ]
 
-[[package]]
-name = "ic-response-verification-test-utils"
-version = "2.3.0"
-source = "git+https://github.com/dfinity/response-verification.git?rev=a65009624b61736df6d2dc17756bdbd02a84f599#a65009624b61736df6d2dc17756bdbd02a84f599"
-dependencies = [
- "base64 0.21.7",
- "flate2",
- "hex",
- "ic-certification 2.3.0",
- "ic-certification-testing",
- "ic-types",
- "leb128",
- "serde",
- "serde_cbor",
- "sha2 0.10.8",
-]
-
-[[package]]
-name = "ic-stable-structures"
-version = "0.5.6"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "95dce29e3ceb0e6da3e78b305d95365530f2efd2146ca18590c0ef3aa6038568"
-
 [[package]]
 name = "ic-stable-structures"
 version = "0.6.7"
@@ -3230,39 +2881,6 @@ dependencies = [
  "ic_principal",
 ]
 
-[[package]]
-name = "ic-sys"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "hex",
- "ic-crypto-sha2",
- "lazy_static",
- "libc",
- "nix 0.24.3",
- "phantom_newtype",
- "tokio",
- "wsl",
-]
-
-[[package]]
-name = "ic-transport-types"
-version = "0.39.3"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "979ee7bee5a67150a4c090fb012c93c294a528b4a867bad9a15cc6d01cb4227f"
-dependencies = [
- "candid",
- "hex",
- "ic-certification 3.0.2",
- "leb128",
- "serde",
- "serde_bytes",
- "serde_cbor",
- "serde_repr",
- "sha2 0.10.8",
- "thiserror 2.0.11",
-]
-
 [[package]]
 name = "ic-transport-types"
 version = "0.39.3"
@@ -3280,59 +2898,6 @@ dependencies = [
  "thiserror 2.0.11",
 ]
 
-[[package]]
-name = "ic-types"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "base64 0.13.1",
- "bincode",
- "candid",
- "chrono",
- "derive_more",
- "hex",
- "ic-base-types",
- "ic-btc-types-internal",
- "ic-constants",
- "ic-crypto-internal-types",
- "ic-crypto-sha2",
- "ic-crypto-tree-hash",
- "ic-error-types",
- "ic-ic00-types",
- "ic-protobuf",
- "ic-utils 0.9.0",
- "maplit",
- "once_cell",
- "phantom_newtype",
- "prost",
- "serde",
- "serde_bytes",
- "serde_cbor",
- "serde_json",
- "serde_with",
- "strum 0.25.0",
- "strum_macros 0.25.3",
- "thiserror 1.0.69",
- "thousands",
-]
-
-[[package]]
-name = "ic-utils"
-version = "0.9.0"
-source = "git+https://github.com/dfinity/ic.git?rev=1290256484f59c3d950c5e9a098e97383b248ad6#1290256484f59c3d950c5e9a098e97383b248ad6"
-dependencies = [
- "cvt",
- "hex",
- "ic-sys",
- "libc",
- "nix 0.24.3",
- "prost",
- "rand",
- "scoped_threadpool",
- "serde",
- "thiserror 1.0.69",
-]
-
 [[package]]
 name = "ic-utils"
 version = "0.39.3"
@@ -3361,9 +2926,9 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "d420b25c0091059f6c3c23a21427a81915e6e0aca3b79e0d403ed767f286a3b9"
 dependencies = [
  "hex",
- "ic_bls12_381 0.10.0",
+ "ic_bls12_381",
  "lazy_static",
- "pairing 0.23.0",
+ "pairing",
  "rand",
  "sha2 0.10.8",
 ]
@@ -3393,21 +2958,6 @@ version = "0.21.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "a54b5297861c651551676e8c43df805dad175cc33bc97dbd992edbbb85dcbcdf"
 
-[[package]]
-name = "ic_bls12_381"
-version = "0.8.0"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "c682cb199cd8fcb582a6023325d571a6464edda26c8063fe04b6f6082a1a363c"
-dependencies = [
- "digest 0.9.0",
- "ff 0.12.1",
- "group 0.12.1",
- "pairing 0.22.0",
- "rand_core",
- "subtle",
- "zeroize",
-]
-
 [[package]]
 name = "ic_bls12_381"
 version = "0.10.0"
@@ -3417,7 +2967,7 @@ dependencies = [
  "digest 0.10.7",
  "ff 0.13.0",
  "group 0.13.0",
- "pairing 0.23.0",
+ "pairing",
  "rand_core",
  "subtle",
 ]
@@ -3458,7 +3008,7 @@ dependencies = [
  "candid",
  "crc32fast",
  "hex",
- "ic-stable-structures 0.6.7",
+ "ic-stable-structures",
  "icrc-cbor",
  "itertools 0.12.1",
  "minicbor",
@@ -3602,7 +3152,7 @@ dependencies = [
  "humantime",
  "ic-agent",
  "ic-asset",
- "ic-utils 0.39.3",
+ "ic-utils",
  "libflate 1.4.0",
  "num-traits",
  "pem 1.1.1",
@@ -4129,15 +3679,6 @@ version = "2.7.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3"
 
-[[package]]
-name = "memoffset"
-version = "0.6.5"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "5aa361d4faea93603064a027415f07bd8e1d5c88c9fbf68bf56a285428fd79ce"
-dependencies = [
- "autocfg",
-]
-
 [[package]]
 name = "mime"
 version = "0.3.17"
@@ -4230,18 +3771,6 @@ version = "1.0.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "650eef8c711430f1a879fdd01d4745a7deea475becfb90269c06775983bbf086"
 
-[[package]]
-name = "nix"
-version = "0.24.3"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "fa52e972a9a719cecb6864fb88568781eb706bac2cd1d4f04a648542dbf78069"
-dependencies = [
- "bitflags 1.3.2",
- "cfg-if",
- "libc",
- "memoffset",
-]
-
 [[package]]
 name = "nix"
 version = "0.29.0"
@@ -4503,15 +4032,6 @@ dependencies = [
  "sha2 0.10.8",
 ]
 
-[[package]]
-name = "pairing"
-version = "0.22.0"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "135590d8bdba2b31346f9cd1fb2a912329f5135e832a4f422942eb6ead8b6b3b"
-dependencies = [
- "group 0.12.1",
-]
-
 [[package]]
 name = "pairing"
 version = "0.23.0"
@@ -4815,7 +4335,7 @@ dependencies = [
  "candid",
  "hex",
  "ic-certification 3.0.2",
- "ic-transport-types 0.39.3 (registry+https://github.com/rust-lang/crates.io-index)",
+ "ic-transport-types",
  "reqwest",
  "schemars",
  "serde",
@@ -4896,16 +4416,6 @@ dependencies = [
  "unicode-width 0.1.14",
 ]
 
-[[package]]
-name = "pretty_assertions"
-version = "1.4.1"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "3ae130e2f271fbc2ac3a40fb1d07180839cdbbe443c7a27e1e3c13c5cac0116d"
-dependencies = [
- "diff",
- "yansi",
-]
-
 [[package]]
 name = "primeorder"
 version = "0.13.6"
@@ -5559,12 +5069,6 @@ dependencies = [
  "syn 2.0.98",
 ]
 
-[[package]]
-name = "scoped_threadpool"
-version = "0.1.9"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "1d51f5df5af43ab3f1360b429fa5e0152ac5ce8c0bd6485cae490332e96846a8"
-
 [[package]]
 name = "scopeguard"
 version = "1.2.0"
@@ -5675,17 +5179,6 @@ dependencies = [
  "serde_derive",
 ]
 
-[[package]]
-name = "serde-wasm-bindgen"
-version = "0.5.0"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "f3b143e2833c57ab9ad3ea280d21fd34e285a42837aeb0ee301f4f41890fa00e"
-dependencies = [
- "js-sys",
- "serde",
- "wasm-bindgen",
-]
-
 [[package]]
 name = "serde_bytes"
 version = "0.11.15"
@@ -5795,28 +5288,6 @@ dependencies = [
  "serde",
 ]
 
-[[package]]
-name = "serde_with"
-version = "1.14.0"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "678b5a069e50bf00ecd22d0cd8ddf7c236f68581b03db652061ed5eb13a312ff"
-dependencies = [
- "serde",
- "serde_with_macros",
-]
-
-[[package]]
-name = "serde_with_macros"
-version = "1.5.2"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e182d6ec6f05393cc0e5ed1bf81ad6db3a8feedf8ee515ecdd369809bcce8082"
-dependencies = [
- "darling 0.13.4",
- "proc-macro2",
- "quote",
- "syn 1.0.109",
-]
-
 [[package]]
 name = "sha2"
 version = "0.9.9"
@@ -6326,12 +5797,6 @@ dependencies = [
  "syn 2.0.98",
 ]
 
-[[package]]
-name = "thousands"
-version = "0.2.0"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "3bf63baf9f5039dadc247375c29eb13706706cfde997d0330d05aa63a77d8820"
-
 [[package]]
 name = "thread_local"
 version = "1.1.8"
@@ -6921,16 +6386,6 @@ dependencies = [
  "wasm-bindgen-shared",
 ]
 
-[[package]]
-name = "wasm-bindgen-console-logger"
-version = "0.1.1"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "7530a275e7faf7b5b83aabdf78244fb8d9a68a2ec4b26935a05ecc0c9b0185ed"
-dependencies = [
- "log",
- "wasm-bindgen",
-]
-
 [[package]]
 name = "wasm-bindgen-futures"
 version = "0.4.50"
@@ -7290,12 +6745,6 @@ version = "0.5.5"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "1e9df38ee2d2c3c5948ea468a8406ff0db0b29ae1ffde1bcf20ef305bcc95c51"
 
-[[package]]
-name = "wsl"
-version = "0.1.0"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "f8dab7ac864710bdea6594becbea5b5050333cf34fefb0dc319567eb347950d4"
-
 [[package]]
 name = "wslpath"
 version = "0.0.2"
@@ -7322,12 +6771,6 @@ dependencies = [
  "rustix",
 ]
 
-[[package]]
-name = "yansi"
-version = "1.0.1"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "cfe53a6657fd280eaa890a3bc59152892ffa3e30101319d168b781ed6529b049"
-
 [[package]]
 name = "yoke"
 version = "0.7.5"
diff --git a/Cargo.toml b/Cargo.toml
index b56fdd4b5..664cc1cde 100644
--- a/Cargo.toml
+++ b/Cargo.toml
@@ -91,3 +91,6 @@ opt-level = 3
 
 [profile.release.package.ic-frontend-canister]
 opt-level = 'z'
+
+[patch.crates-io]
+ic-transport-types = { git = "https://github.com/dfinity/agent-rs", rev = "9ebf6314ce2fcb36772c7d81d6d414b4628d6101" }
diff --git a/src/canisters/frontend/ic-certified-assets/Cargo.toml b/src/canisters/frontend/ic-certified-assets/Cargo.toml
index 8ba4baadf..5daa24157 100644
--- a/src/canisters/frontend/ic-certified-assets/Cargo.toml
+++ b/src/canisters/frontend/ic-certified-assets/Cargo.toml
@@ -31,6 +31,4 @@ percent-encoding = "2.3.1"
 ic-http-certification = "2.3.0"
 candid_parser.workspace = true
 anyhow.workspace = true
-ic-response-verification-test-utils = { git = "https://github.com/dfinity/response-verification.git", rev = "a65009624b61736df6d2dc17756bdbd02a84f599" }
-ic-certification-testing = { git = "https://github.com/dfinity/response-verification.git", rev = "a65009624b61736df6d2dc17756bdbd02a84f599" }
 ic-crypto-tree-hash = { git = "https://github.com/dfinity/ic.git", rev = "1290256484f59c3d950c5e9a098e97383b248ad6" }
diff --git a/src/dfx/src/commands/start.rs b/src/dfx/src/commands/start.rs
index dbe03ec14..73be86e0d 100644
--- a/src/dfx/src/commands/start.rs
+++ b/src/dfx/src/commands/start.rs
@@ -245,8 +245,7 @@ pub fn exec(
         empty_writable_path(local_server_descriptor.canister_http_adapter_config_path())?;
     let pocketic_proxy_pid_file_path =
         empty_writable_path(local_server_descriptor.pocketic_proxy_pid_path())?;
-    let pocketic_proxy_port_file_path =
-        empty_writable_path(local_server_descriptor.pocketic_proxy_port_path())?;
+    let pocketic_proxy_port_file_path = local_server_descriptor.pocketic_proxy_port_path();
     let webserver_port_path = empty_writable_path(local_server_descriptor.webserver_port_path())?;
 
     let previous_config_path = local_server_descriptor.effective_config_path();
