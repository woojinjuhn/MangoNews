---
name: Always call scripts/send_newsletter.ps1 — never inline SmtpClient
description: Sender must invoke the canonical PowerShell script for every send; do not write ad-hoc SmtpClient PowerShell that bypasses logo handling and archive expansion
type: feedback
---

Always invoke `c:\Users\pc-24-042\mangonews\scripts\send_newsletter.ps1` for sends. Do not compose your own inline `Net.Mail.SmtpClient` PowerShell to send the message — even if the inline version "looks like it would work."

**Why:** On 2026-05-06 (issue #003), the sender bypassed the canonical script and ran inline SMTP + a plain `Copy-Item` for the archive. The canonical script does TWO things that the inline path silently skipped:

1. Attaches `assets/logo.png` as a `LinkedResource` with `ContentId="logo"` so the email's `<img src="cid:logo">` actually resolves in Gmail/Outlook. The inline send had no LinkedResource, so the logo rendered broken in every recipient's inbox.
2. For the on-disk archive, replaces `cid:logo` with a full `data:image/png;base64,...` (read from `assets/logo.b64`) so `archives/no_NNN.html` renders standalone in a browser. The inline `Copy-Item` left `cid:logo` in the archive — the file no longer renders standalone (size dropped from ~278KB to 68KB, exactly missing the b64 payload).

Compare: `archives/no_001.html` and `no_002.html` are ~278KB with inline base64 logo. `no_003.html` is 68KB with `cid:logo` and the timestamp matches the designer output → sender did `Copy-Item` not script.

**How to apply:**
- Default send path: build the script invocation. Required parameters: `-EnvPath`, `-HtmlPath`, `-IssueDate`, `-IssueNumber`, `-ArchivePath`, `-SentLogPath`. The script handles subject, archive copy with b64 expansion, logo LinkedResource attachment, and sent_log append in one shot.
- Resend mode: still call the same script but pass `-SubjectOverride "[MangoNews #NNN][재발송] YYYY-MM-DD"`. The script handles the LinkedResource correctly for resends too.
- The only situation where it's OK to skip the script: the script file itself is missing or broken — and in that case stop and tell the user, don't substitute inline code.
- Verify after send: `archives/no_NNN.html` should be ≥ ~250KB (designer HTML + ~210KB b64 logo). If the archive is much smaller, the script wasn't actually used and the sent email also has no logo — flag this immediately.
