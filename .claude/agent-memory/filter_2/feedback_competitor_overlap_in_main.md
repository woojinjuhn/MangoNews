---
name: Competitor-tagged articles can occupy main slots and competitor section
description: Articles with competitor != null may appear in both main 8 and competitor_articles; designer dedupes
type: feedback
---

When a `competitor != null` article is independently top-8-worthy, include it in **both** `main` and `competitor_articles` (full body in each). Do not drop it from competitor pass-through just because it is in main.

**Why:** Stage-3 designer is the dedup layer. competitor_articles must remain a complete pass-through of all `competitor != null` items so the per-company trend bullets in the Competitor Updates section are not silently incomplete. Filter_2's job is forwarding, not deduping.

**How to apply:** Track `main_competitor_overlap_count` in the summary (count of items appearing in both lists) so QA can verify the overlap is intentional. Typical overlap on competitor-heavy days: 3-5 items.
