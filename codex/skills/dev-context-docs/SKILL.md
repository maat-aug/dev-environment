---
name: dev-context-docs
description: Create or update repository context documentation when explicitly requested, including AGENTS.md, business rules, glossaries, and ADRs.
---

Make the requested documentation sufficient for a new developer or agent to understand how to operate the repository. Inspect the implementation and distinguish observed behavior from proposed decisions. Write in English.

Choose only the artifacts covered by the request:

- Root `AGENTS.md`: verified build/test commands, repository layout, and relevant working conventions.
- `docs/context/business-rules/*.feature`: Gherkin use cases and business rules, grouped by coherent rule or use case. In .NET projects already using BDD tests, connect these to Reqnroll where appropriate.
- `docs/context/glossary.md`: domain terms and their business meaning.
- `docs/adr/000N-title.md`: numbered Michael Nygard ADRs with context, decision, and consequences. Preserve accepted decisions; supersede them with a new ADR when appropriate.

Do not generate the entire set when only one artifact was requested. Ask before documenting unrelated decisions discovered during other work. Existing authorization is sufficient; do not ask twice. Do not create or edit Claude configuration as part of this skill.
