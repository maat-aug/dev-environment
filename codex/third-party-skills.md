# Third-party sources and Codex adaptations

Imported on 2026-09-23 from the user's existing local installation, not downloaded or represented as the latest upstream versions. `sources.json` records every imported source file's path and SHA-256 before adaptation. Paths beginning with `~` are relative to the user's home directory. No credentials, conversations, or settings were copied.

| Source | Local location | Included |
|---|---|---|
| obra/superpowers | `~/.claude/plugins/cache/superpowers-marketplace/superpowers/6.4.1/skills` | All 15 skill directories, with references and helpers; plugin record commit `5bf4e78011075bcfc0dc295f0724994cd123ee71` |
| multica-ai/andrej-karpathy-skills | `~/.claude/plugins/cache/karpathy-skills/andrej-karpathy-skills/1.0.0/skills/karpathy-guidelines` | Skill; plugin record commit `2c606141936f1eeef17fa3043a72095b4765b9c2` |
| JuliusBrussee/caveman | `~/.claude/skills/caveman` | Single skill only; no Proxy, Middleware, or cloud integration |
| affaan-m/ECC | `~/.claude/skills/{dotnet-patterns,csharp-testing,benchmark}` | Three installed skill directories |
| hmohamed01/SQL-Expert | `~/.claude/skills/sql-expert` | Skill and references |
| chrishuffman5/sqlserver | `~/.claude/skills/{sqlserver-cloud,sqlserver-engineering}` | Skills, references, and 13 SQL scripts |
| anthropics/skills | `~/.claude/skills/{frontend-design,webapp-testing}` | Skills, licenses, Python helper and examples |
| vercel-labs/agent-skills | `~/.claude/skills/{web-design-guidelines,react-best-practices,composition-patterns}` | Skills and bundled rule documents |

Repository identities follow the existing root provenance document. Manually copied installations do not provide a verified commit here; source hashes identify the exact local snapshots instead. Karpathy Guidelines is a third-party interpretation, not a claim of authorship or endorsement by Andrej Karpathy.

## Adaptations

- Added Codex tool/authorization notes to imported entrypoints and removed the `superpowers:` plugin namespace from Markdown cross-references. The standalone skill names remain discoverable.
- Rewrote `using-superpowers` and its Codex tool mapping for the actual native workflow, current custom-agent TOML discovery, inherited models, and platform permissions. No Claude hooks or marketplace configuration are included.
- Global instructions load the workflow and coding guidance; Caveman affects only Portuguese chat and must preserve clarity and required updates. Repository artifacts remain normal English.
- Preserved the local FluentAssertions `7.*` adjustment and changed its reference to global `AGENTS.md`.
- Added static-export and React-version compatibility notes to the Vercel skills.
- Preserved support files and scripts rather than replacing the technical content with short summaries. Scripts are not executed on installation. Existing upstream shell examples may require Windows adaptation.
- Created native review and simplification agents from the roles already defined in this repository. The reviewer is read-only; the simplifier inherits permissions. Neither pins a Claude model or uses Claude tool declarations.

## Notices and scope

Bundled license files and metadata are preserved; Superpowers' root MIT license is retained at `licenses/superpowers-LICENSE`. Several local snapshots have only inline license metadata or no standalone license text. This records the local source state, not a new license grant or a legal review for redistribution.

References to additional upstream skills do not mean those skills are installed. This collection matches the named development skills in the existing Claude setup, not unrelated synced office/document skills or discarded skills. No database diagnostic or browser integration has been exercised against a live service as part of preparing these files.
