---
name: JSON-LD datePublished is the only reliable date source for Tom's Hardware / Future plc / many wire outlets — visible byline parsing is not enough
description: For Tom's Hardware (Future plc), TechCrunch, Bloomberg, Reuters, ServeTheHome, EE Times, AnandTech, fool.com, koreaherald.com, asml.com and similar outlets, the rendered HTML does not include a parseable byline date in static text — the date lives only in JSON-LD or relative ("X days ago") components. WebFetch + naive byline parsing returns nothing, which has shipped stale articles to readers twice (#008 and #010).
metadata:
  type: feedback
---

For a long list of high-volume publishers, the visible byline date is **rendered client-side from JSON-LD** or appears as a relative phrase ("2 days ago") that the static HTML alone cannot resolve. Trying to read the visible byline therefore returns nothing, and the date-only URL slug fallback kicks in — producing the `T00:00:00+09:00` tell. This has caused two confirmed reader-facing incidents:

- **#008 (2026-05-14)**: ServeTheHome CES 2026 launch article (January 7, 2026) shipped as today's news.
- **#010 (2026-05-18)**: Tom's Hardware Big-Tech capex article (April 30, 2026) shipped as a main article in a 5/16–5/18 window — 18 days stale. Same run also produced 16/45 (36%) articles with `T00:00:00` fallback timestamps.

**Why JSON-LD is the right path:** every modern publisher embeds Schema.org `NewsArticle` JSON-LD in a `<script type="application/ld+json">` tag near `<head>`. The `datePublished` field is ISO 8601 with timezone — far more reliable than scraping visible HTML.

**How to apply (mandatory whenever a candidate yields no clean byline timestamp):**

1. After fetching the article HTML, scan for `<script type="application/ld+json">`. Multiple blocks may exist — parse each, look for `@type` in `["NewsArticle", "Article", "ReportageNewsArticle", "BlogPosting"]`, then read `datePublished`.
2. The value is typically `"2026-05-16T14:32:00-04:00"` (with publisher timezone) or `"2026-05-16T18:32:00Z"`. Convert to KST (`+09:00`) and use directly.
3. If JSON-LD is absent or `datePublished` is missing, fall back to (in this order):
   - `<meta property="article:published_time">`
   - `<meta name="parsely-pub-date">`
   - `<meta itemprop="datePublished">`
   - RSS `<pubDate>` if the article came from a feed (RSS dates are usually reliable; use the feed value directly, do not re-parse the HTML).
4. If none of the above yields a precise time AND the visible byline is also date-only (e.g., "By X — Jan 7"), **drop the article**. Do not synthesize `T00:00:00`.

**Publisher coverage** (confirmed JSON-LD `datePublished` present, all need this treatment):
- Future plc family: Tom's Hardware, TechRadar, Tom's Guide, PC Gamer, AnandTech (legacy)
- US tech press: TechCrunch, ServeTheHome, EE Times, The Verge, Ars Technica, The Information
- Wire/business: Bloomberg, Reuters, Nikkei Asia, Fortune, fool.com (Motley Fool)
- Korean: koreaherald.com, en.sedaily.com, zdnet.co.kr (en + ko), etnews.com, nate.com (often syndicated)
- Corporate: asml.com, indexbox.io, freemalaysiatoday.com, ad-hoc-news.de

**Anti-pattern detected on past runs:**
- Fetching, finding no visible byline date, then writing `published_at` as `<date-from-URL-slug>T00:00:00+09:00`. The pipeline now has a hard gate at Self-Verification step 2a that rejects any such timestamp before disk-write.

Related: [[feedback-verify-publication-date]] (the original byline rule, now hard-gated), [[reference-sources]] (source-specific notes).
