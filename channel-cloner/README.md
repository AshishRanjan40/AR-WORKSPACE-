# Channel Cloner Master Prompt

Skill name: `channel-research-and-video-generator` (by SAIDOX)

Reverse-engineer any YouTube channel, then produce a brand-new video in that channel's style — end to end:
**analyze → report → title → script → voiceover → images → (optionally) animate → assembly → preview → render.**

## Files
| File | What it is |
|---|---|
| `Channel-Cloner-Master-Prompt-by-SAIDOX.pdf` | Original PDF (source of truth) |
| `SKILL.md` | Full prompt text extracted from the PDF, in Markdown |
| `prompt_extracted.txt` | Raw text dump from the PDF |

## Pipeline (summary)
0. Capability check → pick engines / fallbacks
1. Ask for the channel
2. Deep-analyze the channel's TOP performers (titles · thumbnails · hooks · script format · pacing · story arc)
3. Deliver research as a neutral, downloadable HTML report
4. Offer 5–10 new titles → user picks one
5. Ask target script length
6. Write the script in the analyzed channel's style
7. Generate voiceover → play → approve (locks total length)
8. Ask animation style + aspect ratio + resolution
9. Shot-list table → approve → generate images (default 1 per 2.5s) + thumbnail
10. Branch: animate into clips, or stills (static cuts / Ken Burns)
11. Assemble synced to VO (HyperFrames or assembly plan)
12. Interactive preview → approve → final MP4 render → deliver file locations

## Tools referenced
- Claude (prompting) · Higgsfield AI (image/video) · CapCut (editing) · HyperFrames (assembly)
- Community: https://www.skool.com/saidox-faceless-vault-8176
