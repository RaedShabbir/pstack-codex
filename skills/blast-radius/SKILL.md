---
name: blast-radius
description: "Find what a change could break somewhere else before it ships, beyond the diff, and prove the one fact it's safe because of by running real code instead of writing it up. Use for 'blast radius of X', 'what could this break', or reviewing a small diff you don't trust."
---

Read and follow [`pstack/skills/blast-radius/SKILL.md`](../../pstack/skills/blast-radius/SKILL.md) in full.

Apply [`CODEX_COMPAT.md`](../../CODEX_COMPAT.md) only where the upstream instructions use Cursor-specific host primitives. Resolve upstream relative paths from `pstack/skills/blast-radius/`. The upstream instructions remain authoritative.
