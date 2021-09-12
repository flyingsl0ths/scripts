#!/usr/bin/env bash

BIN_DIRECTORY="$HOME/.bin"

install_scripts() {
  cd scripts || exit

  for script in *.sh; do
    script_directory=$BIN_DIRECTORY/${script%.*}

    cp "$script" "$script_directory" && chmod +x "$script_directory"
  done
}

if [ -d "$BIN_DIRECTORY" ]; then
  install_scripts
else
  mkdir -p "$BIN_DIRECTORY"

  install_scripts
fi
