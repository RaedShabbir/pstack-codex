---
name: principle-boundary-discipline
description: "Apply when wiring validation, error handling, or framework adapters. Concentrate guards at system boundaries (CLI, config, network, external APIs); trust internal types and keep business logic in pure functions."
---

Read and follow [`pstack/skills/principle-boundary-discipline/SKILL.md`](../../pstack/skills/principle-boundary-discipline/SKILL.md) in full.

Apply [`CODEX_COMPAT.md`](../../CODEX_COMPAT.md) only where the upstream instructions use Cursor-specific host primitives. Resolve upstream relative paths from `pstack/skills/principle-boundary-discipline/`. The upstream instructions remain authoritative.
