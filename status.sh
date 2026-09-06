#!/usr/bin/env bash
# Workspace usage vs limits (128 MB / 10,000 files), excluding .git & caches
cd "$(dirname "$0")"
SZ=$(du -sm --exclude=.git --exclude=.cache --exclude=node_modules --exclude=.venv . | cut -f1)
N=$(find . -type f -not -path './.git/*' -not -path './.cache/*' -not -path './node_modules/*' | wc -l)
echo "Workspace: ${SZ} MB / 128 MB  |  ${N} / 10000 files"
git status --short | head -20
git log --oneline -1
