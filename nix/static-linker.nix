{ writeShellScript, stdenv, libiconv-static, libcxx, libcxxabi }:
writeShellScript "linker.sh" ''
  args=''${@//-lc++/}
  args=''${args//-lstdc++/}
  args=''${args//-lc++abi/}
  args=''${args//-liconv/}
  ${stdenv.cc}/bin/c++ -L ${libiconv-static.out}/lib $args \
    -nostdlib++ ${libcxx}/lib/libc++.a ${libcxxabi}/lib/libc++abi.a
''

