# dev-environment

Personal development environment with base apps and reusable configurations for Claude Code and Codex. It keeps development conventions, skills, and agents versioned for setup across machines.

## What this is for

This repo maintains three parts:

| Part | Contents | Setup |
|---|---|---|
| Base apps | Development tools for the .NET, SQL Server, and frontend stack | [`apps/README.md`](apps/README.md) |
| Claude Code | Global instructions, settings, agents, personal skills, and third-party installation guidance | [`SETUP.md`](SETUP.md) |
| Codex | Global instructions, 33 skills with supporting resources, and two native custom agents | [`codex/README.md`](codex/README.md) |

Both agent configurations reflect the same personal development preferences, including Brazilian Portuguese conversation, English repository artifacts, and C#/.NET and Git conventions. Each has its own files and platform adaptations; updates are applied manually.

## Quick start

### Claude Code

On a new machine, just point a Claude Code session at this repository's URL and ask it to set itself up — it can follow [`SETUP.md`](SETUP.md) end to end on its own.

Manually, the short version:

```powershell
# from this repo's root
Copy-Item claude\CLAUDE.md "$env:USERPROFILE\.claude\CLAUDE.md"
Copy-Item claude\agents\* "$env:USERPROFILE\.claude\agents\" -Recurse -Force
Copy-Item claude\skills\* "$env:USERPROFILE\.claude\skills\" -Recurse -Force
# merge claude\settings.json into $env:USERPROFILE\.claude\settings.json by hand
```

Then follow [`third-party-skills.md`](third-party-skills.md) to install the verified third-party plugins/skills.

### Codex

Follow [`codex/README.md`](codex/README.md) to copy or merge:

- `codex/AGENTS.md` into `~/.codex/AGENTS.md`.
- The folders under `codex/skills/` into `~/.agents/skills/`.
- `codex/agents/*.toml` into `~/.codex/agents/`.

Use `$CODEX_HOME` instead of `~/.codex` when configured. Preserve existing instructions and check for duplicate skill names before copying. Opening or cloning this repository alone does not install the configuration.

The Codex collection includes Superpowers' 15 workflows, Caveman, Karpathy Guidelines, .NET and testing patterns, benchmarks, SQL Server guidance, frontend and React skills, and five personal development skills. The native `code-reviewer` and `code-simplifier` agents provide independent review and bounded simplification when supported by the runtime.

After activation, global instructions direct Codex to select the appropriate Superpowers workflow for development and planning. No manual activation is needed for each task. These are instruction-driven workflows, not background services; helper scripts run only when invoked for a task.

Start a fresh task and check that the skills are available. Try `$dev-code-review` on a small code snippet, then explicitly request the `code-reviewer` agent to verify independent execution. See the Codex guide for full verification steps.

Imported sources, adaptations, and source hashes are recorded in [`codex/third-party-skills.md`](codex/third-party-skills.md) and [`codex/sources.json`](codex/sources.json).

## Structure

```
dev-environment/
├── README.md              — this file
├── SETUP.md                — step-by-step instructions for a Claude Code session to bootstrap a new machine
├── apps/
│   ├── README.md            — base apps a new machine needs, with winget ids
│   └── install.ps1          — installs them
├── claude/
│   ├── CLAUDE.md            — global user-level instructions
│   ├── settings.json        — settings template (model, commit attribution)
│   ├── agents/
│   │   ├── code-reviewer.md
│   │   └── code-simplifier.md
│   └── skills/
│       ├── readme-pattern/
│       ├── ai-context-docs/
│       └── projeto-novo/
├── codex/
│   ├── README.md            — activation and verification guide
│   ├── AGENTS.md            — global development instructions
│   ├── agents/              — code-reviewer and code-simplifier TOML definitions
│   ├── skills/              — 33 personal and adapted third-party skills
│   ├── licenses/            — additional upstream license notices
│   ├── sources.json         — imported source paths and SHA-256 hashes
│   └── third-party-skills.md — provenance and Codex adaptations
└── third-party-skills.md   — Claude third-party sources and installation commands
```

## Updating

Changes to the global config are made in `~/.claude/` first (in an actual Claude Code session), then mirrored back into this repo's `claude/` folder, then committed and pushed. This repo does not auto-sync with `~/.claude/`.

For Codex, maintain the files under `codex/`, then copy or merge the changes into the installed locations. Keep source notices and provenance when updating imported skills. The Codex configuration does not automatically synchronize with Claude, installed profiles, or upstream repositories.
