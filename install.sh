#!/usr/bin/env bash
# heh heh heh. installer scampers into ~/.codex/prompts/

set -e

PROMPTS_DIR="${HOME}/.codex/prompts"
SOURCE_FILE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/goblin-mode.md"

if [ ! -f "$SOURCE_FILE" ]; then
  echo "gobbo cannot find goblin-mode.md. did the elves move it? aborting."
  exit 1
fi

mkdir -p "$PROMPTS_DIR"
cp "$SOURCE_FILE" "$PROMPTS_DIR/goblin-mode.md"

cat <<'EOF'

  heh heh heh.

  goblin installed at ~/.codex/prompts/goblin-mode.md

  open codex and type:

      /goblin-mode

  gobbo awaits. WHERE GOLD?

EOF
