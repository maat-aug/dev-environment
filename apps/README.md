# Base apps

Applications a new machine needs to match this dev environment (C#/.NET, ASP.NET Core, EF Core, SQL Server, .NET 10, React/Next.js, Blazor, Azure deploys). All winget IDs below were confirmed with `winget search` — no guesses.

Run [`install.ps1`](install.ps1) to install everything (Essential + Recommended run straight away; Optional apps are asked one by one).

## Essential

Without these, the stack doesn't build.

| App | winget id |
|---|---|
| Git | `Git.Git` |
| .NET SDK 10 | `Microsoft.DotNet.SDK.10` |
| Node.js LTS | `OpenJS.NodeJS.LTS` |
| Visual Studio Code | `Microsoft.VisualStudioCode` |
| Docker Desktop | `Docker.DockerDesktop` |
| SQL Server Management Studio 22 | `Microsoft.SQLServerManagementStudio.22` |

## Recommended

Fits the workflow already defined in `../claude/CLAUDE.md` (GitHub Flow, Azure as the suggested deploy target) or fills a productivity gap.

| App | winget id | Why |
|---|---|---|
| GitHub CLI | `GitHub.cli` | PRs/issues from the terminal, matches the GitHub Flow convention |
| Azure CLI | `Microsoft.AzureCLI` | Azure is the suggested deploy target |
| Bruno | `Bruno.Bruno` | Free, offline-first API client — collections are local files, git-friendly. Chosen over Postman/Insomnia. |
| pnpm | `pnpm.pnpm` | Faster, disk-efficient package manager for the React/Next.js side of the stack (runs on top of Node.js, already in Essential) |

**GitHub CLI auth**: installing it isn't enough — authenticate once after refreshing `PATH` (see [`SETUP.md`](../SETUP.md) prerequisites): run `gh auth login`, pick **GitHub.com** → **HTTPS** → **Login with a web browser**. Needed before `gh repo edit`, `gh pr create`, etc. work. Check anytime with `gh auth status`.

**Note**: a full Visual Studio IDE was considered and intentionally left out — VS Code (already configured with C# Dev Kit and a Visual Studio–style theme/icons) is the single IDE for this setup.

**React/Next.js note**: the real essential for React is Node.js (already listed above). Next.js/Vite/etc. are installed per-project (`npx` / devDependency), not as a global app, so they're not listed here. The one extra worth getting is **React DevTools** — not installable via winget, it's a browser extension: [Chrome](https://chromewebstore.google.com/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi) / [Edge](https://microsoftedge.microsoft.com/addons/detail/react-developer-tools/gpphkfbcpidddadnkolkpfckpihlkkil) / [Firefox](https://addons.mozilla.org/en-US/firefox/addon/react-devtools/).

## Optional

Only installed if explicitly confirmed — `install.ps1` asks about each one individually, never installs them automatically.

| App | winget id | Source |
|---|---|---|
| Claude (desktop) | `Anthropic.Claude` | winget |
| Claude Code | `Anthropic.ClaudeCode` | winget |
| ChatGPT | `9PLM9XGG6VKS` | Microsoft Store (`--source msstore`) — no official ChatGPT app exists in the regular winget catalog |
| Brave | `Brave.Brave` | winget |
