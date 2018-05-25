#!/bin/bash

case "$1" in
  *ait)
    echo "in first"
    echo "$@"
    exec "$@"
    exit 1
    ;;
esac
#exec /usr/bin/assume "$@"
echo Hello