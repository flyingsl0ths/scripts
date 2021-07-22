#!/usr/bin/env bash

SCRIPT_NAME="scratchpad"

TEMPLATES_DIR="templates"

chmod +x "$SCRIPT_NAME"

INSTALL_SCRIPT_CWD=$(pwd)
INSTALL_DIRECTORY=".bin"

echo "Locating $HOME/$INSTALL_DIRECTORY..."

cd "$HOME/$INSTALL_DIRECTORY" || (echo "$HOME/$INSTALL_DIRECTORY not found exiting..." && exit)

echo "Found $INSTALL_DIRECTORY/"

echo "Creating symlinks in $HOME/$INSTALL_DIRECTORY  && $HOME"
ln -s "$INSTALL_SCRIPT_CWD/$SCRIPT_NAME" .
ln -s "$INSTALL_SCRIPT_CWD/$TEMPLATES_DIR" "$HOME"

echo "$SCRIPT_NAME installed!"
