#!/usr/bin/env bash

EDITORS=("VSCode" "DrRacket" "Intellij" "Android-Studio" "Typora")

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
    selected=$(echo "${EDITORS[*]}" | xargs printf %s'\n' | dmenu -l 3 -p 'Editor' -m 0 -fn 'JetBrainsMonoMedium\ Nerd\ Font Mono:size=13' -nb '#2E3440' -nf '#D8DEE9' -sb '#5E81AC' -sf '#ECEFF4')

    launch_editor "$selected"
}

launch_editor_selector "$selected"
