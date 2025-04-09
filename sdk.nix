diff --git a/Cargo.lock b/Cargo.lock
index 6149e9b5..6b0c30f3 100644
--- a/Cargo.lock
+++ b/Cargo.lock
@@ -42,7 +42,7 @@ dependencies = [
  "actix-macros",
  "actix-rt",
  "actix_derive",
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
  "bytes",
  "crossbeam-channel",
  "futures-core",
@@ -65,7 +65,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "e01ed3140b2f8d422c68afa1ed2e85d996ea619c988ac834d255db32138655cb"
 dependencies = [
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -86,7 +86,7 @@ checksum = "b6ac1e58cded18cb28ddc17143c4dea5345b3ad575e14f32f66e4054a56eb271"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -165,7 +165,7 @@ dependencies = [
  "cfg-if",
  "once_cell",
  "version_check",
- "zerocopy",
+ "zerocopy 0.7.35",
 ]
 
 [[package]]
@@ -274,9 +274,9 @@ dependencies = [
 
 [[package]]
 name = "anyhow"
-version = "1.0.95"
+version = "1.0.97"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "34ac096ce696dc2fcabef30516bb13c0a68a11d30131d3df6f04711467681b04"
+checksum = "dcfed56ad506cb2c684a14971b8861fdc3baaaae314b9e5f9bb532cbe3ba7a4f"
 
 [[package]]
 name = "apply-patch"
@@ -370,13 +370,13 @@ dependencies = [
 
 [[package]]
 name = "async-trait"
-version = "0.1.86"
+version = "0.1.88"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "644dd749086bf3771a2fbc5f256fdb982d53f011c7d5d560304eafeecebce79d"
+checksum = "e539d3fca749fcee5236ab05e93a52867dd549cc157c8cb7f99595f3cedffdb5"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -410,7 +410,7 @@ dependencies = [
  "getrandom 0.2.15",
  "instant",
  "pin-project-lite",
- "rand",
+ "rand 0.8.5",
  "tokio",
 ]
 
@@ -426,7 +426,7 @@ dependencies = [
  "miniz_oxide",
  "object",
  "rustc-demangle",
- "windows-targets",
+ "windows-targets 0.52.6",
 ]
 
 [[package]]
@@ -467,9 +467,9 @@ checksum = "72b3254f16251a8381aa12e40e3c4d2f0199f8c6508fbecb9d91f575e0fbb8c6"
 
 [[package]]
 name = "base64ct"
-version = "1.6.0"
+version = "1.7.3"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "8c3c1a368f70d6cf7302d78f8f7093da241fb8e8807c05cc9e51a125895a6d5b"
+checksum = "89e25b6adfb930f02d1981565a6e5d9c547ac15a96606256d3b59040e5cd4ca3"
 
 [[package]]
 name = "beef"
@@ -520,7 +520,7 @@ dependencies = [
  "k256 0.11.6",
  "once_cell",
  "pbkdf2",
- "rand_core",
+ "rand_core 0.6.4",
  "ripemd",
  "sha2 0.10.8",
  "subtle",
@@ -565,9 +565,9 @@ checksum = "bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a"
 
 [[package]]
 name = "bitflags"
-version = "2.8.0"
+version = "2.9.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "8f68f53c83ab957f72c32642f3868eec03eb974d1fb82e453128456482613d36"
+checksum = "5c8214115b7bf84099f1309324e63141d4c5d7cc26862f97a0a857dbefe165bd"
 
 [[package]]
 name = "bitvec"
@@ -610,9 +610,9 @@ dependencies = [
 
 [[package]]
 name = "borsh"
-version = "1.5.5"
+version = "1.5.7"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "5430e3be710b68d984d1391c854eb431a9d548640711faa54eecb1df93db91cc"
+checksum = "ad8646f98db542e39fc66e68a20b2144f6a732636df7c2354e74645faaa433ce"
 dependencies = [
  "borsh-derive",
  "cfg_aliases",
@@ -620,15 +620,15 @@ dependencies = [
 
 [[package]]
 name = "borsh-derive"
-version = "1.5.5"
+version = "1.5.7"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "f8b668d39970baad5356d7c83a86fee3a539e6f93bf6764c97368243e17a0487"
+checksum = "fdd1d3c0c2f5833f22386f252fe8ed005c7f59fdcddeef025c01b4c3b9fd9ac3"
 dependencies = [
  "once_cell",
  "proc-macro-crate",
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -663,9 +663,9 @@ dependencies = [
 
 [[package]]
 name = "bstr"
-version = "1.11.3"
+version = "1.12.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "531a9155a481e2ee699d4f98f43c0ca4ff8ee1bfd55c31e9e98fb29d2b176fe0"
+checksum = "234113d19d0d7d613b40e86fb654acf958910802bcceab913a4f9e7cda03b1a4"
 dependencies = [
  "memchr",
  "serde",
@@ -723,21 +723,9 @@ checksum = "1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b"
 
 [[package]]
 name = "bytes"
-version = "1.10.0"
+version = "1.10.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "f61dac84819c6588b558454b194026eb1f09c293b9036ae9b159e74e73ab6cf9"
-
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
+checksum = "d71b6127be86fdcfddb610f7182ac57211d4b18a3e9c82eb2d17662f2227ad6a"
 
 [[package]]
 name = "cached"
@@ -773,7 +761,7 @@ version = "0.18.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "c878c71c2821aa2058722038a59a67583a4240524687c6028571c9b395ded61f"
 dependencies = [
- "darling 0.14.4",
+ "darling",
  "proc-macro2",
  "quote",
  "syn 1.0.109",
@@ -810,7 +798,7 @@ dependencies = [
  "num-bigint 0.4.6",
  "num-traits",
  "paste",
- "pretty 0.12.3",
+ "pretty 0.12.4",
  "serde",
  "serde_bytes",
  "stacker",
@@ -826,7 +814,7 @@ dependencies = [
  "lazy_static",
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -838,9 +826,9 @@ dependencies = [
  "anyhow",
  "arbitrary",
  "candid",
- "codespan-reporting",
+ "codespan-reporting 0.11.1",
  "console",
- "convert_case 0.6.0",
+ "convert_case",
  "ctrlc",
  "dialoguer",
  "fake",
@@ -850,8 +838,8 @@ dependencies = [
  "logos",
  "num-bigint 0.4.6",
  "num-traits",
- "pretty 0.12.3",
- "rand",
+ "pretty 0.12.4",
+ "rand 0.8.5",
  "serde",
  "serde_dhall",
  "thiserror 1.0.69",
@@ -882,9 +870,9 @@ dependencies = [
 
 [[package]]
 name = "cc"
-version = "1.2.11"
+version = "1.2.18"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e4730490333d58093109dc02c23174c3f4d490998c3fed3cc8e82d57afedb9cf"
+checksum = "525046617d8376e3db1deffb079e91cef90a89fc3ca5c185bbf8c9ecdd15cd5c"
 dependencies = [
  "jobserver",
  "libc",
@@ -905,17 +893,16 @@ checksum = "613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724"
 
 [[package]]
 name = "chrono"
-version = "0.4.39"
+version = "0.4.40"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "7e36cc9d416881d2e24f9a963be5fb1cd90966419ac844274161d10488b3e825"
+checksum = "1a7964611d71df112cb1730f2ee67324fcf4d0fc6606acbbe9bfe06df124637c"
 dependencies = [
  "android-tzdata",
  "iana-time-zone",
  "js-sys",
  "num-traits",
- "serde",
  "wasm-bindgen",
- "windows-targets",
+ "windows-link",
 ]
 
 [[package]]
@@ -939,9 +926,9 @@ dependencies = [
 
 [[package]]
 name = "clap"
-version = "4.5.27"
+version = "4.5.35"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "769b0145982b4b48713e01ec42d61614425f27b7058bda7180a3a41f30104796"
+checksum = "d8aa86934b44c19c50f87cc2790e19f54f7a67aedb64101c2e1a2e5ecfb73944"
 dependencies = [
  "clap_builder",
  "clap_derive",
@@ -949,9 +936,9 @@ dependencies = [
 
 [[package]]
 name = "clap_builder"
-version = "4.5.27"
+version = "4.5.35"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "1b26884eb4b57140e4d2d93652abfa49498b938b3c9179f9fc487b0acc3edad7"
+checksum = "2414dbb2dd0695280da6ea9261e327479e9d37b0630f6b53ba2a11c60c679fd9"
 dependencies = [
  "anstream",
  "anstyle",
@@ -962,23 +949,23 @@ dependencies = [
 
 [[package]]
 name = "clap_complete"
-version = "4.5.44"
+version = "4.5.47"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "375f9d8255adeeedd51053574fd8d4ba875ea5fa558e86617b07f09f1680c8b6"
+checksum = "c06f5378ea264ad4f82bbc826628b5aad714a75abf6ece087e923010eb937fb6"
 dependencies = [
  "clap",
 ]
 
 [[package]]
 name = "clap_derive"
-version = "4.5.24"
+version = "4.5.32"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "54b755194d6389280185988721fffba69495eed5ee9feeee9a599b53db80318c"
+checksum = "09176aae279615badda0765c0c0b3f6ed53f4709118af73cf4655d85d1530cd7"
 dependencies = [
  "heck 0.5.0",
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -989,9 +976,9 @@ checksum = "f46ad14479a25103f283c0f10005961cf086d8dc42205bb44c46ac563475dca6"
 
 [[package]]
 name = "cmake"
-version = "0.1.53"
+version = "0.1.54"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e24a03c8b52922d68a1589ad61032f2c1aa5a8158d2aa0d93c6e9534944bbad6"
+checksum = "e7caa3f9de89ddbe2c607f4101924c5abec803763ae9534e4f4d7d8f84aa81f0"
 dependencies = [
  "cc",
 ]
@@ -1006,6 +993,17 @@ dependencies = [
  "unicode-width 0.1.14",
 ]
 
+[[package]]
+name = "codespan-reporting"
+version = "0.12.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "fe6d2e5af09e8c8ad56c969f2157a3d4238cebc7c55f0a517728c38f7b200f81"
+dependencies = [
+ "serde",
+ "termcolor",
+ "unicode-width 0.2.0",
+]
+
 [[package]]
 name = "colorchoice"
 version = "1.0.3"
@@ -1022,42 +1020,6 @@ dependencies = [
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
@@ -1069,9 +1031,9 @@ dependencies = [
 
 [[package]]
 name = "console"
-version = "0.15.10"
+version = "0.15.11"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "ea3c6ecd8059b57859df5c69830340ed3c41d30e3da0c1cbed90a96ac853041b"
+checksum = "054ccb5b10f9f2cbf51eb355ca1d05c2d279ce1804688d0db74b4733a5aeafd8"
 dependencies = [
  "encode_unicode",
  "libc",
@@ -1080,28 +1042,12 @@ dependencies = [
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
@@ -1179,9 +1125,9 @@ dependencies = [
 
 [[package]]
 name = "crossbeam-channel"
-version = "0.5.14"
+version = "0.5.15"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "06ba6d68e24814cb8de6bb986db8222d3a027d15872cabc0d18817bc3c0e4471"
+checksum = "82b8f8f868b36967f9606790d1903570de9ceaf870a7bf9fbbd3016d636a2cb2"
 dependencies = [
  "crossbeam-utils",
 ]
@@ -1233,7 +1179,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "ef2b4b23cddf68b89b8f8069890e8c270d54e2d5fe1b143820234805e4cb17ef"
 dependencies = [
  "generic-array",
- "rand_core",
+ "rand_core 0.6.4",
  "subtle",
  "zeroize",
 ]
@@ -1245,7 +1191,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "0dc92fb57ca44df6db8059111ab3af99a63d5d0f8375d9972e319a379c6bab76"
 dependencies = [
  "generic-array",
- "rand_core",
+ "rand_core 0.6.4",
  "subtle",
  "zeroize",
 ]
@@ -1257,7 +1203,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3"
 dependencies = [
  "generic-array",
- "rand_core",
+ "rand_core 0.6.4",
  "typenum",
 ]
 
@@ -1272,11 +1218,11 @@ dependencies = [
 
 [[package]]
 name = "ctrlc"
-version = "3.4.5"
+version = "3.4.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "90eeab0aa92f3f9b4e87f258c72b139c207d251f9cbc1080a0086b86a8870dd3"
+checksum = "697b5419f348fd5ae2478e8018cb016c00a5881c7f46c717de98ffd135a5651c"
 dependencies = [
- "nix 0.29.0",
+ "nix",
  "windows-sys 0.59.0",
 ]
 
@@ -1288,25 +1234,16 @@ checksum = "1c359b7249347e46fb28804470d071c921156ad62b3eef5d34e2ba867533dec8"
 dependencies = [
  "byteorder",
  "digest 0.9.0",
- "rand_core",
+ "rand_core 0.6.4",
  "subtle-ng",
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
-version = "1.0.137"
+version = "1.0.156"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "0fc894913dccfed0f84106062c284fa021c3ba70cb1d78797d6f5165d4492e45"
+checksum = "aa3a202fc4f3dd6d2ce5a2f87b04fb2becc00f5643ee9c4743ba10777efb314f"
 dependencies = [
  "cc",
  "cxxbridge-cmd",
@@ -1318,57 +1255,47 @@ dependencies = [
 
 [[package]]
 name = "cxx-build"
-version = "1.0.137"
+version = "1.0.156"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "503b2bfb6b3e8ce7f95d865a67419451832083d3186958290cee6c53e39dfcfe"
+checksum = "644bdf46f34f6325783f76a8ad8e737ab995a302d7868b5236a1ba55008883e0"
 dependencies = [
  "cc",
- "codespan-reporting",
+ "codespan-reporting 0.12.0",
  "proc-macro2",
  "quote",
  "scratch",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
 name = "cxxbridge-cmd"
-version = "1.0.137"
+version = "1.0.156"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e0d2cb64a95b4b5a381971482235c4db2e0208302a962acdbe314db03cbbe2fb"
+checksum = "8e8cefbebcb74ed0b4a08b76139e6c29d8884a0bb94d02c6f35de821a14a6e39"
 dependencies = [
  "clap",
- "codespan-reporting",
+ "codespan-reporting 0.12.0",
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
 name = "cxxbridge-flags"
-version = "1.0.137"
+version = "1.0.156"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "5f797b0206463c9c2a68ed605ab28892cca784f1ef066050f4942e3de26ad885"
+checksum = "604e3eff62e2f27289d618f621491a068330c3c9f8eb06555dabc292c123596e"
 
 [[package]]
 name = "cxxbridge-macro"
-version = "1.0.137"
+version = "1.0.156"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e79010a2093848e65a3e0f7062d3f02fb2ef27f866416dfe436fccfa73d3bb59"
+checksum = "130c3a05501d9c15dedbf08f2ff9af60f8e78422e3dffac1f43e2d83c5b489a1"
 dependencies = [
  "proc-macro2",
  "quote",
  "rustversion",
- "syn 2.0.98",
-]
-
-[[package]]
-name = "darling"
-version = "0.13.4"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "a01d95850c592940db9b8194bc39f4bc0e89dee5c4265e4b1807c34a9aba453c"
-dependencies = [
- "darling_core 0.13.4",
- "darling_macro 0.13.4",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -1377,22 +1304,8 @@ version = "0.14.4"
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
@@ -1409,24 +1322,13 @@ dependencies = [
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
@@ -1439,9 +1341,9 @@ checksum = "04d2cd9c18b9f454ed67da600630b021a8a80bf33f8c95896ab33aaf1c26b728"
 
 [[package]]
 name = "data-encoding"
-version = "2.7.0"
+version = "2.8.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "0e60eed09d8c01d3cee5b7d30acb059b76614c918fa0f992e0dd6eeb10daad6f"
+checksum = "575f75dfd25738df5b91b8e43e14d44bda14637a58fae779fd2b064f8bf3e010"
 
 [[package]]
 name = "dbus"
@@ -1465,7 +1367,7 @@ dependencies = [
  "num",
  "once_cell",
  "openssl",
- "rand",
+ "rand 0.8.5",
 ]
 
 [[package]]
@@ -1498,9 +1400,9 @@ dependencies = [
 
 [[package]]
 name = "deranged"
-version = "0.3.11"
+version = "0.4.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "b42b6fa04a440b495c8b04d0e71b707c585f83cb9cb28cf8cd0d976c315e31b4"
+checksum = "9c9e6a11ca8224451684bc0d7d5a7adbf8f2fd6887261a1cfc3c0432f9d4068e"
 dependencies = [
  "powerfmt",
  "serde",
@@ -1517,21 +1419,11 @@ dependencies = [
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
-version = "1.6.0"
+version = "1.6.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "339544cc9e2c4dc3fc7149fd630c5f22263a4fdf18a98afd0075784968b5cf00"
+checksum = "dc55fe0d1f6c107595572ec8b107c0999bb1a2e0b75e37429a4fb0d6474a0e7d"
 
 [[package]]
 name = "dfx"
@@ -1575,7 +1467,7 @@ dependencies = [
  "ic-asset",
  "ic-cdk",
  "ic-identity-hsm",
- "ic-utils 0.39.3",
+ "ic-utils",
  "ic-wasm",
  "icrc-ledger-types",
  "idl2json",
@@ -1596,7 +1488,7 @@ dependencies = [
  "petgraph",
  "pocket-ic",
  "proptest",
- "rand",
+ "rand 0.8.5",
  "regex",
  "reqwest",
  "ring",
@@ -1652,7 +1544,7 @@ dependencies = [
  "humantime-serde",
  "ic-agent",
  "ic-identity-hsm",
- "ic-utils 0.39.3",
+ "ic-utils",
  "itertools 0.10.5",
  "k256 0.11.6",
  "keyring",
@@ -1726,12 +1618,6 @@ dependencies = [
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
@@ -1792,7 +1678,7 @@ checksum = "97369cbbc041bc366949bc74d34658d6cda5621039731c6310521892a3a20ae0"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -1809,9 +1695,9 @@ checksum = "92773504d58c093f6de2459af4af33faa518c13451eb8f2b5698ed3d36e7c813"
 
 [[package]]
 name = "dyn-clone"
-version = "1.0.18"
+version = "1.0.19"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "feeef44e73baff3a26d371801df019877a9866a8c493d315ab00177843314f35"
+checksum = "1c7a8fb8a9fbf66c1f703fe16184d10ca0ee9d23be5b4436400408ba54a95005"
 
 [[package]]
 name = "ecdsa"
@@ -1847,7 +1733,7 @@ checksum = "3c8465edc8ee7436ffea81d21a019b16676ee3db267aa8d5a8d729581ecf998b"
 dependencies = [
  "curve25519-dalek-ng",
  "hex",
- "rand_core",
+ "rand_core 0.6.4",
  "serde",
  "sha2 0.9.9",
  "thiserror 1.0.69",
@@ -1856,9 +1742,9 @@ dependencies = [
 
 [[package]]
 name = "either"
-version = "1.13.0"
+version = "1.15.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "60b1af1c220855b6ceac025d3f6ecdd2b7c4894bfe9cd9bda4fbb4bc7c0d4cf0"
+checksum = "48c757948c5ede0e46177b7add2e67155f70e33c07fea8284df6576da70b3719"
 
 [[package]]
 name = "elliptic-curve"
@@ -1875,7 +1761,7 @@ dependencies = [
  "group 0.12.1",
  "pem-rfc7468 0.6.0",
  "pkcs8 0.9.0",
- "rand_core",
+ "rand_core 0.6.4",
  "sec1 0.3.0",
  "subtle",
  "zeroize",
@@ -1890,12 +1776,12 @@ dependencies = [
  "base16ct 0.2.0",
  "crypto-bigint 0.5.5",
  "digest 0.10.7",
- "ff 0.13.0",
+ "ff 0.13.1",
  "generic-array",
  "group 0.13.0",
  "pem-rfc7468 0.7.0",
  "pkcs8 0.10.2",
- "rand_core",
+ "rand_core 0.6.4",
  "sec1 0.7.3",
  "subtle",
  "zeroize",
@@ -1903,9 +1789,9 @@ dependencies = [
 
 [[package]]
 name = "elsa"
-version = "1.11.0"
+version = "1.11.2"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "2343daaeabe09879d4ea058bb4f1e63da3fc07dadc6634e01bda1b3d6a9d9d2b"
+checksum = "9abf33c656a7256451ebb7d0082c5a471820c31269e49d807c538c252352186e"
 dependencies = [
  "stable_deref_trait",
 ]
@@ -1950,9 +1836,9 @@ dependencies = [
 
 [[package]]
 name = "equivalent"
-version = "1.0.1"
+version = "1.0.2"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5"
+checksum = "877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f"
 
 [[package]]
 name = "erased-serde"
@@ -1965,9 +1851,9 @@ dependencies = [
 
 [[package]]
 name = "errno"
-version = "0.3.10"
+version = "0.3.11"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "33d852cb9b869c2a9b3df2f71a3074817f01e1844f839a144f5fcef059a4eb5d"
+checksum = "976dd42dc7e85965fe702eb8164f21f450704bdde31faefd6471dba214cb594e"
 dependencies = [
  "libc",
  "windows-sys 0.59.0",
@@ -1992,9 +1878,9 @@ dependencies = [
 
 [[package]]
 name = "event-listener-strategy"
-version = "0.5.3"
+version = "0.5.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "3c3e4e0dd3673c1139bf041f3008816d9cf2946bbfac2945c09e523b8d7b05b2"
+checksum = "8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93"
 dependencies = [
  "event-listener 5.4.0",
  "pin-project-lite",
@@ -2007,7 +1893,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "2d391ba4af7f1d93f01fcf7b2f29e2bc9348e109dfdbf4dcbdc51dfa38dab0b6"
 dependencies = [
  "deunicode",
- "rand",
+ "rand 0.8.5",
 ]
 
 [[package]]
@@ -2024,13 +1910,13 @@ checksum = "37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be"
 
 [[package]]
 name = "fd-lock"
-version = "4.0.2"
+version = "4.0.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "7e5768da2206272c81ef0b5e951a41862938a6070da63bcea197899942d3b947"
+checksum = "0ce92ff622d6dadf7349484f42c93271a0d49b7cc4d466a936405bacbe10aa78"
 dependencies = [
  "cfg-if",
- "rustix",
- "windows-sys 0.52.0",
+ "rustix 1.0.5",
+ "windows-sys 0.59.0",
 ]
 
 [[package]]
@@ -2039,17 +1925,17 @@ version = "0.12.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "d013fc25338cc558c5c2cfbad646908fb23591e2404481826742b651c9af7160"
 dependencies = [
- "rand_core",
+ "rand_core 0.6.4",
  "subtle",
 ]
 
 [[package]]
 name = "ff"
-version = "0.13.0"
+version = "0.13.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "ded41244b729663b1e574f1b4fb731469f69f79c17667b5d776b16cda0479449"
+checksum = "c0b50bfb653653f9ca9095b427bed08ab8d75a137839d9ad64eb11810d5b6393"
 dependencies = [
- "rand_core",
+ "rand_core 0.6.4",
  "subtle",
 ]
 
@@ -2073,9 +1959,9 @@ checksum = "0ce7134b9999ecaf8bcd65542e436736ef32ddca1b3e06094cb6ec5755203b80"
 
 [[package]]
 name = "flate2"
-version = "1.0.35"
+version = "1.1.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "c936bfdafb507ebbf50b8074c54fa31c5be9a1e7e5f467dd659697041407d07c"
+checksum = "7ced92e76e966ca2fd84c8f7aa01a4aea65b0eb6648d72f7c8f3e2764a67fece"
 dependencies = [
  "crc32fast",
  "libz-ng-sys",
@@ -2090,7 +1976,7 @@ checksum = "2cd66269887534af4b0c3e3337404591daa8dc8b9b2b3db71f9523beb4bafb41"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -2101,9 +1987,9 @@ checksum = "3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1"
 
 [[package]]
 name = "foldhash"
-version = "0.1.4"
+version = "0.1.5"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "a0d2fde1f7b3d48b8395d5f2de76c18a528bd6a9cdde438df747bfcba3e05d6f"
+checksum = "d9c4f5dac5e15c24eb999c26181a6ca40b39fe946cbe4c263c7209467bc83af2"
 
 [[package]]
 name = "foreign-types"
@@ -2131,9 +2017,9 @@ dependencies = [
 
 [[package]]
 name = "fsio"
-version = "0.4.0"
+version = "0.4.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "dad0ce30be0cc441b325c5d705c8b613a0ca0d92b6a8953d41bd236dc09a36d0"
+checksum = "f4944f16eb6a05b4b2b79986b4786867bb275f52882adea798f17cc2588f25b2"
 dependencies = [
  "dunce",
 ]
@@ -2211,7 +2097,7 @@ checksum = "162ee34ebcb7c64a8abebc059ce0fee27c2262618d7b60ed8faf72fef13c3650"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -2279,14 +2165,16 @@ dependencies = [
 
 [[package]]
 name = "getrandom"
-version = "0.3.1"
+version = "0.3.2"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "43a49c392881ce6d5c3b8cb70f98717b7c07aabbdff06687b9030dbfbe2725f8"
+checksum = "73fea8450eea4bac3940448fb7ae50d91f034f941199fcd9d909a5a07aa455f0"
 dependencies = [
  "cfg-if",
+ "js-sys",
  "libc",
- "wasi 0.13.3+wasi-0.2.2",
- "windows-targets",
+ "r-efi",
+ "wasi 0.14.2+wasi-0.2.4",
+ "wasm-bindgen",
 ]
 
 [[package]]
@@ -2318,9 +2206,9 @@ checksum = "07e28edb80900c19c28f1072f2e8aeca7fa06b23cd4169cefe1af5aa3260783f"
 
 [[package]]
 name = "globset"
-version = "0.4.15"
+version = "0.4.16"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "15f1ce686646e7f1e19bf7d5533fe443a45dbfb990e00629110797578b42fb19"
+checksum = "54a1028dfc5f5df5da8a56a73e6c153c9a9708ec57232470703592a3f18e49f5"
 dependencies = [
  "aho-corasick",
  "bstr",
@@ -2336,7 +2224,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "5dfbfb3a6cfbd390d5c9564ab283a0349b9b9fcd46a706c1eb10e0db70bfbac7"
 dependencies = [
  "ff 0.12.1",
- "rand_core",
+ "rand_core 0.6.4",
  "subtle",
 ]
 
@@ -2346,8 +2234,8 @@ version = "0.13.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "f0f9ef7462f7c099f518d754361858f86d8a07af53ba9af0fe635bbccb151a63"
 dependencies = [
- "ff 0.13.0",
- "rand_core",
+ "ff 0.13.1",
+ "rand_core 0.6.4",
  "subtle",
 ]
 
@@ -2363,7 +2251,7 @@ dependencies = [
  "futures-sink",
  "futures-util",
  "http 0.2.12",
- "indexmap 2.7.1",
+ "indexmap 2.9.0",
  "slab",
  "tokio",
  "tokio-util",
@@ -2372,17 +2260,17 @@ dependencies = [
 
 [[package]]
 name = "h2"
-version = "0.4.7"
+version = "0.4.8"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "ccae279728d634d083c00f6099cb58f01cc99c145b84b8be2f6c74618d79922e"
+checksum = "5017294ff4bb30944501348f6f8e42e6ad28f42c8bbef7a74029aff064a4e3c2"
 dependencies = [
  "atomic-waker",
  "bytes",
  "fnv",
  "futures-core",
  "futures-sink",
- "http 1.2.0",
- "indexmap 2.7.1",
+ "http 1.3.1",
+ "indexmap 2.9.0",
  "slab",
  "tokio",
  "tokio-util",
@@ -2458,9 +2346,9 @@ checksum = "2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea"
 
 [[package]]
 name = "hermit-abi"
-version = "0.4.0"
+version = "0.5.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "fbf6a919d6cf397374f7dfeeea91d974c7c0a7221d0d0f4f20d859d329e53fcc"
+checksum = "fbd780fe5cc30f81464441920d82ac8740e2e46b29a6fad543ddd075229ce37e"
 
 [[package]]
 name = "hex"
@@ -2502,9 +2390,9 @@ dependencies = [
 
 [[package]]
 name = "http"
-version = "1.2.0"
+version = "1.3.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "f16ca2af56261c99fba8bac40a10251ce8188205a4c448fbb745a2e4daa76fea"
+checksum = "f4a85d31aea989eead29a3aaf9e1115a180df8282431156e533de47660892565"
 dependencies = [
  "bytes",
  "fnv",
@@ -2529,27 +2417,27 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "1efedce1fb8e6913f23e0c92de8e62cd5b772a67e7b3946df930a62566c93184"
 dependencies = [
  "bytes",
- "http 1.2.0",
+ "http 1.3.1",
 ]
 
 [[package]]
 name = "http-body-util"
-version = "0.1.2"
+version = "0.1.3"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "793429d76616a256bcb62c2a2ec2bed781c8307e797e2598c50010f2bee2544f"
+checksum = "b021d93e26becf5dc7e1b75b1bed1fd93124b374ceb73f43d4d4eafec896a64a"
 dependencies = [
  "bytes",
- "futures-util",
- "http 1.2.0",
+ "futures-core",
+ "http 1.3.1",
  "http-body 1.0.1",
  "pin-project-lite",
 ]
 
 [[package]]
 name = "httparse"
-version = "1.10.0"
+version = "1.10.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "f2d708df4e7140240a16cd6ab0ab65c972d7433ab77819ea693fde9c43811e2a"
+checksum = "6dbf3de79e51f3d586ab4cb9d5c3e2c14aa28ed23d180cf89b4df0454a69cc87"
 
 [[package]]
 name = "httpdate"
@@ -2559,9 +2447,9 @@ checksum = "df3b46402a9d5adb4c86a0cf463f42e19994e3ee891101b1841f30a545cb49a9"
 
 [[package]]
 name = "humantime"
-version = "2.1.0"
+version = "2.2.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4"
+checksum = "9b112acc8b3adf4b107a8ec20977da0273a8c386765a3ec0229bd500a1443f9f"
 
 [[package]]
 name = "humantime-serde"
@@ -2605,8 +2493,8 @@ dependencies = [
  "bytes",
  "futures-channel",
  "futures-util",
- "h2 0.4.7",
- "http 1.2.0",
+ "h2 0.4.8",
+ "http 1.3.1",
  "http-body 1.0.1",
  "httparse",
  "itoa",
@@ -2638,30 +2526,31 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "2d191583f3da1305256f22463b9bb0471acad48a4e534a5218b9963e9c1f59b2"
 dependencies = [
  "futures-util",
- "http 1.2.0",
+ "http 1.3.1",
  "hyper 1.6.0",
  "hyper-util",
- "rustls 0.23.22",
+ "rustls 0.23.25",
  "rustls-native-certs",
  "rustls-pki-types",
  "tokio",
- "tokio-rustls 0.26.1",
+ "tokio-rustls 0.26.2",
  "tower-service",
  "webpki-roots 0.26.8",
 ]
 
 [[package]]
 name = "hyper-util"
-version = "0.1.10"
+version = "0.1.11"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "df2dcfbe0677734ab2f3ffa7fa7bfd4706bfdc1ef393f2ee30184aed67e631b4"
+checksum = "497bbc33a26fdd4af9ed9c70d63f61cf56a938375fbb32df34db9b1cd6d643f2"
 dependencies = [
  "bytes",
  "futures-channel",
  "futures-util",
- "http 1.2.0",
+ "http 1.3.1",
  "http-body 1.0.1",
  "hyper 1.6.0",
+ "libc",
  "pin-project-lite",
  "socket2",
  "tokio",
@@ -2671,14 +2560,15 @@ dependencies = [
 
 [[package]]
 name = "iana-time-zone"
-version = "0.1.61"
+version = "0.1.63"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "235e081f3925a06703c2d0117ea8b91f042756fd6e7a6e5d901e8ca1a996b220"
+checksum = "b0c919e5debc312ad217002b8048a17b7d83f80703865bbfcfebb0458b0b27d8"
 dependencies = [
  "android_system_properties",
  "core-foundation-sys",
  "iana-time-zone-haiku",
  "js-sys",
+ "log",
  "wasm-bindgen",
  "windows-core",
 ]
@@ -2711,17 +2601,17 @@ dependencies = [
  "elliptic-curve 0.13.8",
  "futures-util",
  "hex",
- "http 1.2.0",
+ "http 1.3.1",
  "http-body 1.0.1",
- "ic-certification 3.0.2",
+ "ic-certification 3.0.3",
  "ic-transport-types 0.39.3 (git+https://github.com/dfinity/agent-rs?rev=7752c33016f708fb84b56ff99d91a7c380a8b550)",
  "ic-verify-bls-signature",
  "k256 0.13.4",
  "leb128",
  "p256",
- "pem 3.0.4",
+ "pem 3.0.5",
  "pkcs8 0.10.2",
- "rand",
+ "rand 0.8.5",
  "rangemap",
  "reqwest",
  "sec1 0.7.3",
@@ -2732,7 +2622,7 @@ dependencies = [
  "sha2 0.10.8",
  "simple_asn1",
  "stop-token",
- "thiserror 2.0.11",
+ "thiserror 2.0.12",
  "time",
  "tokio",
  "tower-service",
@@ -2754,7 +2644,7 @@ dependencies = [
  "globset",
  "hex",
  "ic-agent",
- "ic-utils 0.39.3",
+ "ic-utils",
  "itertools 0.10.5",
  "json5",
  "mime",
@@ -2772,50 +2662,6 @@ dependencies = [
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
@@ -2875,17 +2721,6 @@ dependencies = [
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
@@ -2900,9 +2735,9 @@ dependencies = [
 
 [[package]]
 name = "ic-certification"
-version = "3.0.2"
+version = "3.0.3"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "9eae40f26fcac9c141cad54d9aa5f423efffde78ac371057c53d275ebbcad443"
+checksum = "ffb40d73f9f8273dc6569a68859003bbd467c9dc6d53c6fd7d174742f857209d"
 dependencies = [
  "hex",
  "serde",
@@ -2910,30 +2745,6 @@ dependencies = [
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
@@ -2945,12 +2756,10 @@ dependencies = [
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
@@ -2960,52 +2769,6 @@ dependencies = [
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
@@ -3014,41 +2777,6 @@ dependencies = [
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
@@ -3066,15 +2794,6 @@ dependencies = [
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
@@ -3097,17 +2816,6 @@ dependencies = [
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
@@ -3132,25 +2840,6 @@ dependencies = [
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
@@ -3161,7 +2850,7 @@ dependencies = [
  "pkcs11",
  "sha2 0.10.8",
  "simple_asn1",
- "thiserror 2.0.11",
+ "thiserror 2.0.12",
 ]
 
 [[package]]
@@ -3225,139 +2914,47 @@ dependencies = [
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
 [[package]]
 name = "ic-stable-structures"
-version = "0.5.6"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "95dce29e3ceb0e6da3e78b305d95365530f2efd2146ca18590c0ef3aa6038568"
-
-[[package]]
-name = "ic-stable-structures"
-version = "0.6.7"
+version = "0.6.8"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "b492c5a16455ae78623eaa12ead96dda6c69a83c535b1b00789f19b381c8a24c"
+checksum = "f0f5684f577e0146738cd11afed789109c4f51ba963c75823c48c1501dc53278"
 dependencies = [
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
 [[package]]
 name = "ic-transport-types"
 version = "0.39.3"
-source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "979ee7bee5a67150a4c090fb012c93c294a528b4a867bad9a15cc6d01cb4227f"
+source = "git+https://github.com/dfinity/agent-rs?rev=7752c33016f708fb84b56ff99d91a7c380a8b550#7752c33016f708fb84b56ff99d91a7c380a8b550"
 dependencies = [
  "candid",
  "hex",
- "ic-certification 3.0.2",
+ "ic-certification 3.0.3",
  "leb128",
  "serde",
  "serde_bytes",
  "serde_cbor",
  "serde_repr",
  "sha2 0.10.8",
- "thiserror 2.0.11",
+ "thiserror 2.0.12",
 ]
 
 [[package]]
 name = "ic-transport-types"
 version = "0.39.3"
-source = "git+https://github.com/dfinity/agent-rs?rev=7752c33016f708fb84b56ff99d91a7c380a8b550#7752c33016f708fb84b56ff99d91a7c380a8b550"
+source = "git+https://github.com/dfinity/agent-rs?rev=9ebf6314ce2fcb36772c7d81d6d414b4628d6101#9ebf6314ce2fcb36772c7d81d6d414b4628d6101"
 dependencies = [
  "candid",
  "hex",
- "ic-certification 3.0.2",
+ "ic-certification 3.0.3",
  "leb128",
  "serde",
  "serde_bytes",
  "serde_cbor",
  "serde_repr",
  "sha2 0.10.8",
- "thiserror 2.0.11",
-]
-
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
+ "thiserror 2.0.12",
 ]
 
 [[package]]
@@ -3376,7 +2973,7 @@ dependencies = [
  "sha2 0.10.8",
  "strum 0.26.3",
  "strum_macros 0.26.4",
- "thiserror 2.0.11",
+ "thiserror 2.0.12",
  "time",
  "tokio",
 ]
@@ -3388,10 +2985,10 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "d420b25c0091059f6c3c23a21427a81915e6e0aca3b79e0d403ed767f286a3b9"
 dependencies = [
  "hex",
- "ic_bls12_381 0.10.0",
+ "ic_bls12_381",
  "lazy_static",
- "pairing 0.23.0",
- "rand",
+ "pairing",
+ "rand 0.8.5",
  "sha2 0.10.8",
 ]
 
@@ -3422,30 +3019,15 @@ checksum = "a54b5297861c651551676e8c43df805dad175cc33bc97dbd992edbbb85dcbcdf"
 
 [[package]]
 name = "ic_bls12_381"
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
-[[package]]
-name = "ic_bls12_381"
-version = "0.10.0"
+version = "0.10.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "22c65787944f32af084dffd0c68c1e544237b76e215654ddea8cd9f527dd8b69"
+checksum = "a1e828f9e804ccefe4b9b15b2195f474c60fd4f95ccd14fcb554eb6d7dfafde3"
 dependencies = [
  "digest 0.10.7",
- "ff 0.13.0",
+ "ff 0.13.1",
  "group 0.13.0",
- "pairing 0.23.0",
- "rand_core",
+ "pairing",
+ "rand_core 0.6.4",
  "subtle",
 ]
 
@@ -3485,7 +3067,7 @@ dependencies = [
  "candid",
  "crc32fast",
  "hex",
- "ic-stable-structures 0.6.7",
+ "ic-stable-structures",
  "icrc-cbor",
  "itertools 0.12.1",
  "minicbor",
@@ -3540,9 +3122,9 @@ dependencies = [
 
 [[package]]
 name = "icu_locid_transform_data"
-version = "1.5.0"
+version = "1.5.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "fdc8ff3388f852bede6b579ad4e978ab004f139284d7b28715f773507b946f6e"
+checksum = "7515e6d781098bf9f7205ab3fc7e9709d34554ae0b21ddbcb5febfa4bc7df11d"
 
 [[package]]
 name = "icu_normalizer"
@@ -3564,9 +3146,9 @@ dependencies = [
 
 [[package]]
 name = "icu_normalizer_data"
-version = "1.5.0"
+version = "1.5.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "f8cafbf7aa791e9b22bec55a167906f9e1215fd475cd22adfcf660e03e989516"
+checksum = "c5e8338228bdc8ab83303f16b797e177953730f601a96c25d10cb3ab0daa0cb7"
 
 [[package]]
 name = "icu_properties"
@@ -3585,9 +3167,9 @@ dependencies = [
 
 [[package]]
 name = "icu_properties_data"
-version = "1.5.0"
+version = "1.5.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "67a8effbc3dd3e4ba1afa8ad918d5684b8868b3b26500753effea8d2eed19569"
+checksum = "85fb8799753b75aee8d2a21d7c14d9f38921b54b3dbda10f5a3c7a7b82dba5e2"
 
 [[package]]
 name = "icu_provider"
@@ -3614,7 +3196,7 @@ checksum = "1ec89e9337638ecdc08744df490b221a7399bf8d164eb52a665454e60e075ad6"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -3629,7 +3211,7 @@ dependencies = [
  "humantime",
  "ic-agent",
  "ic-asset",
- "ic-utils 0.39.3",
+ "ic-utils",
  "libflate 1.4.0",
  "num-traits",
  "pem 1.1.1",
@@ -3702,9 +3284,9 @@ dependencies = [
 
 [[package]]
 name = "indexmap"
-version = "2.7.1"
+version = "2.9.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "8c9c992b02b5b4c94ea26e32fe5bccb7aa7d9f390ab5c1221ff895bc7ea8b652"
+checksum = "cea70ddb795996207ad57735b50c5982d8844f38ba9ee5f1aedcfb708a2aa11e"
 dependencies = [
  "equivalent",
  "hashbrown 0.15.2",
@@ -3726,9 +3308,9 @@ dependencies = [
 
 [[package]]
 name = "inout"
-version = "0.1.3"
+version = "0.1.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "a0c10553d664a4d0bcff9f4215d0aac67a639cc68ef660840afe309b807bc9f5"
+checksum = "879f10e63c20629ecabbb64a8010319738c66a5cd0c29b02d63d272b03751d01"
 dependencies = [
  "generic-array",
 ]
@@ -3750,9 +3332,9 @@ checksum = "469fb0b9cefa57e3ef31275ee7cacb78f2fdca44e4765491884a2b119d4eb130"
 
 [[package]]
 name = "is-terminal"
-version = "0.4.15"
+version = "0.4.16"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e19b23d53f35ce9f56aebc7d1bb4e6ac1e9c0db7ac85c8d1760c04379edced37"
+checksum = "e04d7f318608d35d4b61ddd75cbdaee86b023ebe2bd5a66ee0915f0bf93095a9"
 dependencies = [
  "hermit-abi",
  "libc",
@@ -3809,16 +3391,17 @@ dependencies = [
 
 [[package]]
 name = "itoa"
-version = "1.0.14"
+version = "1.0.15"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "d75a2a4b1b190afb6f5425f10f6a8f959d2ea0b9c2b1d79553551850539e4674"
+checksum = "4a5f13b858c8d314ee3e8f639011f7ccefe71f97f96e50151fb991f267928e2c"
 
 [[package]]
 name = "jobserver"
-version = "0.1.32"
+version = "0.1.33"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "48d1dbcbbeb6a7fec7e059840aa538bd62aaccf972c7346c4d9d2059312853d0"
+checksum = "38f262f097c174adebe41eb73d66ae9c06b2844fb0da69969647bbddd9b0538a"
 dependencies = [
+ "getrandom 0.3.2",
  "libc",
 ]
 
@@ -3902,9 +3485,9 @@ dependencies = [
 
 [[package]]
 name = "keyring"
-version = "3.6.1"
+version = "3.6.2"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "2f8fe839464d4e4b37d756d7e910063696af79a7e877282cb1825e4ec5f10833"
+checksum = "1961983669d57bdfe6c0f3ef8e4c229b5ef751afcc7d87e4271d2f71f6ccfa8b"
 dependencies = [
  "byteorder",
  "dbus-secret-service",
@@ -3961,9 +3544,9 @@ checksum = "884e2677b40cc8c339eaefcb701c32ef1fd2493d71118dc0ca4b6a736c93bd67"
 
 [[package]]
 name = "libc"
-version = "0.2.169"
+version = "0.2.171"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "b5aba8db14291edd000dfcc4d620c7ebfb122c613afb886ca8803fa4e128a20a"
+checksum = "c19937216e9d3aa9956d9bb8dfc0b0c8beb6058fc4f7a4dc4d850edf86a237d6"
 
 [[package]]
 name = "libdbus-sys"
@@ -4041,16 +3624,16 @@ version = "0.1.3"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "c0ff37bd590ca25063e35af745c343cb7a0271906fb7b37e4813e8f79f00268d"
 dependencies = [
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
  "libc",
- "redox_syscall 0.5.8",
+ "redox_syscall 0.5.11",
 ]
 
 [[package]]
 name = "libz-ng-sys"
-version = "1.1.21"
+version = "1.1.22"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "7cee1488e961a80d172564fd6fcda11d8a4ac6672c06fe008e9213fa60520c2b"
+checksum = "a7118c2c2a3c7b6edc279a8b19507672b9c4d716f95e671172dfa4e23f9fd824"
 dependencies = [
  "cmake",
  "libc",
@@ -4058,9 +3641,9 @@ dependencies = [
 
 [[package]]
 name = "link-cplusplus"
-version = "1.0.9"
+version = "1.0.10"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "9d240c6f7e1ba3a28b0249f774e6a9dd0175054b52dfbb61b16eb8505c3785c9"
+checksum = "4a6f6da007f968f9def0d65a05b187e2960183de70c160204ecfccf0ee330212"
 dependencies = [
  "cc",
 ]
@@ -4071,7 +3654,7 @@ version = "0.2.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "761e49ec5fd8a5a463f9b84e877c373d888935b71c6be78f3767fe2ae6bed18e"
 dependencies = [
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
  "libc",
 ]
 
@@ -4081,11 +3664,17 @@ version = "0.4.15"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "d26c52dbd32dccf2d10cac7725f8eae5296885fb5703b261f7d0a0739ec807ab"
 
+[[package]]
+name = "linux-raw-sys"
+version = "0.9.3"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "fe7db12097d22ec582439daf8618b8fdd1a7bef6270e9af3b1ebcd30893cf413"
+
 [[package]]
 name = "litemap"
-version = "0.7.4"
+version = "0.7.5"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "4ee93343901ab17bd981295f2cf0026d4ad018c7c31ba84549a4ddbb47a45104"
+checksum = "23fb14cb19457329c82206317a5663005a4d404783dc74f4252769b0d5f42856"
 
 [[package]]
 name = "lock_api"
@@ -4099,9 +3688,9 @@ dependencies = [
 
 [[package]]
 name = "log"
-version = "0.4.25"
+version = "0.4.27"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "04cbf5b083de1c7e0222a7a51dbfdba1cbe1c6ab0b15e29fff3f6c077fd9cd9f"
+checksum = "13dc2df351e3202783a1fe0d44375f7295ffb4049267b0f3018346dc122a1d94"
 
 [[package]]
 name = "logos"
@@ -4123,7 +3712,7 @@ dependencies = [
  "proc-macro2",
  "quote",
  "regex-syntax 0.6.29",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -4156,15 +3745,6 @@ version = "2.7.4"
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
@@ -4209,9 +3789,9 @@ checksum = "68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a"
 
 [[package]]
 name = "miniz_oxide"
-version = "0.8.3"
+version = "0.8.8"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "b8402cab7aefae129c6977bb0ff1b8fd9a04eb5b51efc50a70bea51cda0c7924"
+checksum = "3be647b768db090acb35d5ec5db2b0e1f1de11133ca123b9eacf5137868f892a"
 dependencies = [
  "adler2",
 ]
@@ -4244,7 +3824,7 @@ dependencies = [
  "httparse",
  "lazy_static",
  "log",
- "rand",
+ "rand 0.8.5",
  "regex",
  "serde_json",
  "serde_urlencoded",
@@ -4257,25 +3837,13 @@ version = "1.0.6"
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
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "71e2746dc3a24dd78b3cfcb7be93368c6de9963d30f43a6a73998a9cf4b17b46"
 dependencies = [
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
  "cfg-if",
  "cfg_aliases",
  "libc",
@@ -4439,9 +4007,9 @@ dependencies = [
 
 [[package]]
 name = "once_cell"
-version = "1.21.1"
+version = "1.21.3"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "d75b0bedcc4fe52caa0e03d9f1151a323e4aa5e2d78ba3580400cd3c9e2bc4bc"
+checksum = "42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d"
 
 [[package]]
 name = "opaque-debug"
@@ -4455,7 +4023,7 @@ version = "0.10.72"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "fedfea7d58a1f73118430a55da6a286e7b044961736ce96a16a17068ea25e5da"
 dependencies = [
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
  "cfg-if",
  "foreign-types",
  "libc",
@@ -4472,7 +4040,7 @@ checksum = "a948666b637a0f465e8564c73e89d4dde00d72d4d473cc972f390fc3dcee7d9c"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -4483,9 +4051,9 @@ checksum = "d05e27ee213611ffe7d6348b942e8f942b37114c00cc03cec254295a4a17852e"
 
 [[package]]
 name = "openssl-src"
-version = "300.4.1+3.4.0"
+version = "300.5.0+3.5.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "faa4eac4138c62414b5622d1b31c5c304f34b406b013c079c2bbc652fdd6678c"
+checksum = "e8ce546f549326b0e6052b649198487d91320875da901e7bd11a06d1ee3f9c2f"
 dependencies = [
  "cc",
 ]
@@ -4530,15 +4098,6 @@ dependencies = [
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
@@ -4597,9 +4156,9 @@ checksum = "1e401f977ab385c9e4e3ab30627d6f26d00e2c73eef317493c4ec6d468726cf8"
 dependencies = [
  "cfg-if",
  "libc",
- "redox_syscall 0.5.8",
+ "redox_syscall 0.5.11",
  "smallvec",
- "windows-targets",
+ "windows-targets 0.52.6",
 ]
 
 [[package]]
@@ -4609,7 +4168,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "7676374caaee8a325c9e7a2ae557f216c5563a171d6997b0ef8a65af35147700"
 dependencies = [
  "base64ct",
- "rand_core",
+ "rand_core 0.6.4",
  "subtle",
 ]
 
@@ -4650,9 +4209,9 @@ dependencies = [
 
 [[package]]
 name = "pem"
-version = "3.0.4"
+version = "3.0.5"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "8e459365e590736a54c3fa561947c84837534b8e9af6fc5bf781307e82658fae"
+checksum = "38af38e8470ac9dee3ce1bae1af9c1671fffc44ddfd8bd1d0a3445bf349a8ef3"
 dependencies = [
  "base64 0.22.1",
  "serde",
@@ -4684,12 +4243,12 @@ checksum = "e3148f5046208a5d56bcfc03053e3ca6334e51da8dfb19b6cdc8b306fae3283e"
 
 [[package]]
 name = "pest"
-version = "2.7.15"
+version = "2.8.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "8b7cafe60d6cf8e62e1b9b2ea516a089c008945bb5a275416789e7db0bc199dc"
+checksum = "198db74531d58c70a361c42201efde7e2591e976d518caf7662a47dc5720e7b6"
 dependencies = [
  "memchr",
- "thiserror 2.0.11",
+ "thiserror 2.0.12",
  "ucd-trie",
 ]
 
@@ -4717,9 +4276,9 @@ dependencies = [
 
 [[package]]
 name = "pest_derive"
-version = "2.7.15"
+version = "2.8.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "816518421cfc6887a0d62bf441b6ffb4536fcc926395a69e1a85852d4363f57e"
+checksum = "d725d9cfd79e87dccc9341a2ef39d1b6f6353d68c4b33c177febbe1a402c97c5"
 dependencies = [
  "pest",
  "pest_generator",
@@ -4727,22 +4286,22 @@ dependencies = [
 
 [[package]]
 name = "pest_generator"
-version = "2.7.15"
+version = "2.8.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "7d1396fd3a870fc7838768d171b4616d5c91f6cc25e377b673d714567d99377b"
+checksum = "db7d01726be8ab66ab32f9df467ae8b1148906685bbe75c82d1e65d7f5b3f841"
 dependencies = [
  "pest",
  "pest_meta",
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
 name = "pest_meta"
-version = "2.7.15"
+version = "2.8.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e1e58089ea25d717bfd31fb534e4f3afcc2cc569c70de3e239778991ea3b7dea"
+checksum = "7f9f832470494906d1fca5329f8ab5791cc60beb230c74815dff541cbd2b5ca0"
 dependencies = [
  "once_cell",
  "pest",
@@ -4756,7 +4315,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "b4c5cc86750666a3ed20bdaf5ca2a0344f9c67674cae0515bec2da16fbaa47db"
 dependencies = [
  "fixedbitset",
- "indexmap 2.7.1",
+ "indexmap 2.9.0",
 ]
 
 [[package]]
@@ -4828,9 +4387,9 @@ dependencies = [
 
 [[package]]
 name = "pkg-config"
-version = "0.3.31"
+version = "0.3.32"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "953ec861398dccce10c670dfeaf3ec4911ca479e9c02154b3a215178c5f566f2"
+checksum = "7edddbd0b52d732b21ad9a5fab5c704c14cd949e5e9a1ec5929a24fded1b904c"
 
 [[package]]
 name = "pocket-ic"
@@ -4842,9 +4401,9 @@ dependencies = [
  "candid",
  "flate2",
  "hex",
- "ic-certification 3.0.2",
+ "ic-certification 3.0.3",
  "ic-management-canister-types",
- "ic-transport-types 0.39.3 (registry+https://github.com/rust-lang/crates.io-index)",
+ "ic-transport-types 0.39.3 (git+https://github.com/dfinity/agent-rs?rev=9ebf6314ce2fcb36772c7d81d6d414b4628d6101)",
  "reqwest",
  "schemars",
  "serde",
@@ -4855,7 +4414,7 @@ dependencies = [
  "slog",
  "strum 0.26.3",
  "strum_macros 0.26.4",
- "thiserror 2.0.11",
+ "thiserror 2.0.12",
  "tokio",
  "tracing",
  "tracing-appender",
@@ -4877,9 +4436,9 @@ dependencies = [
 
 [[package]]
 name = "portable-atomic"
-version = "1.10.0"
+version = "1.11.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "280dc24453071f1b63954171985a0b0d30058d287960968b9b2aca264c8d4ee6"
+checksum = "350e9b48cbc6b0e028b0473b114454c6316e57336ee184ceab6e53f72c178b3e"
 
 [[package]]
 name = "powerfmt"
@@ -4889,11 +4448,11 @@ checksum = "439ee305def115ba05938db6eb1644ff94165c5ab5e9420d1c1bcedbba909391"
 
 [[package]]
 name = "ppv-lite86"
-version = "0.2.20"
+version = "0.2.21"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "77957b295656769bb8ad2b6a6b09d897d94f05c41b069aede1fcdaa675eaea04"
+checksum = "85eae3c4ed2f50dcfe72643da4befc30deadb458a9b590d720cde2f2b1e97da9"
 dependencies = [
- "zerocopy",
+ "zerocopy 0.8.24",
 ]
 
 [[package]]
@@ -4916,25 +4475,15 @@ dependencies = [
 
 [[package]]
 name = "pretty"
-version = "0.12.3"
+version = "0.12.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "b55c4d17d994b637e2f4daf6e5dc5d660d209d5642377d675d7a1c3ab69fa579"
+checksum = "ac98773b7109bc75f475ab5a134c9b64b87e59d776d31098d8f346922396a477"
 dependencies = [
  "arrayvec 0.5.2",
  "typed-arena",
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
@@ -4946,18 +4495,18 @@ dependencies = [
 
 [[package]]
 name = "proc-macro-crate"
-version = "3.2.0"
+version = "3.3.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "8ecf48c7ca261d60b74ab1a7b20da18bede46776b2e55535cb958eb595c5fa7b"
+checksum = "edce586971a4dfaa28950c6f18ed55e0406c1ab88bbce2c6f6293a7aaba73d35"
 dependencies = [
- "toml_edit 0.22.23",
+ "toml_edit 0.22.24",
 ]
 
 [[package]]
 name = "proc-macro2"
-version = "1.0.93"
+version = "1.0.94"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "60946a68e5f9d28b0dc1c21bb8a97ee7d018a8b322fa57838ba31cc878e22d99"
+checksum = "a31971752e70b8b2686d7e46ec17fb38dad4051d94024c88df49b667caea9c84"
 dependencies = [
  "unicode-ident",
 ]
@@ -4970,11 +4519,11 @@ checksum = "14cae93065090804185d3b75f0bf93b8eeda30c7a9b4a33d3bdb3988d6229e50"
 dependencies = [
  "bit-set 0.8.0",
  "bit-vec 0.8.0",
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
  "lazy_static",
  "num-traits",
- "rand",
- "rand_chacha",
+ "rand 0.8.5",
+ "rand_chacha 0.3.1",
  "rand_xorshift",
  "regex-syntax 0.8.5",
  "rusty-fork",
@@ -5002,14 +4551,14 @@ dependencies = [
  "itertools 0.12.1",
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
 name = "psm"
-version = "0.1.24"
+version = "0.1.25"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "200b9ff220857e53e184257720a14553b2f4aa02577d2ed9842d45d4b9654810"
+checksum = "f58e5423e24c18cc840e1c98370b3993c6649cd1678b4d24318bcf0a083cbe88"
 dependencies = [
  "cc",
 ]
@@ -5042,37 +4591,39 @@ checksum = "a1d01941d82fa2ab50be1e79e6714289dd7cde78eba4c074bc5a4374f650dfe0"
 
 [[package]]
 name = "quinn"
-version = "0.11.6"
+version = "0.11.7"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "62e96808277ec6f97351a2380e6c25114bc9e67037775464979f3037c92d05ef"
+checksum = "c3bd15a6f2967aef83887dcb9fec0014580467e33720d073560cf015a5683012"
 dependencies = [
  "bytes",
+ "cfg_aliases",
  "pin-project-lite",
  "quinn-proto",
  "quinn-udp",
- "rustc-hash 2.1.0",
- "rustls 0.23.22",
+ "rustc-hash 2.1.1",
+ "rustls 0.23.25",
  "socket2",
- "thiserror 2.0.11",
+ "thiserror 2.0.12",
  "tokio",
  "tracing",
+ "web-time",
 ]
 
 [[package]]
 name = "quinn-proto"
-version = "0.11.9"
+version = "0.11.10"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "a2fe5ef3495d7d2e377ff17b1a8ce2ee2ec2a18cde8b6ad6619d65d0701c135d"
+checksum = "b820744eb4dc9b57a3398183639c511b5a26d2ed702cedd3febaa1393caa22cc"
 dependencies = [
  "bytes",
- "getrandom 0.2.15",
- "rand",
+ "getrandom 0.3.2",
+ "rand 0.9.0",
  "ring",
- "rustc-hash 2.1.0",
- "rustls 0.23.22",
+ "rustc-hash 2.1.1",
+ "rustls 0.23.25",
  "rustls-pki-types",
  "slab",
- "thiserror 2.0.11",
+ "thiserror 2.0.12",
  "tinyvec",
  "tracing",
  "web-time",
@@ -5080,9 +4631,9 @@ dependencies = [
 
 [[package]]
 name = "quinn-udp"
-version = "0.5.9"
+version = "0.5.11"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "1c40286217b4ba3a71d644d752e6a0b71f13f1b6a2c5311acfcbe0c2418ed904"
+checksum = "541d0f57c6ec747a90738a52741d3221f7960e8ac2f0ff4b1a63680e033b4ab5"
 dependencies = [
  "cfg_aliases",
  "libc",
@@ -5094,13 +4645,19 @@ dependencies = [
 
 [[package]]
 name = "quote"
-version = "1.0.38"
+version = "1.0.40"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "0e4dccaaaf89514f546c693ddc140f729f958c247918a13380cccc6078391acc"
+checksum = "1885c039570dc00dcb4ff087a89e185fd56bae234ddc7f056a945bf36467248d"
 dependencies = [
  "proc-macro2",
 ]
 
+[[package]]
+name = "r-efi"
+version = "5.2.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "74765f6d916ee2faa39bc8e68e4f3ed8949b48cccdac59983d287a7cb71ce9c5"
+
 [[package]]
 name = "radium"
 version = "0.7.0"
@@ -5114,8 +4671,19 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404"
 dependencies = [
  "libc",
- "rand_chacha",
- "rand_core",
+ "rand_chacha 0.3.1",
+ "rand_core 0.6.4",
+]
+
+[[package]]
+name = "rand"
+version = "0.9.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "3779b94aeb87e8bd4e834cee3650289ee9e0d5677f976ecdb6d219e5f4f6cd94"
+dependencies = [
+ "rand_chacha 0.9.0",
+ "rand_core 0.9.3",
+ "zerocopy 0.8.24",
 ]
 
 [[package]]
@@ -5125,7 +4693,17 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88"
 dependencies = [
  "ppv-lite86",
- "rand_core",
+ "rand_core 0.6.4",
+]
+
+[[package]]
+name = "rand_chacha"
+version = "0.9.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "d3022b5f1df60f26e1ffddd6c66e8aa15de382ae63b3a0c1bfc0e4d3e3f325cb"
+dependencies = [
+ "ppv-lite86",
+ "rand_core 0.9.3",
 ]
 
 [[package]]
@@ -5137,13 +4715,22 @@ dependencies = [
  "getrandom 0.2.15",
 ]
 
+[[package]]
+name = "rand_core"
+version = "0.9.3"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "99d9a13982dcf210057a8a78572b2217b667c3beacbf3a0d8b454f6f82837d38"
+dependencies = [
+ "getrandom 0.3.2",
+]
+
 [[package]]
 name = "rand_xorshift"
 version = "0.3.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "d25bf25ec5ae4a3f1b92f929810509a2f53d7dca2f50b794ff57e3face536c8f"
 dependencies = [
- "rand_core",
+ "rand_core 0.6.4",
 ]
 
 [[package]]
@@ -5183,11 +4770,11 @@ dependencies = [
 
 [[package]]
 name = "redox_syscall"
-version = "0.5.8"
+version = "0.5.11"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "03a862b389f93e68874fbf580b9de08dd02facb9a788ebadaf4a3fd33cf58834"
+checksum = "d2f103c6d277498fbceb16e84d317e2a400f160f46904d5f5410848c829511a3"
 dependencies = [
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
 ]
 
 [[package]]
@@ -5256,17 +4843,17 @@ dependencies = [
 
 [[package]]
 name = "reqwest"
-version = "0.12.12"
+version = "0.12.15"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "43e734407157c3c2034e0258f5e4473ddb361b1e85f95a66690d67264d7cd1da"
+checksum = "d19c46a6fdd48bc4dab94b6103fccc55d34c67cc0ad04653aad4ea2a07cd7bbb"
 dependencies = [
  "base64 0.22.1",
  "bytes",
  "futures-channel",
  "futures-core",
  "futures-util",
- "h2 0.4.7",
- "http 1.2.0",
+ "h2 0.4.8",
+ "http 1.3.1",
  "http-body 1.0.1",
  "http-body-util",
  "hyper 1.6.0",
@@ -5281,7 +4868,7 @@ dependencies = [
  "percent-encoding",
  "pin-project-lite",
  "quinn",
- "rustls 0.23.22",
+ "rustls 0.23.25",
  "rustls-native-certs",
  "rustls-pemfile",
  "rustls-pki-types",
@@ -5290,7 +4877,7 @@ dependencies = [
  "serde_urlencoded",
  "sync_wrapper",
  "tokio",
- "tokio-rustls 0.26.1",
+ "tokio-rustls 0.26.2",
  "tokio-socks",
  "tokio-util",
  "tower",
@@ -5385,15 +4972,15 @@ checksum = "3582f63211428f83597b51b2ddb88e2a91a9d52d12831f9d08f5e624e8977422"
 
 [[package]]
 name = "rust_decimal"
-version = "1.36.0"
+version = "1.37.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "b082d80e3e3cc52b2ed634388d436fe1f4de6af5786cc2de9ba9737527bdf555"
+checksum = "faa7de2ba56ac291bd90c6b9bece784a52ae1411f9506544b3eae36dd2356d50"
 dependencies = [
  "arrayvec 0.7.6",
  "borsh",
  "bytes",
  "num-traits",
- "rand",
+ "rand 0.8.5",
  "rkyv",
  "serde",
  "serde_json",
@@ -5413,9 +5000,9 @@ checksum = "08d43f7aa6b08d49f382cde6a7982047c3426db949b1424bc4b7ec9ae12c6ce2"
 
 [[package]]
 name = "rustc-hash"
-version = "2.1.0"
+version = "2.1.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "c7fb8039b3032c191086b10f11f319a6e99e1e82889c5cc6046f515c9db1d497"
+checksum = "357703d41365b4b27c590e3ed91eabb1b663f07c4c084095e60cbed4362dff0d"
 
 [[package]]
 name = "rustix"
@@ -5423,10 +5010,23 @@ version = "0.38.44"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "fdb5bc1ae2baa591800df16c9ca78619bf65c0488b41b96ccec5d11220d8c154"
 dependencies = [
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
+ "errno",
+ "libc",
+ "linux-raw-sys 0.4.15",
+ "windows-sys 0.59.0",
+]
+
+[[package]]
+name = "rustix"
+version = "1.0.5"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "d97817398dd4bb2e6da002002db259209759911da105da92bec29ccb12cf58bf"
+dependencies = [
+ "bitflags 2.9.0",
  "errno",
  "libc",
- "linux-raw-sys",
+ "linux-raw-sys 0.9.3",
  "windows-sys 0.59.0",
 ]
 
@@ -5443,14 +5043,14 @@ dependencies = [
 
 [[package]]
 name = "rustls"
-version = "0.23.22"
+version = "0.23.25"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "9fb9263ab4eb695e42321db096e3b8fbd715a59b154d5c88d82db2175b681ba7"
+checksum = "822ee9188ac4ec04a2f0531e55d035fb2de73f18b41a63c70c2712503b6fb13c"
 dependencies = [
  "once_cell",
  "ring",
  "rustls-pki-types",
- "rustls-webpki 0.102.8",
+ "rustls-webpki 0.103.1",
  "subtle",
  "zeroize",
 ]
@@ -5497,9 +5097,9 @@ dependencies = [
 
 [[package]]
 name = "rustls-webpki"
-version = "0.102.8"
+version = "0.103.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "64ca1bc8749bd4cf37b5ce386cc146580777b4e8572c7b97baf22c83f444bee9"
+checksum = "fef8b8769aaccf73098557a87cd1816b4f9c7c16811c9c77142aa695c16f2c03"
 dependencies = [
  "ring",
  "rustls-pki-types",
@@ -5508,9 +5108,9 @@ dependencies = [
 
 [[package]]
 name = "rustversion"
-version = "1.0.19"
+version = "1.0.20"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "f7c45b9784283f1b2e7fb61b42047c2fd678ef0960d4f6f1eba131594cc369d4"
+checksum = "eded382c5f5f786b989652c49544c4877d9f015cc22e145a5ea8ea66c2921cd2"
 
 [[package]]
 name = "rusty-fork"
@@ -5526,9 +5126,9 @@ dependencies = [
 
 [[package]]
 name = "ryu"
-version = "1.0.19"
+version = "1.0.20"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "6ea1a2d0a644769cc99faa24c3ad26b379b786fe7c36fd3c546254801650e6dd"
+checksum = "28d3b2b1366ec20994f1fd18c3c594f05c5dd4bc44d8bb0c1c632c8d6829481f"
 
 [[package]]
 name = "same-file"
@@ -5550,9 +5150,9 @@ dependencies = [
 
 [[package]]
 name = "schemars"
-version = "0.8.21"
+version = "0.8.22"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "09c024468a378b7e36765cd36702b7a90cc3cba11654f6685c8f233408e89e92"
+checksum = "3fbf2ae1b8bc8e02df939598064d22402220cd5bbcca1c76f7d6a310974d5615"
 dependencies = [
  "dyn-clone",
  "schemars_derive",
@@ -5562,22 +5162,16 @@ dependencies = [
 
 [[package]]
 name = "schemars_derive"
-version = "0.8.21"
+version = "0.8.22"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "b1eee588578aff73f856ab961cd2f79e36bc45d7ded33a7562adba4667aecc0e"
+checksum = "32e265784ad618884abaea0600a9adf15393368d840e0222d101a072f3f7534d"
 dependencies = [
  "proc-macro2",
  "quote",
  "serde_derive_internals",
- "syn 2.0.98",
+ "syn 2.0.100",
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
@@ -5586,9 +5180,9 @@ checksum = "94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49"
 
 [[package]]
 name = "scratch"
-version = "1.0.7"
+version = "1.0.8"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "a3cf7c11c38cb994f3d40e8a8cde3bbd1f72a435e4c49e85d6553d8312306152"
+checksum = "9f6280af86e5f559536da57a45ebc84948833b3bee313a7dd25232e09c878a52"
 
 [[package]]
 name = "sct"
@@ -5640,7 +5234,7 @@ version = "2.11.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "897b2245f0b511c87893af39b033e5ca9cce68824c4d7e7630b5a1d339658d02"
 dependencies = [
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
  "core-foundation 0.9.4",
  "core-foundation-sys",
  "libc",
@@ -5653,7 +5247,7 @@ version = "3.2.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "271720403f46ca04f7ba6f55d438f8bd878d6b8ca0a1046e8228c4145bcbb316"
 dependencies = [
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
  "core-foundation 0.10.0",
  "core-foundation-sys",
  "libc",
@@ -5672,38 +5266,27 @@ dependencies = [
 
 [[package]]
 name = "semver"
-version = "1.0.25"
+version = "1.0.26"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "f79dfe2d285b0488816f30e700a7438c5a73d816b5b7d3ac72fbc48b0d185e03"
+checksum = "56e6fa9c48d24d85fb3de5ad847117517440f6beceb7798af16b4a87d616b8d0"
 dependencies = [
  "serde",
 ]
 
 [[package]]
 name = "serde"
-version = "1.0.217"
+version = "1.0.219"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "02fc4265df13d6fa1d00ecff087228cc0a2b5f3c0e87e258d8b94a156e984c70"
+checksum = "5f0e2c6ed6606019b4e29e69dbaba95b11854410e5347d525002456dbbb786b6"
 dependencies = [
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
-version = "0.11.15"
+version = "0.11.17"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "387cc504cb06bb40a96c8e04e951fe01854cf6bc921053c954e4a606d9675c6a"
+checksum = "8437fd221bde2d4ca316d61b90e337e9e702b3820b87d63caa9ba6c02bd06d96"
 dependencies = [
  "serde",
 ]
@@ -5720,13 +5303,13 @@ dependencies = [
 
 [[package]]
 name = "serde_derive"
-version = "1.0.217"
+version = "1.0.219"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "5a9bf7cf98d04a2b28aead066b7496853d4779c9cc183c440dbac457641e19a0"
+checksum = "5b0276cf7f2c73365f7157c8123c21cd9a50fbbd844757af28ca1f5925fc2a00"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -5737,7 +5320,7 @@ checksum = "18d26a20a969b9e3fdf2fc2d9f21eda6c40e2de84c9408bb5d3b05d499aae711"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -5755,9 +5338,9 @@ dependencies = [
 
 [[package]]
 name = "serde_json"
-version = "1.0.138"
+version = "1.0.140"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "d434192e7da787e94a6ea7e9670b26a036d0ca41e0b7efb2676dd32bae872949"
+checksum = "20068b6e96dc6c9bd23e01df8827e6c7e1f2fddd43c21810382803c136b99373"
 dependencies = [
  "itoa",
  "memchr",
@@ -5767,13 +5350,13 @@ dependencies = [
 
 [[package]]
 name = "serde_repr"
-version = "0.1.19"
+version = "0.1.20"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "6c64451ba24fc7a6a2d60fc75dd9c83c90903b19028d4eff35e88fc1e86564e9"
+checksum = "175ee3e80ae9982737ca543e96133087cbd9a485eecc3bc4de9c1a37b47ea59c"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -5808,28 +5391,6 @@ dependencies = [
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
@@ -5901,7 +5462,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "74233d3b3b2f6d4b006dc19dee745e73e2a6bfb6f93607cd3b02bd5b00797d7c"
 dependencies = [
  "digest 0.10.7",
- "rand_core",
+ "rand_core 0.6.4",
 ]
 
 [[package]]
@@ -5911,7 +5472,7 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "77549399552de45a898a580c1b41d445bf730df867cc44e6c0233bbc4b8329de"
 dependencies = [
  "digest 0.10.7",
- "rand_core",
+ "rand_core 0.6.4",
 ]
 
 [[package]]
@@ -5934,7 +5495,7 @@ checksum = "297f631f50729c8c99b84667867963997ec0b50f32b2a7dbcab828ef0541e8bb"
 dependencies = [
  "num-bigint 0.4.6",
  "num-traits",
- "thiserror 2.0.11",
+ "thiserror 2.0.12",
  "time",
 ]
 
@@ -5989,15 +5550,15 @@ dependencies = [
 
 [[package]]
 name = "smallvec"
-version = "1.13.2"
+version = "1.15.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67"
+checksum = "8917285742e9f3e1683f0a9c4e6b57960b7314d0b08d30d1ecd426713ee2eee9"
 
 [[package]]
 name = "socket2"
-version = "0.5.8"
+version = "0.5.9"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "c970269d99b64e60ec3bd6ad27270092a5394c4e309314b18ae3fe575695fbe8"
+checksum = "4f5fd57c80058a56cf5c777ab8a126398ece8e442983605d280a44ce79d0edef"
 dependencies = [
  "libc",
  "windows-sys 0.52.0",
@@ -6031,9 +5592,9 @@ checksum = "a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3"
 
 [[package]]
 name = "stacker"
-version = "0.1.17"
+version = "0.1.20"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "799c883d55abdb5e98af1a7b3f23b9b6de8ecada0ecac058672d7635eb48ca7b"
+checksum = "601f9201feb9b09c00266478bf459952b9ef9a6b94edb2f21eba14ab681a60a9"
 dependencies = [
  "cc",
  "cfg-if",
@@ -6056,9 +5617,9 @@ dependencies = [
 
 [[package]]
 name = "string_cache"
-version = "0.8.8"
+version = "0.8.9"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "938d512196766101d333398efde81bc1f37b00cb42c2f8350e5df639f040bbbe"
+checksum = "bf776ba3fa74f83bf4b63c3dcbbf82173db2632ed8452cb2d891d33f459de70f"
 dependencies = [
  "new_debug_unreachable",
  "parking_lot 0.12.3",
@@ -6125,7 +5686,7 @@ dependencies = [
  "proc-macro2",
  "quote",
  "rustversion",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -6138,7 +5699,7 @@ dependencies = [
  "proc-macro2",
  "quote",
  "rustversion",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -6176,9 +5737,9 @@ dependencies = [
 
 [[package]]
 name = "syn"
-version = "2.0.98"
+version = "2.0.100"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "36147f1a48ae0ec2b5b3bc5b537d267457555a10dc06f3dbc8cb11ba3006d3b1"
+checksum = "b09a44accad81e1ba1cd74a32461ba89dee89095ba17b32f5d03683b1b1fc2a0"
 dependencies = [
  "proc-macro2",
  "quote",
@@ -6202,7 +5763,7 @@ checksum = "c8af7666ab7b6390ab78131fb5b0fce11d6b7a6951602017c35fa82800708971"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -6234,9 +5795,9 @@ checksum = "55937e1799185b12863d447f42597ed69d9928686b8d88a1df17376a097d8369"
 
 [[package]]
 name = "tar"
-version = "0.4.43"
+version = "0.4.44"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "c65998313f8e17d0d553d28f91a0df93e4dbbbf770279c7bc21ca0f09ea1a1f6"
+checksum = "1d863878d212c87a19c1a610eb53bb01fe12951c0501cf5a0d65f724914a667a"
 dependencies = [
  "filetime",
  "libc",
@@ -6245,15 +5806,14 @@ dependencies = [
 
 [[package]]
 name = "tempfile"
-version = "3.16.0"
+version = "3.19.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "38c246215d7d24f48ae091a2902398798e05d978b24315d6efbc00ede9a8bb91"
+checksum = "7437ac7763b9b123ccf33c338a5cc1bac6f69b45a136c19bdd8a65e3916435bf"
 dependencies = [
- "cfg-if",
  "fastrand",
- "getrandom 0.3.1",
+ "getrandom 0.3.2",
  "once_cell",
- "rustix",
+ "rustix 1.0.5",
  "windows-sys 0.59.0",
 ]
 
@@ -6279,11 +5839,11 @@ dependencies = [
 
 [[package]]
 name = "terminal_size"
-version = "0.4.1"
+version = "0.4.2"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "5352447f921fda68cf61b4101566c0bdb5104eff6804d0678e5227580ab6a4e9"
+checksum = "45c6481c4829e4cc63825e62c49186a34538b7b2750b73b266581ffb612fb5ed"
 dependencies = [
- "rustix",
+ "rustix 1.0.5",
  "windows-sys 0.59.0",
 ]
 
@@ -6298,11 +5858,11 @@ dependencies = [
 
 [[package]]
 name = "thiserror"
-version = "2.0.11"
+version = "2.0.12"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "d452f284b73e6d76dd36758a0c8684b1d5be31f92b89d07fd5822175732206fc"
+checksum = "567b8a2dae586314f7be2a752ec7474332959c6460e02bde30d702a66d488708"
 dependencies = [
- "thiserror-impl 2.0.11",
+ "thiserror-impl 2.0.12",
 ]
 
 [[package]]
@@ -6313,26 +5873,20 @@ checksum = "4fee6c4efc90059e10f81e6d42c60a18f76588c3d74cb83a0b242a2b6c7504c1"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
 name = "thiserror-impl"
-version = "2.0.11"
+version = "2.0.12"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "26afc1baea8a989337eeb52b6e72a039780ce45c3edfcc9c5b9d112feeb173c2"
+checksum = "7f7cf42b4507d8ea322120659672cf1b9dbb93f8f2d4ecfd6e51350ff5b17a1d"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
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
@@ -6345,9 +5899,9 @@ dependencies = [
 
 [[package]]
 name = "time"
-version = "0.3.37"
+version = "0.3.41"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "35e7868883861bd0e56d9ac6efcaaca0d6d5d82a2a7ec8209ff492c07cf37b21"
+checksum = "8a7619e19bc266e0f9c5e6686659d394bc57973859340060a69221e57dbc0c40"
 dependencies = [
  "deranged",
  "itoa",
@@ -6362,15 +5916,15 @@ dependencies = [
 
 [[package]]
 name = "time-core"
-version = "0.1.2"
+version = "0.1.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "ef927ca75afb808a4d64dd374f00a2adf8d0fcff8e7b184af886c3c87ec4a3f3"
+checksum = "c9e9a38711f559d9e3ce1cdb06dd7c5b8ea546bc90052da6d06bb76da74bb07c"
 
 [[package]]
 name = "time-macros"
-version = "0.2.19"
+version = "0.2.22"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "2834e6017e3e5e4b9834939793b282bc03b37a3336245fa820e35e233e2a85de"
+checksum = "3526739392ec93fd8b359c8e98514cb3e8e021beb4e5f597b00a0221f8ed8a49"
 dependencies = [
  "num-conv",
  "time-core",
@@ -6386,7 +5940,7 @@ dependencies = [
  "hmac",
  "once_cell",
  "pbkdf2",
- "rand",
+ "rand 0.8.5",
  "rustc-hash 1.1.0",
  "sha2 0.10.8",
  "thiserror 1.0.69",
@@ -6416,9 +5970,9 @@ dependencies = [
 
 [[package]]
 name = "tinyvec"
-version = "1.8.1"
+version = "1.9.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "022db8904dfa342efe721985167e9fcd16c29b226db4397ed752a761cfce81e8"
+checksum = "09b3661f17e86524eccd4371ab0429194e0d7c008abb45f7a7495b1719463c71"
 dependencies = [
  "tinyvec_macros",
 ]
@@ -6431,9 +5985,9 @@ checksum = "1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20"
 
 [[package]]
 name = "tokio"
-version = "1.43.0"
+version = "1.44.2"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "3d61fa4ffa3de412bfea335c6ecff681de2b609ba3c77ef3e00e521813a9ed9e"
+checksum = "e6b88822cbe49de4185e3a4cbf8321dd487cf5fe0c5c65695fef6346371e9c48"
 dependencies = [
  "backtrace",
  "bytes",
@@ -6455,7 +6009,7 @@ checksum = "6e06d43f1345a3bcd39f6a56dbb7dcab2ba47e68e8ac134855e7e2bdbaf8cab8"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -6470,11 +6024,11 @@ dependencies = [
 
 [[package]]
 name = "tokio-rustls"
-version = "0.26.1"
+version = "0.26.2"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "5f6d0975eaace0cf0fcadee4e4aaa5da15b5c079146f2cffb67c113be122bf37"
+checksum = "8e727b36a1a0e8b74c376ac2211e40c2c8af09fb4013c60d910495810f008e9b"
 dependencies = [
- "rustls 0.23.22",
+ "rustls 0.23.25",
  "tokio",
 ]
 
@@ -6492,9 +6046,9 @@ dependencies = [
 
 [[package]]
 name = "tokio-util"
-version = "0.7.13"
+version = "0.7.14"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "d7fcaa8d55a2bdd6b83ace262b016eca0d79ee02818c5c1bcdf0305114081078"
+checksum = "6b9590b93e6fcc1739458317cccd391ad3955e2bde8913edf6f95f9e65a8f034"
 dependencies = [
  "bytes",
  "futures-core",
@@ -6530,7 +6084,7 @@ version = "0.19.15"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "1b5bb770da30e5cbfde35a2d7b9b8a2c4b8ef89548a7a6aeab5c9a576e3e7421"
 dependencies = [
- "indexmap 2.7.1",
+ "indexmap 2.9.0",
  "serde",
  "serde_spanned",
  "toml_datetime",
@@ -6539,13 +6093,13 @@ dependencies = [
 
 [[package]]
 name = "toml_edit"
-version = "0.22.23"
+version = "0.22.24"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "02a8b472d1a3d7c18e2d61a489aee3453fd9031c33e4f55bd533f4a7adca1bee"
+checksum = "17b4795ff5edd201c7cd6dca065ae59972ce77d1b80fa0a84d94950ece7d1474"
 dependencies = [
- "indexmap 2.7.1",
+ "indexmap 2.9.0",
  "toml_datetime",
- "winnow 0.7.0",
+ "winnow 0.7.6",
 ]
 
 [[package]]
@@ -6606,7 +6160,7 @@ checksum = "395ae124c09f9e6918a2310af6038fba074bcf474ac352496d5910dd59a2226d"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -6676,9 +6230,9 @@ checksum = "6af6ae20167a9ece4bcb41af5b80f8a1f1df981f6391189ce00fd257af04126a"
 
 [[package]]
 name = "typenum"
-version = "1.17.0"
+version = "1.18.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "42ff0bf0c66b8238c6f3b578df37d0b7848e55df8577b3f74f92a69acceeb825"
+checksum = "1dccffe3ce07af9386bfd29e80c0ab1a8205a2fc34e4bcd40364df902cfa8f3f"
 
 [[package]]
 name = "ucd-trie"
@@ -6700,9 +6254,9 @@ checksum = "75b844d17643ee918803943289730bec8aac480150456169e647ed0b576ba539"
 
 [[package]]
 name = "unicode-ident"
-version = "1.0.16"
+version = "1.0.18"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "a210d160f08b701c8721ba1c726c11662f877ea6b7094007e1ca9a1041945034"
+checksum = "5a5f39404a5da50712a4c1eecf25e90dd62b613502b7e925fd4e4d19b5c96512"
 
 [[package]]
 name = "unicode-normalization"
@@ -6797,11 +6351,11 @@ checksum = "06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821"
 
 [[package]]
 name = "uuid"
-version = "1.15.1"
+version = "1.16.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e0f540e3240398cce6128b64ba83fdbdd86129c16a3aa1a3a252efd66eb3d587"
+checksum = "458f7a779bf54acc9f347480ac654f68407d3aab21269a6e3c9f922acd9e2da9"
 dependencies = [
- "getrandom 0.3.1",
+ "getrandom 0.3.2",
 ]
 
 [[package]]
@@ -6886,9 +6440,9 @@ checksum = "9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423"
 
 [[package]]
 name = "wasi"
-version = "0.13.3+wasi-0.2.2"
+version = "0.14.2+wasi-0.2.4"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "26816d2e1a4a36a2940b96c5296ce403917633dff8f3440e9b236ed6f6bacad2"
+checksum = "9683f9a5a998d873c0d21fcbe3c083009670149a8fab228644b8bd36b2c48cb3"
 dependencies = [
  "wit-bindgen-rt",
 ]
@@ -6915,20 +6469,10 @@ dependencies = [
  "log",
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
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
@@ -6960,7 +6504,7 @@ checksum = "8ae87ea40c9f689fc23f209965b6fb8a99ad69aeeb0231408be24920604395de"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
  "wasm-bindgen-backend",
  "wasm-bindgen-shared",
 ]
@@ -7043,9 +6587,9 @@ source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "8d28bc49ba1e5c5b61ffa7a2eace10820443c4b7d1c0b144109261d14570fdf8"
 dependencies = [
  "ahash 0.8.11",
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
  "hashbrown 0.14.5",
- "indexmap 2.7.1",
+ "indexmap 2.9.0",
  "semver",
  "serde",
 ]
@@ -7094,7 +6638,7 @@ dependencies = [
  "either",
  "home",
  "once_cell",
- "rustix",
+ "rustix 0.38.44",
 ]
 
 [[package]]
@@ -7130,41 +6674,81 @@ checksum = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f"
 
 [[package]]
 name = "windows-core"
-version = "0.52.0"
+version = "0.61.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "4763c1de310c86d75a878046489e2e5ba02c649d185f21c67d4cf8a56d098980"
+dependencies = [
+ "windows-implement",
+ "windows-interface",
+ "windows-link",
+ "windows-result",
+ "windows-strings 0.4.0",
+]
+
+[[package]]
+name = "windows-implement"
+version = "0.60.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "33ab640c8d7e35bf8ba19b884ba838ceb4fba93a4e8c65a9059d08afcfc683d9"
+checksum = "a47fddd13af08290e67f4acabf4b459f647552718f683a7b415d290ac744a836"
 dependencies = [
- "windows-targets",
+ "proc-macro2",
+ "quote",
+ "syn 2.0.100",
+]
+
+[[package]]
+name = "windows-interface"
+version = "0.59.1"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "bd9211b69f8dcdfa817bfd14bf1c97c9188afa36f4750130fcdf3f400eca9fa8"
+dependencies = [
+ "proc-macro2",
+ "quote",
+ "syn 2.0.100",
 ]
 
+[[package]]
+name = "windows-link"
+version = "0.1.1"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "76840935b766e1b0a05c0066835fb9ec80071d4c09a16f6bd5f7e655e3c14c38"
+
 [[package]]
 name = "windows-registry"
-version = "0.2.0"
+version = "0.4.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e400001bb720a623c1c69032f8e3e4cf09984deec740f007dd2b03ec864804b0"
+checksum = "4286ad90ddb45071efd1a66dfa43eb02dd0dfbae1545ad6cc3c51cf34d7e8ba3"
 dependencies = [
  "windows-result",
- "windows-strings",
- "windows-targets",
+ "windows-strings 0.3.1",
+ "windows-targets 0.53.0",
 ]
 
 [[package]]
 name = "windows-result"
-version = "0.2.0"
+version = "0.3.2"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "1d1043d8214f791817bab27572aaa8af63732e11bf84aa21a45a78d6c317ae0e"
+checksum = "c64fd11a4fd95df68efcfee5f44a294fe71b8bc6a91993e2791938abcc712252"
 dependencies = [
- "windows-targets",
+ "windows-link",
 ]
 
 [[package]]
 name = "windows-strings"
-version = "0.1.0"
+version = "0.3.1"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "4cd9b125c486025df0eabcb585e62173c6c9eddcec5d117d3b6e8c30e2ee4d10"
+checksum = "87fa48cc5d406560701792be122a10132491cff9d0aeb23583cc2dcafc847319"
 dependencies = [
- "windows-result",
- "windows-targets",
+ "windows-link",
+]
+
+[[package]]
+name = "windows-strings"
+version = "0.4.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "7a2ba9642430ee452d5a7aa78d72907ebe8cfda358e8cb7918a2050581322f97"
+dependencies = [
+ "windows-link",
 ]
 
 [[package]]
@@ -7173,7 +6757,7 @@ version = "0.52.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d"
 dependencies = [
- "windows-targets",
+ "windows-targets 0.52.6",
 ]
 
 [[package]]
@@ -7182,7 +6766,7 @@ version = "0.59.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "1e38bc4d79ed67fd075bcc251a1c39b32a1776bbe92e5bef1f0bf1f8c531853b"
 dependencies = [
- "windows-targets",
+ "windows-targets 0.52.6",
 ]
 
 [[package]]
@@ -7191,14 +6775,30 @@ version = "0.52.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973"
 dependencies = [
- "windows_aarch64_gnullvm",
- "windows_aarch64_msvc",
- "windows_i686_gnu",
- "windows_i686_gnullvm",
- "windows_i686_msvc",
- "windows_x86_64_gnu",
- "windows_x86_64_gnullvm",
- "windows_x86_64_msvc",
+ "windows_aarch64_gnullvm 0.52.6",
+ "windows_aarch64_msvc 0.52.6",
+ "windows_i686_gnu 0.52.6",
+ "windows_i686_gnullvm 0.52.6",
+ "windows_i686_msvc 0.52.6",
+ "windows_x86_64_gnu 0.52.6",
+ "windows_x86_64_gnullvm 0.52.6",
+ "windows_x86_64_msvc 0.52.6",
+]
+
+[[package]]
+name = "windows-targets"
+version = "0.53.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "b1e4c7e8ceaaf9cb7d7507c974735728ab453b67ef8f18febdd7c11fe59dca8b"
+dependencies = [
+ "windows_aarch64_gnullvm 0.53.0",
+ "windows_aarch64_msvc 0.53.0",
+ "windows_i686_gnu 0.53.0",
+ "windows_i686_gnullvm 0.53.0",
+ "windows_i686_msvc 0.53.0",
+ "windows_x86_64_gnu 0.53.0",
+ "windows_x86_64_gnullvm 0.53.0",
+ "windows_x86_64_msvc 0.53.0",
 ]
 
 [[package]]
@@ -7207,48 +6807,96 @@ version = "0.52.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3"
 
+[[package]]
+name = "windows_aarch64_gnullvm"
+version = "0.53.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "86b8d5f90ddd19cb4a147a5fa63ca848db3df085e25fee3cc10b39b6eebae764"
+
 [[package]]
 name = "windows_aarch64_msvc"
 version = "0.52.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469"
 
+[[package]]
+name = "windows_aarch64_msvc"
+version = "0.53.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "c7651a1f62a11b8cbd5e0d42526e55f2c99886c77e007179efff86c2b137e66c"
+
 [[package]]
 name = "windows_i686_gnu"
 version = "0.52.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b"
 
+[[package]]
+name = "windows_i686_gnu"
+version = "0.53.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "c1dc67659d35f387f5f6c479dc4e28f1d4bb90ddd1a5d3da2e5d97b42d6272c3"
+
 [[package]]
 name = "windows_i686_gnullvm"
 version = "0.52.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66"
 
+[[package]]
+name = "windows_i686_gnullvm"
+version = "0.53.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "9ce6ccbdedbf6d6354471319e781c0dfef054c81fbc7cf83f338a4296c0cae11"
+
 [[package]]
 name = "windows_i686_msvc"
 version = "0.52.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66"
 
+[[package]]
+name = "windows_i686_msvc"
+version = "0.53.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "581fee95406bb13382d2f65cd4a908ca7b1e4c2f1917f143ba16efe98a589b5d"
+
 [[package]]
 name = "windows_x86_64_gnu"
 version = "0.52.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78"
 
+[[package]]
+name = "windows_x86_64_gnu"
+version = "0.53.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "2e55b5ac9ea33f2fc1716d1742db15574fd6fc8dadc51caab1c16a3d3b4190ba"
+
 [[package]]
 name = "windows_x86_64_gnullvm"
 version = "0.52.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d"
 
+[[package]]
+name = "windows_x86_64_gnullvm"
+version = "0.53.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "0a6e035dd0599267ce1ee132e51c27dd29437f63325753051e71dd9e42406c57"
+
 [[package]]
 name = "windows_x86_64_msvc"
 version = "0.52.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec"
 
+[[package]]
+name = "windows_x86_64_msvc"
+version = "0.53.0"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "271414315aff87387382ec3d271b52d7ae78726f5d44ac98b4f4030c91880486"
+
 [[package]]
 name = "winnow"
 version = "0.5.40"
@@ -7260,20 +6908,20 @@ dependencies = [
 
 [[package]]
 name = "winnow"
-version = "0.7.0"
+version = "0.7.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "7e49d2d35d3fad69b39b94139037ecfb4f359f08958b9c11e7315ce770462419"
+checksum = "63d3fcd9bba44b03821e7d699eeee959f3126dcc4aa8e4ae18ec617c2a5cea10"
 dependencies = [
  "memchr",
 ]
 
 [[package]]
 name = "wit-bindgen-rt"
-version = "0.33.0"
+version = "0.39.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "3268f3d866458b787f390cf61f4bbb563b922d091359f9608842999eaee3943c"
+checksum = "6f42320e61fe2cfd34354ecb597f86f413484a798ba44a8ca1165c58d42da6c1"
 dependencies = [
- "bitflags 2.8.0",
+ "bitflags 2.9.0",
 ]
 
 [[package]]
@@ -7288,12 +6936,6 @@ version = "0.5.5"
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
@@ -7311,21 +6953,14 @@ dependencies = [
 
 [[package]]
 name = "xattr"
-version = "1.4.0"
+version = "1.5.0"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "e105d177a3871454f754b33bb0ee637ecaaac997446375fd3e5d43a2ed00c909"
+checksum = "0d65cbf2f12c15564212d48f4e3dfb87923d25d611f2aed18f4cb23f0413d89e"
 dependencies = [
  "libc",
- "linux-raw-sys",
- "rustix",
+ "rustix 1.0.5",
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
@@ -7346,7 +6981,7 @@ checksum = "2380878cad4ac9aac1e2435f3eb4020e8374b5f13c296cb75b4620ff8e229154"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
  "synstructure",
 ]
 
@@ -7356,8 +6991,16 @@ version = "0.7.35"
 source = "registry+https://github.com/rust-lang/crates.io-index"
 checksum = "1b9b4fd18abc82b8136838da5d50bae7bdea537c574d8dc1a34ed098d6c166f0"
 dependencies = [
- "byteorder",
- "zerocopy-derive",
+ "zerocopy-derive 0.7.35",
+]
+
+[[package]]
+name = "zerocopy"
+version = "0.8.24"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "2586fea28e186957ef732a5f8b3be2da217d65c5969d4b1e17f973ebbe876879"
+dependencies = [
+ "zerocopy-derive 0.8.24",
 ]
 
 [[package]]
@@ -7368,27 +7011,38 @@ checksum = "fa4f8080344d4671fb4e831a13ad1e68092748387dfc4f55e356242fae12ce3e"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
+]
+
+[[package]]
+name = "zerocopy-derive"
+version = "0.8.24"
+source = "registry+https://github.com/rust-lang/crates.io-index"
+checksum = "a996a8f63c5c4448cd959ac1bab0aaa3306ccfd060472f85943ee0750f0169be"
+dependencies = [
+ "proc-macro2",
+ "quote",
+ "syn 2.0.100",
 ]
 
 [[package]]
 name = "zerofrom"
-version = "0.1.5"
+version = "0.1.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "cff3ee08c995dee1859d998dea82f7374f2826091dd9cd47def953cae446cd2e"
+checksum = "50cc42e0333e05660c3587f3bf9d0478688e15d870fab3346451ce7f8c9fbea5"
 dependencies = [
  "zerofrom-derive",
 ]
 
 [[package]]
 name = "zerofrom-derive"
-version = "0.1.5"
+version = "0.1.6"
 source = "registry+https://github.com/rust-lang/crates.io-index"
-checksum = "595eed982f7d355beb85837f651fa22e90b3c044842dc7f2c2842c086f295808"
+checksum = "d71e5d6e06ab090c67b5e44993ec16b72dcbaabc526db883a360057678b48502"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
  "synstructure",
 ]
 
@@ -7409,7 +7063,7 @@ checksum = "ce36e65b0d2999d2aafac989fb249189a141aee1f53c612c1f37d72631959f69"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
 
 [[package]]
@@ -7431,5 +7085,5 @@ checksum = "6eafa6dfb17584ea3e2bd6e76e0cc15ad7af12b09abdd1ca55961bed9b1063c6"
 dependencies = [
  "proc-macro2",
  "quote",
- "syn 2.0.98",
+ "syn 2.0.100",
 ]
diff --git a/Cargo.toml b/Cargo.toml
index 01c40298..036ae50f 100644
--- a/Cargo.toml
+++ b/Cargo.toml
@@ -94,3 +94,6 @@ opt-level = 3
 
 [profile.release.package.ic-frontend-canister]
 opt-level = 'z'
+
+[patch.crates-io]
+ic-transport-types = { git = "https://github.com/dfinity/agent-rs", rev = "9ebf6314ce2fcb36772c7d81d6d414b4628d6101" }
diff --git a/src/canisters/frontend/ic-certified-assets/Cargo.toml b/src/canisters/frontend/ic-certified-assets/Cargo.toml
index 8ba4baad..5daa2415 100644
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
index d869238c..01a28a2d 100644
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
