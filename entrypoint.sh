#!/bin/bash

case "$1" in
  *ait)
    exec "$@"
    exit 1
    ;;
esac
#exec /usr/bin/assume "$@"
echo Hello