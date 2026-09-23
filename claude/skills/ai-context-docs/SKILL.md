---
name: ai-context-docs
description: Use when asked to set up AI-context documentation for a new repository, so any future AI or new developer can operate the repo by reading only these documents. Never generate this without the user explicitly asking and confirming.
---

Goal: a new AI (or new developer) can operate the repository reading only these documents, without needing to ask the basics.

**Never generate or overwrite any of these files without the user explicitly asking and confirming first** — this applies even mid-flow, e.g. if a new business rule surfaces while implementing something else.

## Structure

- `docs/context/business-rules/*.feature` — business rules and use cases in **Gherkin** (Given/When/Then), one file per rule/use case. In .NET, link to executable tests via **Reqnroll** when the project has BDD tests, so the documentation stays in sync by being the test itself.
- `docs/context/glossary.md` — **Ubiquitous Language** glossary: domain terms and their exact meaning in the business.
- `docs/adr/000N-title.md` — **Architecture Decision Records**, Michael Nygard format. One immutable file per decision (context, decision, consequences).
- `AGENTS.md` at repo root — build/test commands, where things live, priorities for an AI operating this repo.
- `CLAUDE.md` at repo root, containing `@AGENTS.md` to import it.

All content in English, per the project's language rule.
