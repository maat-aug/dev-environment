---
name: dev-code-review
description: Review a code diff for concrete bugs and justified simplifications when requested or before committing substantive changes.
---

Review without editing. Prioritize the current diff and its surrounding callers, contracts, and tests unless a broader scope is requested. Follow the project's conventions across C#/.NET and other languages.

Prioritize correctness: plausible failures, races, null handling, broken contracts, and relevant uncovered edge cases. Then consider duplication, needless complexity, and avoidable costs when they have a concrete impact.

For each finding, provide a file and tight line location, severity, and a reproducible scenario: input or state leading to incorrect behavior. Separate confirmed findings from questions. Do not manufacture findings from stylistic preferences or hypothetical risks. If no actionable findings exist, say so and state any meaningful validation gap.

Report in Brazilian Portuguese. Use the current agent's review tools; this skill does not require a separate subagent or authorize any commit or push.
