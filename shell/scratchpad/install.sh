#!/usr/bin/env bash

SCRIPT_NAME="scratchpad"

TEMPLATES_DIR="templates"

BIN_DIRECTORY=".bin"

INSTALL_DIRECTORY="$HOME/$BIN_DIRECTORY"

install_script() {
  cp "$SCRIPT_NAME.sh" "$INSTALL_DIRECTORY/$SCRIPT_NAME"

  chmod +x "$INSTALL_DIRECTORY/$SCRIPT_NAME"

  ln -s "$(pwd)/$TEMPLATES_DIR" "$HOME"
}

echo "Locating $HOME/$BIN_DIRECTORY..."

[ -d "$HOME/$BIN_DIRECTORY" ] || (echo "$HOME/$BIN_DIRECTORY not found exiting..." && exit)

echo "Found $BIN_DIRECTORY/"

echo "Installing script and templates directory"

install_script

echo "$SCRIPT_NAME installed!"
