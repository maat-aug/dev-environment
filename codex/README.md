# Codex development configuration

Personal Codex instructions, third-party skills adapted from the local Claude installation, and native custom agents. The Claude files remain untouched.

## Included

| Area | Skills or agents |
|---|---|
| Personal conventions | Global `AGENTS.md`; `dev-readme`, `dev-context-docs`, `dev-new-project`, `dev-code-review`, `dev-code-simplify` |
| Superpowers 6.4.1 | All 15 installed workflows, including brainstorming, plans, TDD, debugging, review, worktrees, verification, and delegated execution |
| Communication and coding discipline | `caveman`, `karpathy-guidelines` |
| .NET | `dotnet-patterns`, `csharp-testing`, `benchmark` |
| SQL Server | `sql-expert`, `sqlserver-cloud`, `sqlserver-engineering` |
| Frontend | `frontend-design`, `webapp-testing`, `web-design-guidelines` |
| React | `vercel-react-best-practices` (folder `react-best-practices`), `vercel-composition-patterns` (folder `composition-patterns`) |
| Native agents | `agents/code-reviewer.toml`, `agents/code-simplifier.toml` |

Total: 33 skills and two custom agents. Supporting references, examples, and scripts accompany the imported skills. See [provenance and adaptations](third-party-skills.md) and the exact source hashes in [sources.json](sources.json).

## Activate once

Files in this directory are repository templates, not a global installation.

1. Copy `AGENTS.md` to `~/.codex/AGENTS.md` (or `$CODEX_HOME/AGENTS.md`). Merge with existing instructions instead of overwriting them. Check whether `AGENTS.override.md` would take precedence.
2. Copy all immediate folders under `skills/` into `~/.agents/skills/`. Keep each folder intact, including references and scripts. Check for duplicate skill names in existing installations or plugins before copying. This discovery location may also be read by other compatible agents.
3. Copy both TOML files from `agents/` to `~/.codex/agents/` (or `$CODEX_HOME/agents/`). Review any same-named files before replacing them. These agents inherit the parent's model; the reviewer requests a read-only sandbox.
4. Start a fresh Codex task. Confirm that global instructions and the 33 skills are available. Restart the app if discovery has not refreshed.
5. Ask for a small independent review using `code-reviewer`, then a bounded simplification using `code-simplifier`. Confirm the reviewer makes no edits and the simplifier reports relevant checks. Agent availability depends on the installed Codex runtime and its exposed tools.

For project-only installation, merge relevant global rules into the project's `AGENTS.md`, copy skills into `.agents/skills/`, and agent TOMLs into `.codex/agents/`. Do not duplicate the same skills at both scopes.

No replacement `config.toml` is needed. Current Codex releases enable subagents by default; if explicitly disabled, merge `enabled = true` into the existing `[agents]` table. Preserve model, authentication, plugin, and permission settings.

## Runtime behavior

The global instructions activate Superpowers routing and Karpathy guidance for development and Caveman for concise chat only. Claude's SessionStart hook is replaced by that instruction, not executed in Codex. The copied skills are local adaptations, not marketplace plugin installations.

Use native Codex tools instead of Claude-specific tool names. The entrypoints contain adaptation notes, and Superpowers includes a rewritten Codex tool reference. The two native agents coexist with the personal review/simplification skills; those skills provide a fallback when a runtime cannot dispatch custom agents.

Python/Playwright are needed only for the web-testing helper when used. Shell helpers require a compatible shell; adapt commands on Windows. SQL scripts are not run during setup and require the intended database and permissions. Additional sibling skills mentioned upstream are not assumed installed.

Updates are deliberate copy/merge operations. There is no automatic synchronization with Claude or upstream repositories.

## Official references

- [Instructions](https://learn.chatgpt.com/docs/agent-configuration/agents-md)
- [Skills](https://learn.chatgpt.com/docs/build-skills)
- [Custom agents and TOML schema](https://learn.chatgpt.com/docs/agent-configuration/subagents)
