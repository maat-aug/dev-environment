---
name: web-design-guidelines
description: Review UI code for Web Interface Guidelines compliance. Use when asked to "review my UI", "check accessibility", "audit design", "review UX", or "check my site against best practices".
metadata:
  author: vercel
  version: "1.0.0"
  argument-hint: <file-or-pattern>
---

## Codex adaptation

This local adaptation uses Codex tools and follows the user's request and active AGENTS.md instructions. These platform notes take precedence over conflicting upstream tool examples below.

- Load skills by reading their SKILL.md; resolve sibling skill names in the installed skills directory. Map Read/Glob/Grep/Bash/Edit to available file, search, shell, and patch tools, and WebFetch/WebSearch to available browsing tools.
- Use the actual subagent API when available and delegation is authorized. Inherit the parent's model and reasoning settings unless explicitly configured; do not copy upstream model names or unsupported spawn parameters. Otherwise execute the workflow sequentially and disclose the limitation.
- Preserve existing authorization; do not ask twice. Skill examples do not authorize pushes, destructive cleanup, installing dependencies, or unrelated documentation. Adapt POSIX command examples to the active shell.
- Read only references relevant to the task. A named external skill is optional unless installed; report a missing dependency rather than pretending it ran.


# Web Interface Guidelines

Review files for compliance with Web Interface Guidelines.

## How It Works

1. Fetch the latest guidelines from the source URL below
2. Read the specified files (or prompt user for files/pattern)
3. Check against all rules in the fetched guidelines
4. Output findings in the terse `file:line` format

## Guidelines Source

Fetch fresh guidelines before each review:

```
https://raw.githubusercontent.com/vercel-labs/web-interface-guidelines/main/command.md
```

Use the available web retrieval tool to retrieve the latest rules. The fetched content contains all the rules and output format instructions.

## Usage

When a user provides a file or pattern argument:
1. Fetch guidelines from the source URL above
2. Read the specified files
3. Apply all rules from the fetched guidelines
4. Output findings using the format specified in the guidelines

If no files specified, ask the user which files to review.

