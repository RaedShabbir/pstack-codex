---
name: principle-minimize-reader-load
description: "Apply when reviewing or shaping code that's hard to trace. Count layers between question and answer, and hidden state in the reader's head; collapse one-caller wrappers and shrink mutable scope."
---

Read and follow [`pstack/skills/principle-minimize-reader-load/SKILL.md`](../../pstack/skills/principle-minimize-reader-load/SKILL.md) in full.

Apply [`CODEX_COMPAT.md`](../../CODEX_COMPAT.md) only where the upstream instructions use Cursor-specific host primitives. Resolve upstream relative paths from `pstack/skills/principle-minimize-reader-load/`. The upstream instructions remain authoritative.
