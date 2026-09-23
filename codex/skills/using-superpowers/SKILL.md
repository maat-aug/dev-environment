---
name: using-superpowers
description: Select the appropriate Superpowers workflow when starting development, debugging, planning, or reviewing changes in Codex.
---

# Using Superpowers in Codex

Read relevant skills before their workflow begins. Choose by the task's actual needs, not a speculative match. Read `references/codex-tools.md` for tool and agent mapping.

- New features or design decisions: `brainstorming`, then `writing-plans` when substantial.
- Bugs: `systematic-debugging`, then `test-driven-development` for behavior fixes.
- Approved plans: `executing-plans`, or `subagent-driven-development` when independent delegated work is authorized and tools are available.
- Independent investigations: `dispatching-parallel-agents` when useful and authorized.
- Reviews: `requesting-code-review` and `receiving-code-review`.
- Completion: `verification-before-completion`, then `finishing-a-development-branch` within the user's Git authorization.
- Isolation: `using-git-worktrees` only when needed.
- Skill authoring: `writing-skills`; workflow diagnosis: `diagnosing-superpowers` when requested.

Follow the user's request and active AGENTS.md. Keep small edits proportional. Do not repeat approval questions already answered. Specs and plans within the requested development workflow are permitted; unrelated documentation requires authorization. No skill authorizes a push or destructive cleanup by itself.

This entrypoint replaces the Claude SessionStart hook through an explicit global AGENTS.md instruction. Do not install Claude hooks or plugin settings. A subagent with a bounded assignment follows its assigned workflow without restarting global discovery.
