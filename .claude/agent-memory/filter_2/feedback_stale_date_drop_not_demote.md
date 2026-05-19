---
name: Stale published_at = drop, not demote — filter_2 is the second line of defense for stale-leak
description: If a candidate article's published_at falls outside the current recency window OR the URL slug names a past event whose date contradicts published_at, drop the article entirely. Do not just demote it from headline to main — the article should not be in the issue at all.
metadata:
  type: feedback
---

When scoring candidates from Stage-1 (`02_filtered.json`), explicitly check that each article's `published_at` falls inside the current recency window (`last issue_date_kst + 1 day … today KST`). If it does not, **drop the article from your output entirely** — do not include it in `main`, do not include it in headlines, do not pass it through as a competitor article.

**Why:** On 2026-05-18 #010, filter_2 included Tom's Hardware article `Google, Microsoft, Meta, and Amazon capex spending to hit $725 billion in 2026` as a main article. Its `published_at` was `2026-04-30T00:00:00+09:00` — 18 days before the 5/16–5/18 recency window. filter_2's run report actually noted "published Apr 30 (recycled context), declined for headline despite scale" — meaning the agent **saw the staleness** but only used it to refuse the headline slot. The article still shipped to readers as a main piece. The collector should have dropped it (gate is now hard-enforced at Self-Verification step 2a), but filter_2 is the safety net if collector misses it.

**How to apply:**
1. Read `02_filtered.json`. For each candidate, parse `published_at` to a KST date.
2. Read the last line of `state/sent_log.jsonl` to get `last_issue_date_kst`. The current recency window is `(last_issue_date_kst + 1 day) … today_kst` inclusive.
3. If a candidate's date is **before** `last_issue_date_kst + 1`, drop it. Record `"dropped: <url> — published_at <date> precedes recency window starting <window_start>"` in your selection notes.
4. If the URL slug names a past event (`ces-2026`, `mwc-2026`, `gtc-2026`, `computex-2026`, `hot-chips-2026`) and the slug's natural month is more than 14 days before today, drop the article even if `published_at` claims it's recent — assume the slug is correct.
5. Demoting from headline to main is **not** an acceptable response to a stale date. Staleness is a binary keep/drop decision, not a tier-shift.

**The rule has teeth:** if you find yourself writing "recycled context" or "older but still relevant" in your run report to explain why a stale article is in `main`, stop. That phrasing is the tell that you are rationalizing a rule violation. Drop the article.

Related: [[feedback-verify-publication-date]] in collector memory (upstream gate); [[reference-stage1-competitor-undercount]] (the don't-trust-summary-totals pattern this rule also follows).
