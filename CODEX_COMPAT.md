# Codex host compatibility

This file adapts host mechanics only. The referenced files under `pstack/` are
authoritative and must be read in full. Do not alter, omit, soften, or reinterpret
their methodology, prompts, gates, counts, or verification requirements. If an
exact mapping below is unavailable, stop and report that limitation instead of
silently substituting different behavior.

## Skills and built-ins

- A pstack `/name` invocation means `$pstack:name` in Codex.
- Cursor `AskQuestion` means ask the user through Codex's user-input mechanism,
  preserving the original choices and gate.
- Cursor's todo list means the native Codex plan, with the same entries and state.
- Cursor's built-in `create-skill` means Codex's `$skill-creator`; preserve every
  draft, test, iteration, and review step required by the upstream instruction.
- `/goal` means the native Codex goal. Cursor `/loop` has no exact Codex command;
  do not claim unattended cadence unless a Codex automation or monitor was
  explicitly configured for this run.

## Subagents

- A Cursor `Task` call means a Codex subagent spawn. `generalPurpose` means a
  standard Codex subagent. Preserve the exact prompt, role, worker count, labels,
  independence, ordering, and aggregation rules.
- "All in one message" and `run_in_background: true` mean launch concurrently.
  Waiting, draining, resuming, and follow-ups use the corresponding Codex
  subagent controls.
- `readonly: true` means a read-only Codex agent/profile when available, otherwise
  an explicitly no-write subagent. `readonly: false` means the normal parent
  sandbox; any upstream no-write instruction still applies.
- `subagent_type: poteto-agent` means a standard Codex subagent that first reads
  `pstack/agents/poteto-agent.md` and the referenced poteto-mode skill in full.
  `subagent_type: Comment Sicko` does the same with
  `pstack/agents/comment-sicko.md`. Never paraphrase either agent file.
- Cursor `environment: local` means the current Codex environment. For a read-only
  worker, Cursor `environment: cloud` may use a local Codex subagent. A writing
  worker must receive its own worktree or other upstream-prescribed isolated
  output. Map `cloud_base_branch` to that worktree's starting ref. If isolation
  cannot be provided, stop rather than let concurrent writers share files.

## Models

- The Cursor model rule path `~/.cursor/rules/pstack-models.mdc` means
  `~/.codex/pstack-models.md`. Every pstack skill reads it explicitly, so Cursor's
  `alwaysApply` frontmatter is unnecessary.
- `$pstack:setup-pstack` detects available models from `codex debug models` and
  asks the user to map every unresolved upstream model token. A model choice is a
  Codex model slug plus reasoning effort when present.
- `gpt-5.6-sol-max` maps mechanically to model `gpt-5.6-sol` with effort `max`
  when that pair appears in the detected catalog. Grok, Fable, and Opus tokens
  remain unresolved unless the user maps them. Never pick replacements.
- Preserve every role, list entry, list length, panel shape, and diversity intent.
  `inherit-parent` and `auto` omit the explicit model and effort. If an unresolved
  token is needed, stop and direct the user to `$pstack:setup-pstack`.

## Paths, transcripts, and tools

- Project `.cursor/skills` maps to `.agents/skills`; user `~/.cursor/skills` maps
  to `~/.agents/skills`. Cursor plugin skill paths map to the active Codex plugin
  source/cache path. Resolve all other relative links from the original upstream
  file's directory.
- For the active transcript, use the exact `CODEX_SESSION_ID` under
  `~/.codex/sessions`. For recall across sessions, inspect only session metadata
  whose `cwd` equals the active workspace. Never scan unrelated workspaces.
- Cursor's available-tools map or exposed `mcps/` directory means Codex's current
  callable-tool inventory plus tool search or MCP resource discovery when
  available. Preserve the upstream one-investigator-per-source and gap-reporting
  behavior.

## Features without an exact Codex host primitive

- Cursor Cloud workers, cloud sleepers, and the Cursor dashboard are not implied
  by local Codex subagents. Use them only when an actual equivalent is available
  and explicitly configured.
- `make-bot-ui` targets Cursor Grok Bot webhooks. The bundled Benny pack targets
  Cursor Automations. Keep both source trees intact, but report them as
  Cursor-only unless the user supplies an exact Codex service to target.
- `cursor-team-kit` skills such as `deslop`, `control-cli`, and `control-ui` remain
  external dependencies. Do not replace them with a different method or skill.
- Cursor's persistent `mode`, crown icon, yellow color, and reminder metadata have
  no exact Codex skill-frontmatter equivalent. `$pstack:poteto-mode` applies the
  unchanged poteto instructions for the invoking task.
