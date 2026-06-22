---
name: Restart after aborted same-day run — clean registry tail, do not treat as published
description: When filter_2 runs twice for the same issue_date_kst (prior run aborted before sender), the prior run's published_urls.jsonl rows are tentative reservations, not actual sends. Replace them with the new run's final selection.
type: feedback
---

If `state/published_urls.jsonl` already contains rows with the same `issue_date_kst` as today's run AND `state/sent_log.jsonl` has no entry for that date, those rows are leftovers from a prior aborted filter_2 attempt — not actual sends. Do not treat them as "previously published" and do not drop today's candidates because of them.

**Why:** The registry's purpose is reader-facing dedup ("readers never see the same story twice"). If the prior run never reached sender, readers haven't seen the URLs. Blindly applying the exact-URL-match drop rule from `feedback_check_registry_for_dupes.md` would silently strip critical stories that today's Stage-1 just curated. Observed 2026-06-22: prior aborted run had written 9 URLs (including the day's top story, AWS Trainium external sales); a naive dedup pass would have killed the headline.

**How to apply:**
1. Read last line of `sent_log.jsonl`. Get `last_issue_date_kst`.
2. If today_kst > last_issue_date_kst, scan `published_urls.jsonl` tail for rows with `issue_date_kst == today_kst`. Those are aborted-run leftovers.
3. Treat the aborted-run rows as **tentative**. Do not dedup today's candidates against them.
4. After locking your final selection, **rewrite the registry tail**: keep all rows with `issue_date_kst <= last_issue_date_kst` verbatim, then append your final selection's URLs (main ∪ competitor, deduped by URL) as the new tail. This keeps the registry consistent with what will actually ship.
5. Log the cleanup in `selection_notes` so it's auditable (e.g., "prior aborted filter_2 run left N leftover rows; replaced with M final selections").

**The exact-URL-match drop from `feedback_check_registry_for_dupes.md` still applies** — but only to rows whose `issue_date_kst <= last_issue_date_kst`. Those represent actual sends. Same-day rows when no sent_log entry exists are tentative and should not be treated as authoritative.

**Read-modify-write approach:** because the file is JSONL-append-only by spec but you need to truncate the leftover tail, do a full read of lines 1..K (where K is the last actual-send row), then write the file with those lines plus your new selection appended. Verify line count after (expect K + final-selection-count).
