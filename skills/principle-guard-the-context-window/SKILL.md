---
name: principle-guard-the-context-window
description: "Apply when context is filling up: large outputs, long files, repeated reads, fan-out planning. Route bulk to subagents; keep summaries in the main thread, not raw payloads."
---

Read and follow [`pstack/skills/principle-guard-the-context-window/SKILL.md`](../../pstack/skills/principle-guard-the-context-window/SKILL.md) in full.

Apply [`CODEX_COMPAT.md`](../../CODEX_COMPAT.md) only where the upstream instructions use Cursor-specific host primitives. Resolve upstream relative paths from `pstack/skills/principle-guard-the-context-window/`. The upstream instructions remain authoritative.
