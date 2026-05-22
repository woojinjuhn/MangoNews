---
name: Single/dual mega-event cluster compression doctrine
description: When 5+ articles cluster on one event (Samsung strike, NVIDIA earnings, Google I/O), Stage-1 must compress to 3-6 distinct angles. Without compression, filter_2's top-8 gets dominated by one event and other categories get crowded out.
type: reference
---

Stage-1은 generous하게 keep하는 게 기본이지만, **동일 사건의 동일 각도 중복**은 그 generous의 예외다. filter_2가 top-8만 선택하므로 같은 사건의 너무 많은 각도를 통과시키면 다른 카테고리(NVIDIA·TSMC·Cerebras 등)가 무조건 밀려난다. Single 클러스터는 3-5각도, dual mega-event는 클러스터당 3-4각도로 압축.

## Single mega-event compression (≥5 articles on one story)

다음 각도별로 1건씩만 keep:

1. **운영 영향** — 감산·웜다운·일일 손실액·재무 영향 수치
2. **경영진/리더십 발신** — CEO 발언, 우려 표명, 비상 회의
3. **협상/규제/정책 동학** — 노조 입장, 정부 중재, 최후통첩, 규제 결정
4. **비즈니스/경쟁 영향** — 로드맵 변경, 시장 점유율 이동, 경쟁사 반사이익
5. **한국어 1차 정리본 1건** — 정부 대응 등 영문에 없는 디테일 있을 때 ([[feedback_korean_source_preference]] 참조)

같은 각도면 가장 권위 있고 디테일 풍부한 1개만 keep, 나머지는 `"duplicate of id X (same angle)"` 사유로 discard.

## Worked example A — Samsung 18-day strike (2026-05-15, 10 articles)

10건 → 6건 keep. 클러스터 60% 유지율은 통상 30% 가이드보다 높지만 사건 비중(100조 손실 위협) 감안 정당화.

- id 7 (KH emergency mode) — 운영 영향 종합
- id 5 (KH 전영현 발언) — 경영진 위기감
- id 10 (Sedaily 40조 거부) — 협상 결렬 임계점
- id 38 (TechTimes Revives Shelved Chip) — 비즈니스 영향(로드맵 재가동)
- id 47 (한국경제) — 한국어 1차본(정부 긴급조정권)
- id 8 (Sedaily DRAM 36% 위협) — 메모리 시장 구도 별도 각도

## Worked example B — NVIDIA Q1 FY2027 earnings (2026-05-21, 14 articles)

14건 어닝 클러스터 → 5건 keep (어닝 한 사건이 메인 절반을 잡아먹지 않게).

- id 8 (Blockonomi) — 영문 1차 종합, Hyperscale/ACIE 세그먼트 분할 첫 공개
- id 9 (thelec) — 한국어 1차, 원화 환산 + 영업이익 147%
- id 7 (TechCrunch) — 베라 CPU $200B TAM 차별 각도(MangoBoost DPU 인접)
- id 23 (Yahoo Finance) — $500B 백로그 + 7월 베라 루빈 첫 출하
- id 2 (techM) — 1조 달러 하이퍼스케일러 CAPEX 발언 한국어 1차

나머지 9건은 동일 각도 중복(자사주 매입/배당/CN H200 제로/주가 하락)으로 discard. 6각도 이상 keep하면 filter_2 top-8 다양성 훼손.

## Dual mega-event compression (2 events × 5+ articles each on same day)

각 클러스터를 3-4 distinct 각도로 압축. 기본 keep-mix:
- primary-source release (vendor blog, official PR)
- best technical deep-dive (실리콘/네트워킹/spec)
- best business/financial framing
- (optional) 강한 한국어 1차 if it adds local-market angle

## Worked example C — Google I/O + Dell Tech World (2026-05-20, 30 articles)

18건 keep, 12건 drop (60% 유지율).

- Google I/O 8건 → 4건: 키노트(id 22), TPU 8 deep-dive(id 23), Blackstone JV(id 20), 한국어 1차 cost framing(id 0)
- Dell Tech World 3건 → 2건: Next Platform on-prem narrative(id 13), DCD product list(id 21). 한국어 번역 2건 drop.
- Tenstorrent M&A: 영문 1차 keep(id 24 Blockonomi), 한국어 번역(id 27 newspim) drop — 동일 Bloomberg source.
- 삼성 노사 2건: emergency arbitration 디테일 강한 1건만 keep.

**핵심:** 같은 키노트의 same-source primary docs(Google Blog, 공식 PR)가 있으면 secondary aggregator coverage보다 우선. 영문 aggregator retread는 1개로 충분.

## Headline calibration — when 3 headlines is justified

2026-04-30 사례: 헤드라인 3개 마킹 (삼성전자 Q1 HBM4 양산, SK하이닉스 Q1 역대 최대, 퀄컴 DC 칩 출하). 정당화 기준:
- 세 사건의 **비트(beat)가 다른가** — 한국 메모리 양강 실적 / 글로벌 HBM 마일스톤 / DC 시장 경쟁구도 재편 = 모두 다른 비트
- 모두 1차 정보 + 새 숫자 포함
- 같은 카테고리 3건(예: Q1 어닝 3개)이면 보통 1개로 압축. 단 **한국 메모리 양강은 시장에서 함께 비교되는 페어**이므로 한 번에 잡아도 dilution 아님.

향후 분기 결산 시즌에 반복 가능한 패턴. 같은 카테고리 3건이 셀 다른 비트를 갖지 않으면 헤드라인 2개로 축소.

## Cross-reference

- filter_2 측 dedup 규칙: [[feedback_main_set_dedup]]
- vendor multi-part 키노트는 dedup 예외: filter_2의 [[reference_vendor_multipart_event]]
- 한국어/영문 1차 보완 keep: [[feedback_korean_source_preference]]
- 어닝 주차 카테고리 skew 정상: filter_2의 [[reference_earnings_week_skew]]
