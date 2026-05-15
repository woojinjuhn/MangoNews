---
name: Cap ongoing-saga coverage to avoid issue-level dominance
description: When a single multi-day story (Samsung strike, NVIDIA export ruling, OpenAI funding) keeps generating articles, cap it at 1 main + 0–1 light complement, even if multiple keeps survive Stage-1
type: feedback
---

Some stories run for days or weeks and produce a fresh batch of articles every issue. Stage-2 must NOT mirror that volume into main. Cap one ongoing-saga story at **one** strong main slot. Add at most one complementary angle if it brings genuinely new dimension (e.g. quantified second-order impact). Three articles on the same saga in one issue is over-coverage even when each article is individually strong.

**Why:** 2026-05-14 #008 included three Samsung-strike articles: (1) `Samsung's critical union negotiations break down ... 18-day chip factory strike — Korean PM calls emergency meeting`, (2) `[News] Samsung Strike Seen Contained on Revenue Impact, with Price Support and Order Shift Risks to SK Hynix and Micron`, (3) Korea citizen-dividend piece partially anchored on Samsung. User: "최근에 삼성 노조 파업으로 인해 삼성관련 기사들이 많은거 같아. 오늘 기사만 봐도 삼성 파업 관련 기사만 3개나 실렸어." Articles (1) and (2) were judged too similar — one event, one ripple analysis was enough; both together was redundant. The reader is following the saga across issues; one fresh angle per issue is the right cadence.

**How to apply:**
1. Before locking main, group surviving keeps by *story* (not just by company or by URL). A story = a named ongoing event with continuing news (strike, IPO process, export ban, acquisition, lawsuit). Use `selection_notes` to declare each group.
2. For any group with ≥2 main candidates, ask: *"Does the second article expose a dimension the first doesn't cover at all?"* If the second is mostly the same event re-told, drop it. Complementary = new data, new affected party, new geographic angle, new regulatory wrinkle.
3. If you must pick one, prefer:
   - The article with the most concrete development of the day (the event happened) over the analysis piece.
   - Unless the analysis piece is the **only** way to surface MangoBoost-relevant impact (e.g. ripple to SK hynix / Micron supply) — in that case the analysis can stand alone, replacing the event story.
4. Across consecutive issues, vary the angle. Issue N: the event. Issue N+1: the consequence. Issue N+2: the resolution. Avoid re-litigating the saga from the top each day.
5. Stories that auto-trigger this rule based on past pipelines:
   - Samsung strike (current — May 2026)
   - NVIDIA H20 / H200 China export saga
   - OpenAI funding rounds
   - Intel restructuring / foundry split
   - TSMC fab announcements
   - Any earnings cycle for a single company spawning multiple analyst takes

Log the dropped article(s) in `selection_notes` with reason="saga over-coverage — [story name] already represented by id X".

Related: [[feedback_etnews_same_event_dedup]] (intra-source same-event rule); [[feedback_content_overlap_dedup]] (broader content-overlap rule).
