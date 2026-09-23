---
name: projeto-novo
description: Use when designing a new system from scratch (infrastructure, technology choices, architecture). Forces a cost-driven, research-backed comparison of options before any technical decision is locked in.
---

Mandatory script when designing a system from scratch — do not skip steps or jump straight to a stack choice.

1. **Gather real requirements** first: users, expected volume, latency, availability — before picking any technology.
2. For each component (hosting, database, cache, queues, auth, CI/CD, observability), compare **2–3 options with price and free-tier limits researched on the web at the time of the decision** — never from memory, prices and limits change.
3. Prefer what scales to zero (static hosting, serverless, Azure SQL serverless/free offer, managed free tiers). Question whether each component needs to exist at all.
4. Build a monthly cost estimate table for 3 scenarios: current usage, 10×, and 100×.
5. For each choice, state at what point it stops being cheap and what the migration path is.
6. Propose the ADRs for these decisions and only create them after explicit user confirmation (per the global rule: never generate documents without asking).

If a NuGet/package under consideration requires payment for commercial use, apply the global paid-packages rule: prefer the last free/open-source version, or a free alternative if that version has known issues.
