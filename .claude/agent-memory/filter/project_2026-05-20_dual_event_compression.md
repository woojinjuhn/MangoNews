---
name: 2026-05-20-dual-event-compression
description: Sample dedup pattern when two mega-events (Google I/O + Dell Tech World) hit the same day's collection
metadata:
  type: project
---

2026-05-20 collection had 30 raw articles dominated by two simultaneous mega-events: Google I/O 2026 (7 articles on Gemini 3.5 Flash / Omni / Spark / TPU 8 / Blackstone JV / Search) and Dell Tech World 2026 (3 articles on PowerStore Elite / 18th-gen PowerEdge / PowerRack). Kept 18, dropped 12 (60% retention).

Compression strategy that worked:
- Google I/O cluster (8 articles): kept 4 distinct angles — primary keynote (id 22 Google Blog), TPU 8 technical deep-dive (id 23 Google Cloud Blog), Blackstone JV business angle (id 20 DCD), and Korean primary on the model launch with cost framing (id 0 etnews). Discarded 4 redundant narrative-only retreads.
- Dell Tech World cluster (3 articles): kept 2 — Next Platform deep-dive (id 13) and DCD primary product list (id 21) because they emphasize different angles (on-prem shift narrative vs. AMD-EPYC 18th-gen spec list). Dropped 2 Korean translations (id 14, 15) that added no infrastructure detail beyond the English originals.
- Tenstorrent M&A: kept English primary (id 24 Blockonomi), dropped Korean translation (id 27 newspim) as same Bloomberg-source.
- Samsung labor: 2 articles, kept the one with the strongest detail on emergency arbitration / strike timeline.

**Why:** When same-source primary docs are available (Google Blog for I/O, Napatech press release), prefer those over secondary aggregator coverage of the same event.

**How to apply:** On days with 2+ mega-events that each spawn 5+ articles, compress each cluster to 3-4 distinct angles. Default kept-mix: primary-source release + best technical deep-dive + best business/financial framing + (optional) strong Korean primary if it adds local-market angle. Avoid keeping more than one English aggregator retread of the same announcement.

Cross-reference: [[2026-05-15_samsung_strike_cluster]] for single-event cluster compression doctrine.
