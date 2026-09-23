# dev-environment

Personal dev environment setup — machine bootstrap (base apps) and [Claude Code](https://claude.com/product/claude-code) configuration, synced across every machine I develop on.

## What this is for

This repo is the single source of truth for two things: the base apps a new machine needs (see [`apps/`](apps/)), and my Claude Code global configuration — language/style rules, C#/.NET and Git conventions, agents, and a curated set of first-party and third-party skills, all verified before being added (see [`third-party-skills.md`](third-party-skills.md)).

## Quick start

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
└── third-party-skills.md   — verified third-party skills/plugins, with exact repo links and install commands
```

## Updating

Changes to the global config are made in `~/.claude/` first (in an actual Claude Code session), then mirrored back into this repo's `claude/` folder, then committed and pushed. This repo does not auto-sync with `~/.claude/`.
