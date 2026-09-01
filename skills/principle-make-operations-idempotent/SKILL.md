---
name: principle-make-operations-idempotent
description: "Apply when designing commands, lifecycle steps, or processing loops that run amid crashes, restarts, and retries. Converge to the same end state regardless of partial prior runs."
---

Read and follow [`pstack/skills/principle-make-operations-idempotent/SKILL.md`](../../pstack/skills/principle-make-operations-idempotent/SKILL.md) in full.

Apply [`CODEX_COMPAT.md`](../../CODEX_COMPAT.md) only where the upstream instructions use Cursor-specific host primitives. Resolve upstream relative paths from `pstack/skills/principle-make-operations-idempotent/`. The upstream instructions remain authoritative.
