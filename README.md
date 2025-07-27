# Red Alert PS1 Skirmish

This repo contains a mod for OpenRA that mimics the PS1 skirmish mode.

Place your game discs in `mods/ra_ps1/bits` using `unpack_ps1.sh`.

Clone the OpenRA engine into an `engine` directory next to this README:

```bash
git clone https://github.com/OpenRA/OpenRA.git engine
```

After cloning, run `./build.sh` to compile and launch the game. The script
checks for the engine folder and prints instructions if it is missing.

You will also need the .NET 8 SDK installed.

For WebAssembly builds you must install the WASM tools workload:

```bash
dotnet workload install wasm-tools
```

The WebAssembly build is deployed via GitHub Actions to GitHub Pages.

The build workflow outputs WebAssembly files under `docs/` so they can be
served via GitHub Pages. Open `docs/index.html` after a successful build to
play the mod in your browser.
