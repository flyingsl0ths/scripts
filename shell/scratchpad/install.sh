#!/bin/sh

SCRIPT_NAME="scratchpad"

TEMPLATES_DIR="Templates"

BIN_DIRECTORY=".local/bin"

INSTALL_DIRECTORY="$HOME/$BIN_DIRECTORY"

echo "Locating $INSTALL_DIRECTORY in $HOME..."

[ -d "$HOME/$INSTALL_DIRECTORY" ] || (echo "$HOME/$INSTALL_DIRECTORY not found exiting..." && exit)

echo "Locating $HOME/$BIN_DIRECTORY..."

[ -d "$HOME/$BIN_DIRECTORY" ] || (echo "$HOME/$BIN_DIRECTORY not found exiting..." && exit)

echo "Found $BIN_DIRECTORY/"

echo "Installing script and templates"

install_script() {
    cp "$SCRIPT_NAME.sh" "$INSTALL_DIRECTORY/$SCRIPT_NAME"

    chmod +x "$INSTALL_DIRECTORY/$SCRIPT_NAME"

    ln -s "$(pwd)/$TEMPLATES_DIR" "$HOME"
}


install_script

echo "$SCRIPT_NAME installed!"
