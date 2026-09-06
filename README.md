# AR-WORKSPACE

Ashish ka Arena workspace backup — har project yahan folder-wise sync hota hai.

| Folder | Kya hai |
|---|---|
| `channel-cloner/` | SAIDOX Channel Cloner Master Prompt (PDF + SKILL.md + README) |
| `status.sh` | Workspace usage check (MB + file count) |
| `ink-explainer/` | Channel Cloner run on @inkexplainer96 — research report, thumbnails, transcript |

Sync: `bash sync.sh "message"` (auto add → commit → push).

## Rule
Workspace kabhi full nahi hona chahiye: har kaam ke baad `sync.sh` → GitHub. Heavy files (images/audio/video)
push hone ke baad local se hataye ja sakte hain; zaroorat pe `git checkout origin/main -- <path>` se wapas.

| `GITHUB-SYNC-PROMPT.md` | Paste-ready prompt: connect any session to GitHub, workspace never fills |
