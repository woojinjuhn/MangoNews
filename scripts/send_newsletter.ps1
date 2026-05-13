# Send the MangoNews HTML newsletter via Google Workspace SMTP.
# Reads .env for credentials, builds subject from issue number + date,
# sends, then archives the HTML and appends a sent_log JSONL line.
#
# Subject format (ASCII-only — safe for any SMTP path):
#   [MangoNews #NNN] YYYY-MM-DD
# Override by passing -SubjectOverride "..." if a custom subject is needed
# (e.g., test sends, resends).

param(
  [Parameter(Mandatory=$true)] [string]$EnvPath,
  [Parameter(Mandatory=$true)] [string]$HtmlPath,
  [Parameter(Mandatory=$true)] [string]$IssueDate,
  [Parameter(Mandatory=$true)] [int]$IssueNumber,
  [Parameter(Mandatory=$true)] [string]$ArchivePath,
  [Parameter(Mandatory=$true)] [string]$SentLogPath,
  [Parameter(Mandatory=$false)] [string]$SubjectOverride = $null
)

$ErrorActionPreference = 'Stop'

# 1) Parse .env into a hashtable
$envMap = @{}
Get-Content $EnvPath -Encoding UTF8 | ForEach-Object {
  if ($_ -match '^\s*#') { return }
  if ($_ -match '^\s*$') { return }
  $kv = $_ -split '=', 2
  if ($kv.Length -eq 2) {
    $envMap[$kv[0].Trim()] = $kv[1].Trim().Trim('"').Trim("'")
  }
}

# 2) Validate credentials and recipients
$pass = $envMap['MANGONEWS_SMTP_PASSWORD']
if ([string]::IsNullOrWhiteSpace($pass) -or $pass -match '<paste') {
  Write-Output 'ERROR: SMTP password placeholder not replaced'
  exit 1
}

$toRaw = $envMap['MANGONEWS_TO_EMAILS']
if ([string]::IsNullOrWhiteSpace($toRaw)) {
  Write-Output 'ERROR: No recipients configured in MANGONEWS_TO_EMAILS'
  exit 1
}

$toList = $toRaw -split ',' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' }
foreach ($t in $toList) {
  if ($t -notmatch '@mangoboost\.io$') {
    Write-Output "ERROR: Recipient $t doesn't end in @mangoboost.io — aborting"
    exit 1
  }
}

# 3) Read HTML body
if (-not (Test-Path $HtmlPath)) {
  Write-Output "ERROR: HTML file not found: $HtmlPath"
  exit 1
}
$bodyBytes = (Get-Item $HtmlPath).Length
if ($bodyBytes -lt 500) {
  Write-Output "ERROR: HTML body too small ($bodyBytes bytes) — likely upstream stage failed"
  exit 1
}
$body = Get-Content -Path $HtmlPath -Raw -Encoding UTF8

# 4) Build subject. Default format is the canonical:
#      [MangoNews #NNN] YYYY-MM-DD
#    where NNN is zero-padded to 3 digits. ASCII-only — no SMTP encoding pitfalls.
#    A custom subject can be passed via -SubjectOverride for resends/tests.
if ($SubjectOverride) {
  $subject = $SubjectOverride
} else {
  $issueNumberPadded = '{0:D3}' -f $IssueNumber
  $subject = "[MangoNews #$issueNumberPadded] $IssueDate"
}
if ([string]::IsNullOrWhiteSpace($subject)) {
  Write-Output 'ERROR: Subject is empty'
  exit 1
}

# 5) Build mail message
$msg = New-Object Net.Mail.MailMessage
$fromAddr = $envMap['MANGONEWS_FROM_EMAIL']
$fromName = $envMap['MANGONEWS_FROM_NAME']
if ([string]::IsNullOrWhiteSpace($fromName)) { $fromName = $fromAddr }
$msg.From = New-Object Net.Mail.MailAddress($fromAddr, $fromName, [Text.Encoding]::UTF8)
foreach ($t in $toList) { $msg.To.Add($t) }
$msg.Subject = $subject
$msg.SubjectEncoding = [Text.Encoding]::UTF8
$msg.HeadersEncoding = [Text.Encoding]::UTF8

# Convert inline-base64 logo (data: URI) in the email body to cid:logo, then
# attach the actual logo.png as a LinkedResource. Gmail strips large data: URIs
# from inline HTML, so RFC 2392 cid: is the reliable cross-client path.
# The archive HTML on disk is left as-is (base64 inline) so it renders standalone.
$emailBody = $body -replace '(?s)<img src="data:image/png;base64,[^"]+?"', '<img src="cid:logo"'

$htmlView = [System.Net.Mail.AlternateView]::CreateAlternateViewFromString($emailBody, [Text.Encoding]::UTF8, 'text/html')

$logoPngPath = 'c:\Users\pc-24-042\mangonews\assets\logo.png'
if ($emailBody.Contains('cid:logo') -and (Test-Path $logoPngPath)) {
  $logoResource = New-Object System.Net.Mail.LinkedResource($logoPngPath, 'image/png')
  $logoResource.ContentId = 'logo'
  $htmlView.LinkedResources.Add($logoResource)
}
$msg.AlternateViews.Add($htmlView)

# 6) SMTP client
$smtpHost = $envMap['MANGONEWS_SMTP_HOST']
$smtpPort = [int]$envMap['MANGONEWS_SMTP_PORT']
$user = $envMap['MANGONEWS_SMTP_USER']
$cleanPass = ($pass -replace '\s', '')

$smtp = New-Object Net.Mail.SmtpClient($smtpHost, $smtpPort)
$smtp.EnableSsl = $true
$smtp.Credentials = New-Object Net.NetworkCredential($user, $cleanPass)
$smtp.Timeout = 60000

# 7) Attempt send
$kst = [TimeZoneInfo]::FindSystemTimeZoneById('Korea Standard Time')
$nowKst = [TimeZoneInfo]::ConvertTimeFromUtc((Get-Date).ToUniversalTime(), $kst)
$sentAt = $nowKst.ToString('yyyy-MM-ddTHH:mm:ss') + '+09:00'
$status = 'ok'
$errorMessage = $null
try {
  $smtp.Send($msg)
} catch {
  $status = 'error'
  $errorMessage = $_.Exception.Message
} finally {
  $msg.Dispose()
  $smtp.Dispose()
}

# 8) Archive on success.
# The body coming out of designer references the logo as cid:logo (so the email
# pipeline can attach assets/logo.png as a LinkedResource cleanly). For the
# archive copy on disk, we substitute cid:logo with a full data:image base64
# URI so that opening the archived HTML directly in a browser displays the
# logo without needing the email's MIME parts.
if ($status -eq 'ok') {
  $logoB64Path = 'c:\Users\pc-24-042\mangonews\assets\logo.b64'
  if (Test-Path $logoB64Path) {
    $logoB64 = (Get-Content $logoB64Path -Raw -Encoding UTF8).Trim()
    $archiveBody = $body -replace '<img src="cid:logo"', ('<img src="data:image/png;base64,' + $logoB64 + '"')
  } else {
    $archiveBody = $body
  }
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($ArchivePath, $archiveBody, $utf8NoBom)
}

# 9) Append sent_log JSONL line (UTF-8 no BOM, \uXXXX escapes decoded for readability)
$logEntry = [ordered]@{
  issue_number   = $IssueNumber
  issue_date_kst = $IssueDate
  subject        = $subject
  to             = @($toList)
  from           = $fromAddr
  html_path      = $HtmlPath
  archive_path   = if ($status -eq 'ok') { $ArchivePath } else { $null }
  sent_at_kst    = $sentAt
  status         = $status
}
if ($status -ne 'ok') { $logEntry['error'] = $errorMessage }

$jsonRaw = $logEntry | ConvertTo-Json -Compress -Depth 5
$jsonLine = [Regex]::Replace($jsonRaw, '\\u([0-9A-Fa-f]{4})', { param($m) [char][int]("0x" + $m.Groups[1].Value) })

$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$logDir = Split-Path -Parent $SentLogPath
if (-not (Test-Path $logDir)) { New-Item -ItemType Directory -Path $logDir -Force | Out-Null }
[System.IO.File]::AppendAllText($SentLogPath, $jsonLine + "`n", $utf8NoBom)

# 10) Result
if ($status -eq 'ok') {
  Write-Output "SUCCESS issue=$IssueNumber to=$($toList -join ',') subject=$subject archive=$ArchivePath sent_at=$sentAt"
  exit 0
} else {
  Write-Output "ERROR: $errorMessage"
  exit 1
}
