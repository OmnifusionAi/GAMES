#!/bin/bash
# Usage: ./unpack_ps1.sh /path/to/disc.iso
ISO="$1"
if [ -z "$ISO" ]; then
  echo "Usage: $0 /path/to/disc.iso" >&2
  exit 1
fi

mkdir -p mods/ra_ps1/bits
# example extraction using psxtract (placeholder tool)
if ! command -v psxtract >/dev/null 2>&1; then
  echo "psxtract tool not found." >&2
  exit 1
fi
psxtract "$ISO" mods/ra_ps1/bits
