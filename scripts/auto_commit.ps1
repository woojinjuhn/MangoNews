# Auto-commit + push after newsletter send.
# Called by the SubagentStop hook for the `sender` subagent (see .claude/settings.local.json).
# Always exits 0 — must never block the Claude Code turn.

$ErrorActionPreference = 'Continue'

# Defensive subagent-type filter: only run for `sender`. The hook matcher
# should already gate this, but if a future schema change broadens matcher
# semantics we still want a single commit per newsletter cycle.
try {
    $raw = [Console]::In.ReadToEnd()
    if ($raw) {
        $payload = $raw | ConvertFrom-Json -ErrorAction Stop
        $subagent = $payload.subagent_type
        if (-not $subagent) { $subagent = $payload.subagentType }
        if (-not $subagent) { $subagent = $payload.agent }
        if ($subagent -and $subagent -ne 'sender') { exit 0 }
    }
} catch {
    # No stdin or unparseable — fall through (manual invocation path).
}

# Derive project root from script location: scripts\auto_commit.ps1 -> project root.
$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location -Path $projectRoot

git add -A 2>&1 | Out-Null

# git diff --cached --quiet: exit 0 = no staged diff, 1 = changes present.
git diff --cached --quiet
if ($LASTEXITCODE -eq 0) { exit 0 }

$todayKst = (Get-Date).ToUniversalTime().AddHours(9).ToString('yyyy-MM-dd')
$msg = "newsletter $todayKst"

$archive = Get-ChildItem -Path (Join-Path $projectRoot 'archives') -Filter 'no_*.html' -ErrorAction SilentlyContinue |
    Sort-Object Name -Descending |
    Select-Object -First 1
if ($archive) {
    $num = $archive.BaseName -replace '^no_', ''
    if ($num -match '^\d+$') {
        $msg = "newsletter #$num $todayKst"
    }
}

git commit -m $msg 2>&1 | Out-Null
git push origin main 2>&1 | Out-Null
exit 0
