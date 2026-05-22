---
name: issue-014-small-pool-handling
description: Issue #014 (2026-05-22) ran with only 11 kept articles but yielded 8 high-quality main picks; small-pool days still allow strong headlines if the news is real
metadata:
  type: project
---

Issue #014 (2026-05-22, window_days=1, main_cap=8) curation pattern.

The 11-article pool was unusually small — typical Stage-1 output is 15-25 — but quality was high. 8/11 cleared the editorial bar, and 3 headlines were defensible: AMD $10B Taiwan investment, MS Maia → Anthropic first external supply, NVIDIA Rubin memory cost breakdown.

**Why:** Small Stage-1 output does not automatically force fewer main picks or zero headlines. The decisive question is still per-article quality. Here, AMD's $10B was a top-tier announcement, MS Maia external was a structural shift, and the Morgan Stanley Rubin cost numbers were genuinely new primary data — three independent must-know stories on a low-volume news day.

**How to apply:** When Stage-1 ships fewer than the usual 15+ but the stories are substantive (named entities, hard numbers, structural shifts), don't artificially shrink the main set or skip headlines just because the pool feels light. Conversely, on days when Stage-1 ships 25+ but everything is incremental or rehash, you can still output fewer than main_cap with zero headlines. Pool size is independent of bar-clearance.

**Companion drops:** art_05 (Gemini 3.5 Pro delay analysis) was dropped under [[feedback_content_overlap_dedup]] because it overlapped with art_06 (Gemini Omni). art_09 (Samsung union vote follow-up) was dropped under [[feedback_ongoing_story_overcoverage]] — strike saga was already covered in issue #013. art_04 (Trump AI EO delay) was the weakest non-event, dropped on substance.
