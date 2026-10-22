# Run the Agentic STLC pipeline locally (Cursor orchestrator helper).
# Usage:
#   .\scripts\run_pipeline.ps1
#   .\scripts\run_pipeline.ps1 -FullRun
#   .\scripts\run_pipeline.ps1 -ApplyReleaseDelta
#   .\scripts\run_pipeline.ps1 -DemoMode -SkipStage0

param(
    [switch]$FullRun,
    [switch]$DemoMode,
    [switch]$SkipStage0,
    [switch]$ApplyReleaseDelta,
    [string]$Requirements = "requirements/taskflow.txt"
)

$ErrorActionPreference = "Stop"
$RepoRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
Set-Location $RepoRoot

$env:PYTHONIOENCODING = "utf-8"
$env:PYTHONUTF8 = "1"

if ($FullRun) { $env:FULL_RUN = "true" }
if ($DemoMode) { $env:DEMO_MODE = "true" }

function Invoke-Stage {
    param([string]$Name, [scriptblock]$Command)
    Write-Host ""
    Write-Host "=== $Name ===" -ForegroundColor Cyan
    & $Command
    if ($LASTEXITCODE -ne 0) {
        throw "Stage failed: $Name (exit $LASTEXITCODE)"
    }
}

Write-Host "Agentic STLC — local pipeline run" -ForegroundColor Green
Write-Host "Repo: $RepoRoot"
Write-Host "FULL_RUN=$($env:FULL_RUN)  DEMO_MODE=$($env:DEMO_MODE)"

if (-not $SkipStage0) {
    if ($ApplyReleaseDelta) {
        Invoke-Stage "Stage 0 — Apply release delta" { python ci/release_diff.py --apply }
    } else {
        Invoke-Stage "Stage 0 — Propose release delta" { python ci/release_diff.py --propose }
    }
}

Invoke-Stage "Stage 1 — Kane AI verification" {
    python ci/analyze_requirements.py --requirements $Requirements
}

Invoke-Stage "Stages 2–9 — Orchestration" {
    python ci/agent.py
}

if (-not (Test-Path "reports/execution_payload.json")) {
    Invoke-Stage "Notify agent — build execution payload" {
        python ci/notify_agent.py
    }
}

Write-Host ""
Write-Host "Pipeline complete." -ForegroundColor Green
if (Test-Path "reports/release_recommendation.md") {
    Get-Content "reports/release_recommendation.md" -Head 20
}
