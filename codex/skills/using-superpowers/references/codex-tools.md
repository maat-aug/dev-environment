# Codex tool mapping

Use the tool APIs exposed by the current Codex session; their schema takes precedence over upstream examples.

- Skills: read the installed SKILL.md. These are standalone local skills, so use names such as `brainstorming`, without a plugin prefix.
- Files: use available read/search/patch tools. Use PowerShell commands on Windows and POSIX commands only in an actual POSIX shell.
- Plans: use the available planning mechanism or a concise checklist. Do not assume TodoWrite or EnterPlanMode exists.
- Subagents: use the current spawn/message/wait API when authorized. Inherit model settings by default. Never pass parameters missing from the actual tool schema. Full-history forks must not receive model overrides when the runtime forbids them.
- Roles: `code-reviewer` and `code-simplifier` are installed as standalone TOML files under `~/.codex/agents/`. When the tool does not expose role selection, read the role file and pass its bounded task instructions to a supported subagent, or perform a sequential review.
- Parallelism: only delegate independent bounded work. Await completion and integrate findings. Keep overlapping edits sequential.
- Git: inspect the current worktree before creating another. Respect the user's commit/push permissions and existing changes; never blindly stage all files or remove worktrees from an upstream example.
- Permissions: keep sandbox restrictions and approval requirements. A failed operation is not permission to bypass them.

Current releases discover custom agent TOML files directly. If multi-agent tools are disabled, inspect the existing `[agents]` configuration; `enabled = true` enables them. Do not replace the user's configuration or pin a model merely to use these skills.

Source: https://learn.chatgpt.com/docs/agent-configuration/subagents
