#!/usr/bin/env bash
# heh heh heh. installer scampers into the agents skills directory.
#
# Drops a single file: ~/.agents/skills/goblin-mode/SKILL.md
# Nothing else. No README. No goblin photo. The cave stays small.
#
# Codex CLI v0.117.0 removed ~/.codex/prompts/ and replaced custom slash
# commands with Skills. This installer puts gobbo in the right place.
# Invoke in Codex with: $goblin-mode

set -euo pipefail

REPO_RAW="https://raw.githubusercontent.com/BecerraIgnacio/goblin-mode/main"
TARGET_DIR="${HOME}/.agents/skills/goblin-mode"
TARGET_FILE="${TARGET_DIR}/SKILL.md"

mkdir -p "$TARGET_DIR"

# If running from a clone (skills/goblin-mode/SKILL.md is on disk next to the
# script), use the local file. Otherwise fetch from GitHub. This keeps the
# `curl | bash` install fully self-contained — no clone, no other files.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || true)"
LOCAL_SKILL="${SCRIPT_DIR}/skills/goblin-mode/SKILL.md"

if [ -f "$LOCAL_SKILL" ]; then
  cp "$LOCAL_SKILL" "$TARGET_FILE"
  source_label="(from local clone)"
else
  if ! command -v curl >/dev/null 2>&1; then
    echo "gobbo needs curl. install curl. try again. aborting."
    exit 1
  fi
  curl -fsSL "${REPO_RAW}/skills/goblin-mode/SKILL.md" -o "$TARGET_FILE"
  source_label="(downloaded from github)"
fi

# Best-effort cleanup of the old (removed) prompts location, if leftover
OLD_PROMPT="${HOME}/.codex/prompts/goblin-mode.md"
if [ -f "$OLD_PROMPT" ]; then
  rm -f "$OLD_PROMPT"
  echo "(removed old ${OLD_PROMPT} — that mechanism was discontinued in Codex v0.117.0)"
fi

cat <<EOF

  heh heh heh.

  goblin installed at ~/.agents/skills/goblin-mode/SKILL.md  ${source_label}

  open codex (restart if it was already running) and either:

      \$goblin-mode       # type \$ to open the picker, choose goblin-mode
      /skills             # list installed skills
      "go goblin"         # the model will auto-load it

  gobbo awaits. WHERE GOLD?

EOF
