---
name: principle-separate-before-serializing-shared-state
description: "Apply when concurrent actors might write to the same file, branch, key, or state object. Eliminate the sharing first; serialize structurally only when one shared writer is a real invariant."
---

Read and follow [`pstack/skills/principle-separate-before-serializing-shared-state/SKILL.md`](../../pstack/skills/principle-separate-before-serializing-shared-state/SKILL.md) in full.

Apply [`CODEX_COMPAT.md`](../../CODEX_COMPAT.md) only where the upstream instructions use Cursor-specific host primitives. Resolve upstream relative paths from `pstack/skills/principle-separate-before-serializing-shared-state/`. The upstream instructions remain authoritative.
