#!/bin/bash
set -e
if [ ! -d engine ]; then
  echo "Cloning OpenRA engine..." >&2
  git clone https://github.com/OpenRA/OpenRA.git engine
fi

dotnet workload install wasm-tools
pushd engine >/dev/null
make all
popd >/dev/null

dotnet publish engine/OpenRA.Game -c Release -p:PublishAot=true -r browser-wasm
mkdir -p docs
cp -r engine/OpenRA.Game/bin/Release/net8.0/browser-wasm/publish/* docs/

echo "WebAssembly build copied to docs/"
