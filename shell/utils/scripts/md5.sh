#!/bin/sh

md5() {
    echo "$1" | md5sum | awk '{print $1}'
}

md5 "$1"
