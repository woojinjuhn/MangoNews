---
name: Verify publication date against article byline — never default to today
description: When the real publication date is not clearly extractable, REJECT the article. Do not default published_at to today's date or a midnight (T00:00:00) placeholder — that lets stale stories silently leak into the recency window
type: feedback
---

The `published_at` field must come from the article's own byline / meta tag / structured data — not from "the date I'm fetching this" or any default. If you cannot positively confirm the publication date is within the "since-last-issue" KST window, **drop the article**. Do not synthesize a date.

**Why (two confirmed incidents):**
- **2026-05-14 #008**: ServeTheHome article `AMD Helios AI Rack Platform: 256-Core Venice EPYC + Instinct MI455X GPU with Pensando DPU Networking — H2 2026 Launch` was tagged `published_at: "2026-05-14T00:00:00+09:00"` but the byline was `January 7, 2026` (CES). It sailed through filter/filter_2/summarizer/designer/user review and became HEADLINE #1.
- **2026-05-18 #010**: This same rule was ignored at scale. 16/45 (36%) collected articles had `T00:00:00+09:00` fallback timestamps, including the Tom's Hardware "Google, Microsoft, Meta, and Amazon capex spending to hit $725 billion" piece marked `2026-04-30T00:00:00+09:00` — 18 days outside the 5/16–5/18 recency window. It still shipped as a main article of #010. filter_2 even noted "published Apr 30 (recycled context)" in its run report but only demoted it from headline instead of dropping it. This is why the gate moved from "feedback memory" to a **hard pre-write check** at Self-Verification step 2a in the agent definition — the rule could no longer rely on agent attention alone.

**The midnight-KST tell:** `T00:00:00+09:00` is almost never a real publication time. Korean and English news sites publish at human hours, and feed timestamps include minutes/seconds. A clean `T00:00:00` is a signal that the date came from a placeholder, the URL slug, or a fallback — not from real metadata. Treat any `T00:00:00+09:00` value as **unverified** and re-check the byline before accepting.

**URL-slug red flags:** event-named slugs like `ces-2026`, `computex-2026`, `gtc-2026`, `mwc-2026`, `hot-chips-2026` strongly imply a specific past month (CES = January, MWC = late Feb/early March, GTC = March, Computex = late May/early June, Hot Chips = August). If the URL slug names a past event but the claimed `published_at` is months later, assume the slug is correct and re-verify before keeping.

**How to apply:**
1. For every candidate article, extract the publication date from at least one of: `<meta property="article:published_time">`, JSON-LD `datePublished`, visible byline ("By X — January 7, 2026"), or RSS `<pubDate>`. Prefer structured data over visible text when both exist.
2. If only relative text is available ("3 hours ago", "yesterday", "어제"), resolve against current KST and emit minutes-precision (`T14:32:00+09:00`), never `T00:00:00`.
3. If no source confirms a precise date, **drop the article** with a note in `run_summary.notes` (`"skipped: <url> — publication date unverifiable"`). Do not guess, do not default to today.
4. After harvesting, scan all kept articles for `T00:00:00+09:00` and re-verify each one's byline before returning. Update the value to the real time or drop the article.
5. After harvesting, scan kept article URLs for past-event slugs (`ces-2026`, `mwc-2026`, etc.). For each match whose `published_at` does NOT fall in the event's natural window, re-verify the byline.

Related: see [[project_pipeline]] for the recency window definition. This rule is upstream of the dedup registry — a stale article that slips through the date check will not be caught by `published_urls.jsonl` (the URL wasn't published before).
