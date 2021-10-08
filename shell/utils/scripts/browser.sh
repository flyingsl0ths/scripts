#!/usr/bin/env bash

launch_browser() {
    pgrep searx-run

    found_instance=$?

    if [ "$found_instance" -eq 1 ]; then
        (nohup searx-run &)
    fi

    firedragon

    if [ "$found_instance" -eq 1 ]; then
        kill "$(pgrep searx-run)"
    fi
}

launch_browser
