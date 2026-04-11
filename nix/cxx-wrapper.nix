{
  writeScriptBin,
  clang,
}:

writeScriptBin "clang++wrapper" ''
  #!/usr/bin/env bash
  # A wrapper for clang++ that replaces the --target flag
  # Usage: put this script in your PATH before clang++ or call explicitly

  # Create a new argument list
  new_args=()

  for arg in "$@"; do
    if [[ "$arg" == "--target=arm64-apple-macosx"* ]]; then
      new_arg="''${arg/--target=arm64-apple-macosx*/--target=arm64-apple-darwin}"
      new_args+=("$new_arg")
    else
      new_args+=("$arg")
    fi
  done

  # Call the real clang++ with modified arguments
  echo "${clang}"/bin/clang++ "''${new_args[@]}" >> /tmp/x
  exec "${clang}"/bin/clang++ "''${new_args[@]}"
''
