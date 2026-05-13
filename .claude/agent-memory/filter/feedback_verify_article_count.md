---
name: Verify article count from articles[] not run_summary
description: When filtering, count articles via the actual array; collector run_summary.total can disagree
type: feedback
---

The collector's `run_summary.total` field (and topic breakdown) can disagree with the actual length of the `articles` array. On 2026-05-03 the user-supplied prompt claimed 42 articles but the array had 46.

**Why:** `run_summary` is generated separately from the array (different code paths or pre/post-dedup snapshots), and may go stale or undercount.

**How to apply:** Always derive `total_received` from the count of items in `articles[]` (e.g., `Grep "title":` count). Match `total_kept + total_discarded` against that derived count, not against the prompt-reported number. Note any discrepancy in your run summary so the operator can investigate the collector.
