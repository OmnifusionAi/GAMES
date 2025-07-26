#!/bin/bash
set -e
if [ ! -f engine/Makefile ]; then
  echo "Engine directory not found. Clone it with:" >&2
  echo "  git clone https://github.com/OpenRA/OpenRA.git engine" >&2
  exit 1
fi

cd engine
make all
cd ..
cp -r mods engine/mods
./engine/launch-game.sh Game.Mod=ra_ps1
