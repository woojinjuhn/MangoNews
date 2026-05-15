---
name: Content-overlap dedup beyond exact duplicates
description: Even non-identical articles with meaningful content overlap must be deduped — keep the stronger one, drop the weaker even if both individually pass quality bar
type: feedback
---

Stage-2 must dedupe on **topical / informational overlap**, not just on exact URL or near-identical headlines. If two articles share a meaningful chunk of the same story (same company + same beat + overlapping data points), include only the stronger one in main; drop the weaker — even when the weaker one is well-written and otherwise main-worthy on its own.

**Why:** 2026-05-14 #008 review. Both `AMD Helios AI Rack Platform: 256-Core Venice EPYC + Instinct MI455X GPU with Pensando DPU Networking — H2 2026 Launch` and `AMD's EPYC Steamrolls the Server Market With Record 46.2% Revenue Share in Q1 2026` made main. They are not duplicates — different angles (product roadmap vs market share) — but they share enough AMD-EPYC-momentum substance that the second one was redundant from the reader's standpoint. User: "두번째 기사는 덜 중요하니까 포함시키지 않았어도 됐을거 같아. 앞으로는 완전히 동일한 동일한 기사가 아니더라도 겹치는 기사는 제외시켜줘." This generalizes the ETNews-specific rule in [[feedback_etnews_same_event_dedup]] to ALL sources.

**How to apply:** Before locking main, for every pair of kept articles ask: *"Does the reader leave article B feeling they already learned the core of it from article A?"* If yes, drop B even if B individually passes the importance bar. The test is reader-perceived redundancy, not lexical similarity.

Concrete pair-types to watch:
- Same company, same beat, same week: product launch story + market-share story (today's AMD case)
- Sovereign event + ripple-effect analysis from same news cycle (e.g. Samsung strike main + TrendForce impact analysis — partial overlap; see [[feedback_ongoing_story_overcoverage]])
- Earnings call + follow-up "what it means" piece
- Policy announcement + same-day commentary

Tie-breaker rule when overlap is found:
1. Pick the one with more *new* information density (data points, named products, specific numbers).
2. If tied on info, pick the one that complements the rest of main better (category diversity).
3. Log the dropped article in `selection_notes` with reason="content overlap with id X — weaker".

Do NOT keep both and hope the designer dedups — designer only dedups exact URLs.
