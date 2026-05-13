---
name: Check published_urls.jsonl before locking main 8
description: Stage-2 must dedup against published_urls.jsonl even though collector should have already done so; failures upstream are real
type: feedback
---

Always Read `state\published_urls.jsonl` and check every Stage-1 `kept` URL against it before finalizing main and competitor_articles. Drop exact-URL matches and substitute from the next-best candidate.

**Why:** On 2026-05-04, Stage-1's #1 importance pick (AMD MI400 DCD URL) was already published in the 2026-05-03 issue with the *exact same URL*. The collector contract is to dedup, but this failed. If Stage-2 had blindly trusted the input, the same URL would have been re-summarized, the newsletter would have repeated content, and the registry would have grown a duplicate row.

**How to apply:**
- Read `state\published_urls.jsonl` once at the start of the run.
- Build a set of URL strings.
- For every kept candidate, check exact URL membership before adding to main or competitor_articles.
- If a kept URL is already in the registry: drop it silently from your selection and log the skip in `selection_notes`. Do not re-canonicalize — exact string match is the contract.
- Different URLs covering the same announcement (e.g., PR Newswire vs Manila Times for Moreh) are distinct rows; keep them both. Only exact URL match triggers the drop.
- Substitute from the next-best skipped candidate, then re-evaluate diversity/headline picks.
