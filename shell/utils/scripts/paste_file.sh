#!/bin/sh

paste_file() {
    FILE="$1"

    xclip -i -sel c <"$FILE"
}

paste_file "$1"
