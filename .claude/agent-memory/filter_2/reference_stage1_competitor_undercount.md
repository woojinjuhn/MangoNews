---
name: Stage-1 summary may undercount competitor_kept_total
description: Stage-1 summary.competitor_kept_total can disagree with the actual count of competitor!=null entries in kept; trust the entries, not the summary
type: reference
---

Stage-1's `summary.competitor_kept_total` and `summary.by_competitor` are advisory totals and have been observed to undercount the actual number of `competitor != null` entries in the `kept` array.

**Example (2026-05-04):** Stage-1 summary reported `competitor_kept_total: 6` and `by_competitor: {Tenstorrent: 2, ...}` but the kept array contained 7 entries with `competitor != null` (id=23 SDxCentral inference market analysis tagged `competitor: Tenstorrent` was not counted in the summary).

**How to apply:**
- Compute `competitor_articles_count` by iterating kept and counting `competitor != null` directly.
- Do not derive it from `summary.competitor_kept_total`.
- Use the same direct iteration to populate `by_competitor` in your output.
