---
name: dev-new-project
description: Plan architecture and infrastructure for a new system with researched cost comparisons and migration paths before selecting technologies.
---

Gather users, expected workload, latency, availability, budget, and operational constraints before choosing a stack. Follow global .NET preferences when applicable, and confirm architectural choices before scaffolding.

For each necessary component (hosting, database, cache, queues, authentication, CI/CD, observability), compare two or three realistic options using current official pricing and free-tier limits. Question whether each component is needed. Prefer low idle costs and scale-to-zero where the workload allows it.

Present monthly estimates for current usage, 10x, and 100x. State workload assumptions, currency, region, research date, and excluded costs. Distinguish estimates from provider guarantees. Explain when each choice becomes expensive and the migration path.

Apply the user's free-dependency preference. Treat Azure as one possible provider rather than the default answer. Propose ADRs; create them only when documentation is included in the user's authorization. Do not impose this discovery process on ordinary maintenance of existing systems.
