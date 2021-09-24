#!/usr/bin/env bash

function md5() {
  echo -n "$1" | md5sum | awk '{print $1}'
}

md5 "$1"