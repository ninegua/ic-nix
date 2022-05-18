{ writeShellScript, stdenv, libiconv-static, libcxx, libcxxabi }:
writeShellScript "linker.sh" ''
  args=''${@//-lc++/}
  args=''${args//-lstdc++/}
  args=''${args//-lc++abi/}
  args=''${args//-liconv/}
  args=''${args//-L \/usr\/local\/opt\/openssl@1.1\/lib/}
  ${stdenv.cc}/bin/c++ -L ${libiconv-static.out}/lib $args \
    -nostdlib++ ${libcxx}/lib/libc++.a ${libcxxabi}/lib/libc++abi.a
''
