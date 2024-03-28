#!/bin/bash

set -eE

SRC_PATH=/usr/sbin/cryptosmite.tar.xz
DEST_PATH=/opt/cryptosmite
EXE="$DEST_PATH"/cryptosmite.sh

rmdir "$DEST_PATH" >/dev/null 2>&1 || :
if ! [ -d "$DEST_PATH" ]; then
    if ! [ -f "$SRC_PATH" ]; then
        exit 1
    fi
    mkdir -p "$DEST_PATH"
    tar -xJf "$SRC_PATH" -C "$DEST_PATH" --checkpoint=.100
fi

if ! [ -f "$EXE" ]; then
    echo "$EXE not found!"
    exit 1
fi

chmod +x "$EXE"
cd "$DEST_PATH"
"$EXE" "$@"
