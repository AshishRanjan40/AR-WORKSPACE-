#!/usr/bin/env bash
# Usage: bash sync.sh "commit message"
# add → commit → push → then keep the workspace LIGHT:
#   - .git history is dropped locally (GitHub keeps full history)
#   - heavy folders listed in .heavy are removed locally after push (GitHub keeps them)
set -e
cd "$(dirname "$0")"
git add -A
if git diff --cached --quiet; then echo "Nothing new to sync."; else
  git commit -qm "${1:-sync $(date -u +'%Y-%m-%d %H:%M UTC')}"
  git push -q origin main
  echo "Pushed: $(git log --oneline -1)"
fi
# --- slim down local copy ---
HEAVY=$(grep -v '^#' .heavy 2>/dev/null | sed 's/^/!/' | tr '\n' ' ')
git sparse-checkout set --no-cone '/*' $HEAVY 2>/dev/null || true
git fetch -q --depth=1 origin main && git reflog expire --expire=now --all
git repack -a -d -q && git prune-packed
rm -rf .cache/pip
SZ=$(du -sm --exclude=.cache --exclude=node_modules --exclude=.venv . | cut -f1)
echo "Workspace now: ${SZ} MB (limit 20 · red line 50 · cliff 128)"
[ "$SZ" -ge 20 ] && echo "🛑 OVER 20 MB — evict heavy folders NOW" || true
