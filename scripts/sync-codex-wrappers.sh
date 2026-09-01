#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
source_root="$repo_root/pstack/skills"
wrapper_root="$repo_root/skills"

mkdir -p "$wrapper_root"

for source_file in "$source_root"/*/SKILL.md; do
  skill_name="$(basename -- "$(dirname -- "$source_file")")"
  skill_dir="$wrapper_root/$skill_name"
  wrapper_file="$skill_dir/SKILL.md"
  mkdir -p "$skill_dir"

  awk '
    NR == 1 { print; next }
    /^---$/ { print; exit }
    /^disable-model-invocation:/ { next }
    /^mode:/ { next }
    /^icon:/ { next }
    /^color:/ { next }
    /^reminder:/ { next }
    /^name: Poteto Mode$/ { print "name: poteto-mode"; next }
    /^name: Make Bot UI$/ { print "name: make-bot-ui"; next }
    { print }
  ' "$source_file" > "$wrapper_file"

  printf '\nRead and follow [`pstack/skills/%s/SKILL.md`](../../pstack/skills/%s/SKILL.md) in full.\n\nApply [`CODEX_COMPAT.md`](../../CODEX_COMPAT.md) only where the upstream instructions use Cursor-specific host primitives. Resolve upstream relative paths from `pstack/skills/%s/`. The upstream instructions remain authoritative.\n' "$skill_name" "$skill_name" "$skill_name" >> "$wrapper_file"

  if sed -n '1,/^---$/p' "$source_file" | grep -q '^disable-model-invocation: true$'; then
    mkdir -p "$skill_dir/agents"
    printf 'interface:\n  display_name: "%s"\n  short_description: "Explicit upstream pstack skill"\npolicy:\n  allow_implicit_invocation: false\n' "$skill_name" > "$skill_dir/agents/openai.yaml"
  elif [[ -f "$skill_dir/agents/openai.yaml" ]]; then
    rm -f -- "$skill_dir/agents/openai.yaml"
  fi
done
