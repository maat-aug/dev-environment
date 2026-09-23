# Setup

Instructions for a Claude Code session bootstrapping a new machine from this repository. Follow these steps in order. If any step's target already has conflicting content, stop and ask the user before overwriting.

## 1. Own configuration (this repo's `claude/` folder)

1. Copy `claude/CLAUDE.md` → `~/.claude/CLAUDE.md`.
2. Merge `claude/settings.json` into `~/.claude/settings.json` — add/overwrite only the `model` and `attribution` keys, keep any other existing keys in the target file untouched.
3. Copy every file under `claude/agents/` → `~/.claude/agents/`.
4. Copy every folder under `claude/skills/` → `~/.claude/skills/`.

## 2. Third-party skills and plugins

Follow [`third-party-skills.md`](third-party-skills.md) exactly — it lists, per item, the confirmed official repository, the install method (plugin marketplace vs. manual sparse copy), and any caveats found during verification (licensing, scripts, security notes).

Before installing anything, re-verify that the listed repositories still exist and haven't materially changed — if one has moved, been renamed, or disappeared, stop and ask the user rather than guessing a replacement.

**Prerequisites to check first**:
- Git must be installed and on `PATH` (`git --version`) — required both for plugin marketplaces and for the sparse-checkout copies. Install via `winget install --id Git.Git -e` if missing, with the user's confirmation.
- Node.js must be installed and on `PATH` (`node --version`) — required for the Caveman skill installer. Install via `winget install --id OpenJS.NodeJS.LTS -e` if missing, with the user's confirmation.
- After installing either via winget in the same session, refresh `PATH` before using the new command (a fresh terminal picks it up automatically, but a tool-call session may still have the old `PATH` cached):
  ```powershell
  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
  ```

## 3. Verification

1. Start a new Claude Code session and confirm `~/.claude/CLAUDE.md` loaded (e.g. via `/memory`).
2. Run `/agents` and confirm `code-reviewer` is listed; test it on a small snippet.
3. Run `claude plugin list` and list `~/.claude/skills/` — confirm everything from this repo and from `third-party-skills.md` is present, nothing duplicated, and the Caveman **Proxy/Middleware are not installed** (skill only).
4. Make a throwaway test commit and confirm no `Co-Authored-By` trailer or AI mention appears — the `attribution` setting has a known intermittent issue on Windows (see `third-party-skills.md`), so this check is not optional.
5. Report back what was installed, from where, and any hook that runs on every prompt (e.g. Superpowers' `SessionStart` hook).
