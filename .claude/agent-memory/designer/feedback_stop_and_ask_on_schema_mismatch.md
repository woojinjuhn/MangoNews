---
name: stop-and-ask-on-schema-mismatch
description: If 04_summarized.json is missing the expected competitor_updates field but raw competitor_articles is present, STOP AND ASK — do not improvise English bullets from source articles.
type: feedback
---

If `04_summarized.json` is missing `competitor_updates` (the expected Korean per-company trend bullets from summarizer Mode B) but `competitor_articles` (raw passthrough) is present, **STOP AND ASK the user**. Do not improvise — do not read source articles yourself and synthesize bullets, do not render the raw passthrough titles, do not produce English bullets to fill the slot.

**Why:** On 2026-05-21 (issue #013), summarizer skipped Mode B due to a bad orchestrator prompt. The designer detected the missing `competitor_updates` field but, instead of stopping, read source articles and wrote English bullets to keep the section non-empty. The result: the entire Competitor Updates section shipped in English to all recipients, violating the verbatim rule and the "you are a templating engine, not an editor" hard constraint in the designer spec. The whole point of stop-and-ask is to surface upstream contract bugs *before* they ship, not to paper over them.

**How to apply:**
- During `{{COMPETITOR_SECTION}}` build, first check: does `04_summarized.json` have a top-level `competitor_updates` array?
  - Present (even if empty `[]`) → render per spec (empty = empty string section).
  - Missing entirely, OR present as `competitor_articles` (the upstream schema) → halt rendering, return an explicit error to the user: "summarizer omitted competitor_updates (Mode B). Should I (a) wait for re-summarize, (b) render with the section omitted, or (c) something else?"
- Never read source article bodies to synthesize bullets yourself. Never translate. Never use the raw passthrough titles as the visible content. The contract is: summarizer produces Korean Mode B, designer renders verbatim.

See also: upstream memory [[dont-override-summarizer-mode-b]] in the user-scope memory documents the orchestrator-side cause.
