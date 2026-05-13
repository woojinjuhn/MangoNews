---
name: competitor-url-same-event-different-url
description: Same event with different URLs across days — verify registry by exact URL only, trust Stage-1's keep call
metadata:
  type: reference
---

When Stage-1 keeps a competitor article that covers the same event as a registry entry from a prior issue but at a different URL (e.g., NVIDIA-Jensen-skips-China: prior issue used `thetechportal.com`, today's keep was `thenextweb.com`), the registry dedup is URL-exact only and will not block it.

**Why:** Registry uses canonical URL as the dedup key (per agent contract: "Trust the existing canonicalization from collector output; do not re-canonicalize"). Same-event-different-URL is not a dedup violation.

**How to apply:** Do not re-litigate Stage-1's keep decision based on event-level dedup. If the URL is different and Stage-1 kept it, forward it through. Note in `selection_notes` if the same event appeared in a recent issue so the summarizer is aware, but do not block the article.
