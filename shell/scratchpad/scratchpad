#!/usr/bin/env bash

KEEP_FILE="-k"
MAKE_SCRATCH_FILE="-s"
SHOW_HELP="-h"

found_template_file=0
file_name="scratchpad"

function get_main_file() {
    TEMPLATES_DIR="$HOME/templates"

    TEMPLATE_FILES=$(ls "$TEMPLATES_DIR")

    for main_file in ${TEMPLATE_FILES[*]}; do
        if [[ "$main_file" =~ ".$1"$ ]]; then
            found_template_file=1

            file_name="$main_file"
            break
        fi
    done
}

function create_scratch_file() {
    cwd=$(pwd)

    file_path="$cwd/$file_name"

    if [ "$found_template_file" -eq 1 ]; then
        cp "$TEMPLATES_DIR/$file_name" "$file_path"
    else
        file_path="$file_path.$FILE_EXTN"

        touch "$file_path"
    fi
}

function launch_editor() {
    FILE="$1"

    if [ "$EDITOR" = "" ]; then
        EDITOR="nano"
    fi

    "$EDITOR" "$FILE"
}

function open_file() {
    if [ "$1" = "$MAKE_SCRATCH_FILE" ]; then
        launch_editor "$file_path" && rm "$file_path"
    else
        launch_editor "$file_path"
    fi
}

function help_message() {
    echo "   'scratch file':
    A (potential) one time use file that serves
    as a template for whatever file extension given

    A simple script for creating 'scratchpad' files
    of whatever file extension is found in the
    '$HOME/templates' directory
    "
}

function main() {
    ACTION="$1"

    FILE_EXTN="$2"

    if [ "$ACTION" = "$SHOW_HELP" ]; then
        help_message
    elif [ "$ACTION" = "$KEEP_FILE" ] || [ "$ACTION" = "$MAKE_SCRATCH_FILE" ]; then
        get_main_file "$FILE_EXTN"

        create_scratch_file

        open_file "$ACTION"

    else
        FILE_EXTN="$ACTION"

        ACTION="$MAKE_SCRATCH_FILE"

        get_main_file "$FILE_EXTN"

        create_scratch_file

        open_file "$ACTION"

    fi
}

main "$1" "$2"
