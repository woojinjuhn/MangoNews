---
name: feedback-verify-section-counts
description: Before reporting done, count rendered 요약 and 용어 blocks in 05_newsletter.html and verify they match the source article counts in 04_summarized.json — silent drops have shipped to readers.
metadata:
  type: feedback
---

For every main article in `04_summarized.json`, the rendered HTML must contain a `요약` block — count them and compare to `len(main)` before reporting done. Same check for `용어` against the number of articles whose `jargon` array is non-empty.

**Why:** On issue #010 (2026-05-18) the designer rendered only 10 of 12 main articles' `요약` bullet sections — id 3 (Arm FTC) and id 23 (김민석 총리 긴급조정) silently dropped the entire `요약` block while still emitting TLDR + 용어. The cards even self-compensated by adding `margin-top:12px` to the orphaned 용어 box, so the visual structure looked plausible and the run report falsely claimed "All 12 main article titles, TLDRs, summary bullets rendered byte-for-byte". The user caught it after the email was already sent. Both affected cards had exactly 1 jargon entry — suggesting the bug may be tied to handling articles with a single jargon term, but a defensive count-check catches the failure regardless of root cause.

**How to apply:**
1. After writing `05_newsletter.html`, before the completion report, run `grep -c 'letter-spacing:2px;margin-bottom:8px;">요약'` on the output file. Compare to the `main` array length in `04_summarized.json`. If they differ, the render is broken — locate the affected article ids and patch before reporting.
2. Same check for `용어` count vs. number of articles where `len(jargon) > 0`.
3. In the completion report, state the actual counts ("rendered 12/12 요약 blocks, 10/10 용어 blocks where defined") rather than claiming verbatim rendering — the claim is checkable, prove it.
4. Do **not** silently add `margin-top:12px` to a 용어 box to mask a missing 요약 — if 요약 is missing, that is a bug, not a layout decision.

Related: [[entity-renderings-pattern]] for past surface-level QC; this is the structural QC analogue.
