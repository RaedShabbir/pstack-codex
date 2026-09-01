# pstack-codex

pstack-codex is a port of Lauren Tan's [pstack](https://github.com/cursor/plugins/tree/main/pstack) skills for seamless use in Codex. The original Cursor skill files remain unchanged; this repository only adds the Codex compatibility layer.

The upstream pstack source is preserved unchanged in [`pstack/`](pstack/). Codex-specific manifests, wrappers, and host mappings live outside that directory. This project is not affiliated with or endorsed by Lauren Tan, Cursor, or OpenAI.

This port is derived from the public [`cursor/plugins`](https://github.com/cursor/plugins) repository. Codex loads only pstack and the adapter files.

pstack remains copyright Lauren Tan and is distributed under its [MIT license](pstack/LICENSE).
