#!/usr/bin/env bash
# Usage: bash sync.sh "commit message"  → add → commit → push → usage report
set -e
cd "$(dirname "$0")"
git add -A
if git diff --cached --quiet; then echo "Nothing to sync."; else
  git commit -qm "${1:-sync $(date -u +'%Y-%m-%d %H:%M UTC')}"
  git push -q origin main
  echo "Pushed: $(git log --oneline -1)"
fi
SZ=$(du -sm --exclude=.git --exclude=.cache --exclude=node_modules --exclude=.venv . | cut -f1)
echo "Workspace: ${SZ} MB / 128 MB"
[ "$SZ" -gt 90 ] && echo "⚠️  90MB+ — heavy files GitHub pe hain, local se prune karo." || true
