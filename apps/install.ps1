<#
.SYNOPSIS
    Installs the base apps documented in README.md via winget.
.DESCRIPTION
    Essential and Recommended apps are installed without prompting (winget itself
    is idempotent — it skips or offers an upgrade if an app is already present).
    Optional apps are asked about individually and are never installed silently.
#>

$ErrorActionPreference = "Stop"

function Install-WingetApp {
    param(
        [Parameter(Mandatory)] [string]$Name,
        [Parameter(Mandatory)] [string]$Id,
        [string]$Source = "winget"
    )
    Write-Host "==> Installing $Name ($Id)..." -ForegroundColor Cyan
    winget install --id $Id -e --source $Source --accept-package-agreements --accept-source-agreements
}

$essentialAndRecommended = @(
    @{ Name = "Git"; Id = "Git.Git" }
    @{ Name = ".NET SDK 10"; Id = "Microsoft.DotNet.SDK.10" }
    @{ Name = "Node.js LTS"; Id = "OpenJS.NodeJS.LTS" }
    @{ Name = "Visual Studio Code"; Id = "Microsoft.VisualStudioCode" }
    @{ Name = "Docker Desktop"; Id = "Docker.DockerDesktop" }
    @{ Name = "SQL Server Management Studio 22"; Id = "Microsoft.SQLServerManagementStudio.22" }
    @{ Name = "GitHub CLI"; Id = "GitHub.cli" }
    @{ Name = "Azure CLI"; Id = "Microsoft.AzureCLI" }
    @{ Name = "Bruno"; Id = "Bruno.Bruno" }
    @{ Name = "pnpm"; Id = "pnpm.pnpm" }
)

$optional = @(
    @{ Name = "Claude (desktop)"; Id = "Anthropic.Claude"; Source = "winget" }
    @{ Name = "Claude Code"; Id = "Anthropic.ClaudeCode"; Source = "winget" }
    @{ Name = "ChatGPT"; Id = "9PLM9XGG6VKS"; Source = "msstore" }
    @{ Name = "Brave"; Id = "Brave.Brave"; Source = "winget" }
)

Write-Host "`n--- Essential + Recommended ---`n" -ForegroundColor Yellow
foreach ($app in $essentialAndRecommended) {
    Install-WingetApp -Name $app.Name -Id $app.Id
}

Write-Host "`n--- Optional (asked individually) ---`n" -ForegroundColor Yellow
foreach ($app in $optional) {
    $answer = Read-Host "Install $($app.Name)? (y/N)"
    if ($answer -match '^[yYsS]') {
        Install-WingetApp -Name $app.Name -Id $app.Id -Source $app.Source
    } else {
        Write-Host "Skipped $($app.Name)." -ForegroundColor DarkGray
    }
}

Write-Host "`nDone. winget installs don't update the current session's PATH - open a new terminal, or refresh it manually:" -ForegroundColor Green
Write-Host '  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")' -ForegroundColor DarkGray
