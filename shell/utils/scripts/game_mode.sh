#!/usr/bin/env bash

game_mode() {
  PROGRAM="$1"

  gamemoderun "$PROGRAM"

  kill "$(pgrep gamemoded)"
}

game_mode "$1"
