#!/usr/bin/env sh

make clean || exit "$?"

sudo make install || {
  err="$?"
  printf >&2 %s\\n '' \
    "Did you install devel 'fontconfig', 'libXft', and 'libX11'?"
  exit "${err}"
}

make clean
