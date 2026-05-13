---
name: published_urls registry uses exact URL matching
description: Dedup against published_urls.jsonl is by exact URL, not by event — same event from different domain/URL is separately registered
type: feedback
---

published_urls.jsonl은 정확 URL 매칭이 기준이다. 같은 사건이라도 매체/URL이 다르면 별도 등록 가능하고, collector도 정확 URL로 cross-day dedup한다.

**Why:** 사건 단위로 dedup을 하면 동일 사건의 한국어/영문 보완 보도, 또는 후속 보도(추가 정보 포함)를 차단해 정보 손실이 발생한다. URL 단위 dedup은 매체별 기사를 독립 자산으로 다룬다.

**How to apply:** published_urls.jsonl을 로드한 뒤 신규 기사 URL을 정확 문자열 비교로 체크. 동일 사건의 다른 매체 URL은 정상 처리(keep 가능). 단 같은 매체에서 같은 URL이 여러 day에 등장하면 stale로 discard.

예: 2026-04-30 등록 시 Amazon AWS Q1 techcrunch URL과 Google Cloud Q1 techcrunch URL은 이미 등록 → discard. 동일 사건의 다른 매체 보도(예: Intel Q1을 timothysykes과 quartz가 각각 보도)는 별도 keep+등록 가능.
