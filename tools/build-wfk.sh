#!/bin/sh
set -eu
cd "$(dirname "$0")"
if [ -z "${CC:-}" ]; then
    if command -v aarch64-linux-musl-gcc >/dev/null 2>&1; then
        CC=aarch64-linux-musl-gcc
    else
        CC=aarch64-linux-gnu-gcc
    fi
fi
OUT=../app/src/main/assets/wfk
"$CC" -O2 -Wall -Wextra -static -s -pthread -o "$OUT" wfk.c
file "$OUT"
ls -lh "$OUT"
