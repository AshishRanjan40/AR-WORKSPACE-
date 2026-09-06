#!/usr/bin/env bash
# Usage: bash restore.sh <folder>   → pull a heavy folder back from GitHub temporarily
cd "$(dirname "$0")" && git sparse-checkout add "$1" && echo "Restored $1 (run sync.sh to slim again)"
