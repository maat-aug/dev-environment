# Global development instructions

## Language and communication

- Speak Brazilian Portuguese, directly and concisely.
- Write repository artifacts in English: code, identifiers, comments, commits, PRs, issues, README files, ADRs, Gherkin, glossaries, and agent instructions.
- Explain meaningful decisions and report what changed, what was verified, and any remaining limitation. Keep brevity from removing necessary technical detail.

## Scope and workflow

- Inspect the repository and its local instructions before changing code. Follow established conventions; do not impose a new architecture on an existing project.
- For substantial work, clarify consequential unknowns, outline a short plan, implement focused changes, verify behavior, and review the diff. Handle small changes directly.
- Prefer the simplest solution that meets the requirements. State assumptions, avoid speculative abstractions, and do not refactor unrelated code.
- For behavior changes and bug fixes, use focused tests; reproduce bugs before fixing them when practical. Do not add tests that merely mirror implementation or test prose formatting.
- At the start of development work, read `using-superpowers` and follow the relevant workflow. Apply `karpathy-guidelines` to coding tasks. Apply `caveman` only to chat prose, preserving Brazilian Portuguese, clarity, and required progress updates. If a configured skill is unavailable, report that fact and continue with the equivalent basic workflow.
- Use `dev-code-review` before committing substantive code changes when available. Use `dev-code-simplify` when simplification is requested or clearly needed within the current scope.
- Do not create or overwrite documentation on your own initiative. A user request that includes documentation or configuration authorizes those artifacts; do not ask for the same permission again. Ask before adding unrelated README files, ADRs, or business documentation.
- Comment only on non-obvious reasons, constraints, or workarounds. Avoid comments that restate the code.

## C# and .NET

- First distinguish existing projects from new ones. Existing repositories keep their current framework and conventions unless a migration is requested.
- For new projects, use .NET 10 as the baseline. Before structuring the solution, ask which of these to adopt: DDD layers (Domain/Application/Infrastructure), SOLID, CQRS, rich or simple entities, and Value Objects using EF Core Complex Types.
- Unless existing conventions conflict: enable nullable reference types; use async/await for I/O with the `Async` suffix; use file-scoped namespaces, PascalCase for public members, and `_camelCase` for private fields.
- Use modern syntax when it improves clarity. Use `record` or `record struct` for DTOs and Value Objects, not entities.
- SQL Server is the default database unless the project or user specifies otherwise.
- Azure is a deployment option aligned with the user's experience, not an automatic choice. Mention Tauri as an option for desktop applications.

## Dependencies and cost

- Research current pricing and licensing before making dependency or infrastructure decisions that depend on them.
- If a dependency now charges for commercial use, prefer its last suitable free/open-source version. If that version has a relevant known vulnerability or cannot meet the requirements, propose a free alternative rather than a paid upgrade.
- For new systems, use `dev-new-project` when available to compare costs and migration paths before selecting infrastructure.

## Git

- Use GitHub Flow with short-lived feature branches and PRs. Keep `master` deployable where that is the project's default; respect an existing differently named default branch.
- Write imperative English commit messages, such as `Add validation for orders`.
- Do not add AI authorship, co-authorship trailers, or AI mentions to commits and PRs.
- Inspect status and diff before committing. Preserve unrelated user changes.
- Never push without explicit user confirmation. Ask before force pushes, bypassing hooks with `--no-verify`, or amending published commits.

## Specialized skills and agents

- Use `dotnet-patterns` and `csharp-testing` for relevant C#/.NET changes; `benchmark` for requested performance baselines and comparisons.
- Use `sql-expert`, `sqlserver-engineering`, or `sqlserver-cloud` according to the SQL task. Diagnostic SQL scripts are manually invoked only within the authorized database scope.
- Use `frontend-design` for UI creation, `webapp-testing` for browser verification, and `web-design-guidelines` for UI/accessibility reviews. Prefer existing connected browser tools when the session requires them.
- Use `vercel-react-best-practices` and `vercel-composition-patterns` for React work. Check the installed version; skip SSR/streaming advice for static exports.
- Use the `code-reviewer` custom agent for an independent review of substantive changes when subagent tools are available. It must not edit files. Use `code-simplifier` for a bounded simplification pass when requested or needed within the authorized scope. Keep concurrent editing scopes disjoint. If custom agents are unavailable, use the equivalent `dev-` skill locally and disclose that no independent agent ran.
- Superpowers plans and specifications needed for the requested workflow are authorized; unrelated documentation and pushes still require user authorization.
