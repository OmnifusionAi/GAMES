#!/bin/bash
set -e
if [ ! -f engine/Makefile ]; then
  echo "Engine directory not found. Cloning..." >&2
  git clone https://github.com/OpenRA/OpenRA.git engine
fi

cd engine
make all
cd ..
cp -r mods engine/mods
./engine/launch-game.sh Game.Mod=ra_ps1
