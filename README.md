# Red Alert PS1 Skirmish

This repo contains a mod for OpenRA that mimics the PS1 skirmish mode.

Place your game discs in `mods/ra_ps1/bits` using `unpack_ps1.sh`.

Clone the OpenRA engine into an `engine` directory next to this README using:

```bash
git clone https://github.com/OpenRA/OpenRA.git engine
```

You will also need the .NET 8 SDK installed.

Run `./build.sh` to compile and launch the desktop version. The script warns if
the engine folder is missing.

The WebAssembly build is deployed via GitHub Actions to GitHub Pages.
