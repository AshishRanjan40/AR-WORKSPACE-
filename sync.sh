#!/usr/bin/env bash
# Usage: bash sync.sh "commit message"
set -e
cd "$(dirname "$0")"
git add -A
git diff --cached --quiet && { echo "Nothing to sync."; exit 0; }
git commit -qm "${1:-sync $(date -u +'%Y-%m-%d %H:%M UTC')}"
git push -q origin main
echo "Pushed: $(git log --oneline -1)"
