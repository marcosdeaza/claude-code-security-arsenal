#!/usr/bin/env bash
#
# Claude Code Security Arsenal — installer
# Installs the bundled 22-skill core into ~/.claude/skills, and optionally
# clones the cataloged external collections from their own repos.
#
# Usage:
#   ./install.sh                 # install the bundled core (copy)
#   ./install.sh --link          # install the core as symlinks (git pull updates them)
#   ./install.sh --external      # also pick external collections to clone
#   ./install.sh --help
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$SCRIPT_DIR/skills"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
MODE="copy"
DO_EXTERNAL="no"

c() { printf '\033[%sm%s\033[0m' "$1" "$2"; }
info() { printf '%s %s\n' "$(c '36' '»')" "$1"; }
ok()   { printf '%s %s\n' "$(c '32' '✓')" "$1"; }
warn() { printf '%s %s\n' "$(c '33' '!')" "$1"; }

usage() { sed -n '2,13p' "$0" | sed 's/^# \{0,1\}//'; exit 0; }

for arg in "$@"; do
  case "$arg" in
    --link) MODE="link" ;;
    --external) DO_EXTERNAL="yes" ;;
    -h|--help) usage ;;
    *) warn "unknown option: $arg"; usage ;;
  esac
done

printf '\n%s\n' "$(c '1;32' 'Claude Code Security Arsenal')"
printf '%s\n\n' "$(c '2' 'curated by Marcos de Aza — authorized use only (see docs/ETHICS.md)')"

mkdir -p "$DEST"
info "Installing bundled core into: $DEST  (mode: $MODE)"

count=0
for dir in "$SKILLS_SRC"/[0-9][0-9]-*/; do
  [ -d "$dir" ] || continue
  name="$(basename "$dir")"
  target="$DEST/$name"
  if [ -e "$target" ] || [ -L "$target" ]; then
    warn "exists, replacing: $name"
    rm -rf "$target"
  fi
  if [ "$MODE" = "link" ]; then
    ln -s "${dir%/}" "$target"
  else
    cp -R "${dir%/}" "$target"
  fi
  count=$((count + 1))
done
ok "$count core skills installed."

# Make the shared layer available alongside the skills too.
if [ -d "$SKILLS_SRC/_shared" ]; then
  rm -rf "$DEST/_shared"
  if [ "$MODE" = "link" ]; then ln -s "$SKILLS_SRC/_shared" "$DEST/_shared"; else cp -R "$SKILLS_SRC/_shared" "$DEST/_shared"; fi
  ok "shared authorization/reporting layer installed."
fi

if [ "$DO_EXTERNAL" = "yes" ]; then
  printf '\n%s\n' "$(c '1' 'External collections (cloned from source — credit stays with authors):')"
  # name|repo|license
  externals=(
    "claude-red|https://github.com/SnailSploit/claude-red|MIT"
    "Claude-BugHunter|https://github.com/elementalsouls/Claude-BugHunter|MIT"
    "offensive-claude|https://github.com/hypnguyen1209/offensive-claude|MIT"
    "red-run|https://github.com/blacklanternsecurity/red-run|GPL-3.0"
    "secskills|https://github.com/trilwu/secskills|MIT"
    "cybersecurity-claude-skills|https://github.com/mahmutka/cybersecurity-claude-skills|MIT"
    "awesome-skills-security|https://github.com/Eyadkelleh/awesome-skills-security|no-license"
  )
  vendor="$SCRIPT_DIR/vendor"
  mkdir -p "$vendor"
  i=1
  for e in "${externals[@]}"; do
    printf '  %s) %-28s %s\n' "$i" "${e%%|*}" "$(c '2' "(${e##*|})")"
    i=$((i + 1))
  done
  printf '\n%s ' "Numbers to clone (space-separated, 'a' = all, Enter = skip):"
  read -r choice || choice=""
  [ "$choice" = "a" ] && choice="1 2 3 4 5 6 7"
  for n in $choice; do
    idx=$((n - 1))
    [ "$idx" -ge 0 ] && [ "$idx" -lt "${#externals[@]}" ] || { warn "skip $n"; continue; }
    entry="${externals[$idx]}"; nm="${entry%%|*}"; url="$(echo "$entry" | cut -d'|' -f2)"
    if [ -d "$vendor/$nm" ]; then
      info "updating $nm"; git -C "$vendor/$nm" pull --ff-only -q || warn "pull failed for $nm"
    else
      info "cloning $nm"; git clone --depth 1 -q "$url" "$vendor/$nm" || warn "clone failed for $nm"
    fi
  done
  ok "external collections are in ./vendor — see each repo's README/LICENSE for how to load its skills."
fi

printf '\n%s\n' "$(c '1;32' 'Done.')"
printf '%s\n' "Restart Claude Code (or reload skills) to pick up the new skills."
printf '%s\n\n' "Index: $(c '4' 'SKILLS.md')   ·   Ethics: $(c '4' 'docs/ETHICS.md')"
