---
name: Korean primary vs English primary handling
description: When same event is covered by both Korean and English primary sources, both can be kept if they bring distinct value
type: feedback
---

같은 사건을 한국어 1차 매체(aitimes, thelec 등)와 영문 1차 매체(techcrunch, siliconangle, bloomberg 등)가 동시에 보도할 때, 두 기사가 상호 보완적이면 둘 다 keep해도 된다.

**Why:** MangoBoost 직원은 한·영 양쪽 컨텍스트를 모두 사용하며, 한국어 매체는 종종 환산 단위(억 원), 국내 산업 영향 분석을 추가 제공하고 영문 매체는 1차 컨퍼런스콜 인용·세부 재무 항목을 더 자세히 다룬다.

**How to apply:** dedupe할 때 단순히 "같은 사건 = 중복"으로 단정하지 말고, 두 기사 본문을 비교해 (a) 한쪽에만 있는 사실(financial breakdown, executive quote)이 있는가, (b) 한국어 단위 환산이나 국내 영향 분석이 추가되었는가를 확인. 둘 다 keep할 때는 keep_reason에 "(한국어/영문 1차 보완)" 명시.

예: 2026-04-30 Qualcomm DC 칩 — thelec.kr (한국어 1차)와 siliconangle (영문, 메모리 공급제약 추가) 둘 다 keep. Anthropic $900B aitimes 보도는 techcrunch URL과 별도이므로 keep.
