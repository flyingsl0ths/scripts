#!/bin/env bash

EDITORS=("VSCode" "DrRacket" "Intellij" "Android-Studio" "Typora")

DMENU_FONT="JetBrainsMonoMedium Nerd Font Mono:size=13:antialias=true"
DMENU_PROMPT="Editor"

# themes
DRACULA="-nb #44475a -nf #f8f8f2 -sb #bd93f9 -sf #f8f8f2"
NORD="-nb #2E3440 -nf #D8DEE9 -sb #5E81AC -sf #2E3440"

DMENU_THEME=$NORD

launch_editor() {
    selection="$1"

    case "$selection" in
    "${EDITORS[0]}")
        vscodium
        ;;
    "${EDITORS[1]}")
        drracket &
        ;;
    "${EDITORS[2]}")
        idea &
        ;;
    "${EDITORS[3]}")
        android-studio &
        ;;
    "${EDITORS[4]}")
        typora &
        ;;
    esac
}

launch_editor_selector() {
    selected=$(echo "${EDITORS[*]}" | xargs printf %s'\n' |
        dmenu -l 3 -p "$DMENU_PROMPT" -m 0 -fn "$DMENU_FONT" $DMENU_THEME  -i)

    launch_editor "$selected"
}

launch_editor_selector "$selected"
