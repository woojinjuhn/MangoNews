---
name: Raw articles lack id field; filename varies (01_raw.json or 01_collected.json)
description: Raw harvester articles are not tagged with id; collector filename varies between dates; matching is by URL/title
type: reference
---

Raw collector output `articles[]` entries do not carry an `id` field. The numeric ids used by Stage-1 (`02_filtered.json`) are assigned by position in the raw list — but Stage-1 may use 2-digit ids (`"01"`, `"08"`) on some dates rather than `art_NNN`.

The collector output filename is **not stable** — observed `01_raw.json` on some dates and `01_collected.json` on others (e.g., 2026-05-07). Always Glob `data/<date>/*` first to find the actual file rather than assuming `01_raw.json`.

**Why:** filter_2 needs bodies attached to kept entries via `id`, but the raw file has no `id` field and the filename can vary across runs.

**How to apply:**
- Glob `C:\Users\pc-24-042\mangonews\data\<date>\*` to discover the raw filename for the day.
- Join Stage-1 kept entries to raw bodies by **URL** (most reliable) or title. Do not rely on positional id mapping.
- Each raw article block spans roughly 10 lines (title, url, body, published_at, source, topic_tag, secondary_tags, competitor).
