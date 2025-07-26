#!/bin/bash
set -e
if [ ! -f engine/Makefile ]; then
  echo "Engine submodule missing. Run 'git submodule update --init --recursive'" >&2
  exit 1
fi

cd engine
make all
cd ..
cp -r mods engine/mods
./engine/launch-game.sh Game.Mod=ra_ps1
