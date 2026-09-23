---
name: readme-pattern
description: Use when asked to write or update a project's README.md. Explores the actual repository before writing, never invents features/badges/steps, and follows a scannable structure inspired by Amplication's README.
---

Write the README in English, direct and professional tone (neither too informal nor academic/bureaucratic).

## Before writing

Explore the repository for real facts — never assume or invent:
- `.csproj`/`package.json`, `appsettings.*`, `Program.cs`/`Startup.cs` for the real stack
- Folder/layer structure (e.g. `*.Api`, `*.Domain`, `*.Application`, `*.Infrastructure` or equivalent)
- Architectural decisions visible in the code (Clean Architecture, DDD, JWT, soft delete, etc.) — from the code, not assumptions
- Tests, CI/CD (`.github/workflows`), Swagger/OpenAPI setup
- Related projects (e.g. a separate front-end repo) worth linking/mentioning

If something can't be confirmed by reading the repo, ask before assuming it.

## Rules

- Never invent features, badges, metrics, or installation steps that don't exist in the code
- Prioritize visual clarity: good markdown usage, short paragraphs, `<details>` for long blocks, scannable sections

## Structure (adapt what doesn't apply — reference level: [Amplication's README](https://github.com/amplication/amplication#readme))

1. Header — title + real badges only (build/CI if present, license, main language, framework version)
2. Short tagline explaining what the project does and what problem it solves
3. Features (use `<details>` if long)
4. Tech Stack — real technologies used, with brief justification for architectural choices
5. Architecture — explanation of the layers (ASCII/Mermaid diagram if possible)
6. Getting Started / Running locally — real steps based on what's in the code (connection strings, migrations, etc.)
7. API Documentation — if Swagger/OpenAPI exists, with local endpoint link
8. Project context — if relevant (academic, personal, etc.), tone still professional
9. Roadmap / Future Improvements — if it makes sense
10. License and Author
