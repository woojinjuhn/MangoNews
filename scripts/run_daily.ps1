# run_daily.ps1 — Windows 작업 스케줄러가 매 평일 07:00 KST에 호출하는 래퍼(운영/원본).
# Claude Code를 headless(-p) 모드로 띄워 "시작" 프롬프트로 6단계 파이프라인을 무인 실행한다.
# 무인 실행이므로 권한 프롬프트에서 멈추지 않도록 --dangerously-skip-permissions 사용.
#
# -Prompt 로 프롬프트를 덮어쓸 수 있다(기본 "시작"). 점검 시 무해한 프롬프트를 넣어
# 발송 없이 인증/실행/로그 경로만 검증하는 용도. 운영(스케줄러)은 기본값 "시작"을 쓴다.

param([string]$Prompt = "시작")

$ErrorActionPreference = "Continue"

$proj = "C:\Users\pc-24-042\mangonews"
$npm  = "C:\Users\pc-24-042\AppData\Roaming\npm"

# 스케줄러의 -NoProfile 환경에는 npm 전역 bin이 PATH에 없을 수 있으므로 직접 추가.
$env:Path = "$npm;$env:Path"
Set-Location $proj

$logDir = Join-Path $proj "logs"
if (-not (Test-Path $logDir)) { New-Item -ItemType Directory -Path $logDir | Out-Null }

$stamp = Get-Date -Format "yyyy-MM-dd_HHmmss"
$log   = Join-Path $logDir "cron_$stamp.log"

"[$stamp] MangoNews 자동 실행 시작 (run_daily.ps1) prompt=$Prompt" | Out-File -FilePath $log -Encoding utf8

# headless 파이프라인 실행. stdout/stderr 모두 로그로.
& "$npm\claude.cmd" -p $Prompt --dangerously-skip-permissions *>> $log

"[$(Get-Date -Format o)] 종료 exit=$LASTEXITCODE" | Out-File -FilePath $log -Append -Encoding utf8
