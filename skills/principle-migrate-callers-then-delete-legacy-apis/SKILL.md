---
name: principle-migrate-callers-then-delete-legacy-apis
description: "Apply when introducing a new internal API while old callers still exist. Migrate callers and delete the old API in the same wave instead of preserving compatibility layers."
---

Read and follow [`pstack/skills/principle-migrate-callers-then-delete-legacy-apis/SKILL.md`](../../pstack/skills/principle-migrate-callers-then-delete-legacy-apis/SKILL.md) in full.

Apply [`CODEX_COMPAT.md`](../../CODEX_COMPAT.md) only where the upstream instructions use Cursor-specific host primitives. Resolve upstream relative paths from `pstack/skills/principle-migrate-callers-then-delete-legacy-apis/`. The upstream instructions remain authoritative.
