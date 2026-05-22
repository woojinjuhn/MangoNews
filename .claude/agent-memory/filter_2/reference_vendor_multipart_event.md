---
name: Vendor multi-part event keynotes are NOT dedup candidates — keep distinct angles together
description: When a single vendor keynote (Google I/O, NVIDIA GTC, Apple WWDC, AMD Advancing AI, Dell Tech World) produces multiple primary-source blog posts on the same day, each part typically carries distinct DPU/silicon/JV/model angles. Keep them together in main; do not dedup as content overlap.
type: reference
---

하이퍼스케일러/실리콘 벤더의 단일 키노트 이벤트는 같은 날 공식 블로그에서 여러 primary-source posts를 동시 발행한다. 각 파트가 서로 다른 DPU/SmartNIC/AMD/sovereign-AI/실리콘 각도를 갖는 경우가 대부분이라 [[feedback_main_set_dedup]]의 content-overlap 규칙 예외에 해당한다.

## Canonical example: Google I/O 2026 (2026-05-19 PT = 2026-05-20 KST)

3건 primary blog 동시 발행, 모두 메인 채택 (dedup 안 함):
- **Pichai 키노트** (blog.google) — agentic Gemini 시대, $180-190B capex, 3.2 quadrillion tokens
- **TPU 8t/8i deep-dive** (blog.google/google-cloud) — 121 ExaFlops, Virgo Network 1M-chip fabric
- **Blackstone-Google $25B JV** (datacenterdynamics) — sovereign-AI positioned NVIDIA alternative

세 기사 모두 materially different DPU-relevant 콘텐츠: 키노트는 헤드라인/범위 narrative, TPU 8은 실리콘/네트워킹 technical truth, Blackstone JV는 commercial/sovereign-AI 고객 스토리. content-overlap으로 다루면 issue value의 절반을 깎아냄.

## Same-day pattern: Google I/O + Dell Tech World (2026-05-20)

30 raw articles, 2 mega-events 동시 발생. Compression 결과:
- Google I/O 클러스터 8건 → 4건 keep (키노트 primary + TPU technical + JV business + 한국어 1차 가격 프레이밍)
- Dell Tech World 3건 → 2건 keep (Next Platform on-prem narrative + DCD product list)
- Tenstorrent M&A: 영문 primary keep, 한국어 번역 drop
- 60% 유지율로 18건 keep

## How to apply

같은 vendor의 같은 키노트에서 나온 multiple primary blog는 dedup 전 각 기사가 다음 중 하나의 distinct 각도를 가지는지 점검:
1. **헤드라인 narrative** — 키노트 자체 (CEO 발표, 비전, 전체 capex 숫자)
2. **실리콘/networking technical deep-dive** — 칩 spec, 패브릭, 대역폭, 노드
3. **Commercial/JV/financing angle** — 고객 계약, 합작법인, 투자 라운드
4. **모델/product launch** — 모델 weights, API, pricing
5. **한국어 1차 with local framing** — 환율 환산, 국내 시장 영향

2개 이상 distinct 각도 = 둘 다 keep. 같은 각도 (예: 키노트 영문 aggregator 2개) = dedup.

## Vendor multi-part triggers (관측 기반)

- Google I/O (5월), Cloud Next (4월)
- NVIDIA GTC (3월), Computex 키노트 (5월 말~6월 초)
- AMD Advancing AI (10월~11월)
- Apple WWDC (6월 초)
- Microsoft Ignite (11월), Build (5월)
- Intel Innovation, Foundry Direct
- AWS re:Invent (12월 초)
- Dell Tech World (5월)
- Samsung Foundry Forum, SK Hynix DevDay

## Korean re-reportage IS dedupable

같은 키노트의 한국어 번역/요약 기사는 영문 primary와 함께 가져온 경우 dedup 대상. 단 한국어 1차 reportage가 **국내 시장 영향 분석**이나 **원화 환산** 같은 distinct 가치를 추가하면 keep 가능 — [[feedback_korean_source_preference]] 참조.

## Cross-reference

- 단일 사건 압축 휴리스틱 → filter agent의 [[reference_cluster_compression]]
- 일반 content-overlap 규칙 → [[feedback_main_set_dedup]]
