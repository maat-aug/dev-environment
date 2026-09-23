---
name: dev-code-simplify
description: Simplify recently changed code while preserving behavior when requested or when necessary within an authorized implementation.
---

Read the relevant code, local instructions, callers, and tests. Keep changes within the requested scope and preserve observable behavior, public contracts, and error handling.

Prefer descriptive names, clearer conditions, early returns where helpful, and removal of demonstrably dead code or needless abstraction. Consolidate duplication only when doing so reduces complexity. Do not replace async patterns, reorganize architecture, or extract helpers merely to shorten a file.

Remove temporary debugging output only when it is demonstrably accidental; preserve intentional operational logging and CLI output. Follow existing language and formatting conventions.

Run appropriate existing checks and add focused regression coverage only when needed. Explain the simplification and verification. Do not claim behavior is unchanged based on formatting checks alone. This skill does not authorize commits, pushes, or unrelated refactoring.
