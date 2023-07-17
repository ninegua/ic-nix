{ writeShellScript, stdenv, libiconv-static, libcxx, libcxxabi }:
writeShellScript "linker.sh" ''
  lzma=$(echo "$*"|sed -e 's/ /\n/g'|grep '^-llzma$')
  lz=$(echo "$*"|sed -e 's/ /\n/g'|grep '^-lz$')
  args=''${@//-lc++/}
  args=''${args//-lstdc++/}
  args=''${args//-lc++abi/}
  args=''${args//-liconv/}
  args=''${args//-lz/}
  args=''${args//-L \/usr\/local\/opt\/openssl@1.1\/lib/}
  ${stdenv.cc}/bin/c++ -L ${libiconv-static.out}/lib $args $lzma $lz \
    -nostdlib++ ${libcxx}/lib/libc++.a ${libcxxabi}/lib/libc++abi.a
''
