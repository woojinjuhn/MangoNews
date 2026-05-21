---
name: 2026-05-21-nvidia-earnings-cluster
description: 2026-05-21 사례 — NVIDIA Q1 FY2027 실적 12개 기사 + 삼성 파업 타결 7개가 동시에 몰린 dual-mega-event 압축 결정 기록
metadata:
  type: project
---

2026-05-21 수집물(31건)이 두 메가이벤트에 집중: NVIDIA Q1 FY2027 실적(12건, 5/20 미국 오후 발표 = 5/21 KST 새벽) + 삼성 노사 5/20 23시 파업 직전 합의(7건). 16건 keep, 15건 discard로 압축(52% 유지율).

**NVIDIA cluster (id 0,1,2,3,4,5,6,7,8,9,22,23,27,28) — 14건 → 5건 keep:**
- id 8 (Blockonomi) — 영문 1차 종합, Hyperscale/ACIE 세그먼트 분할 첫 공개
- id 9 (thelec) — 한국어 1차, 원화 환산 + 영업이익 147%
- id 7 (TechCrunch) — 베라 CPU $200B TAM 차별 각도(MangoBoost DPU 인접)
- id 23 (Yahoo Finance) — $500B 백로그 + 7월 베라 루빈 첫 출하 디테일
- id 2 (techM) — 1조 달러 하이퍼스케일러 CAPEX 발언 한국어 1차
- 나머지 9건은 동일 각도 중복(자사주 매입/배당/CN H200 제로/주가 하락)으로 discard

**Samsung cluster (id 10,11,12,13,14,15,29) — 7건 → 3건 keep:**
- id 12 (Tom's Hardware) — 영문 1차, 48,000 노조 / 18일 파업 / 1조원 일일 손실
- id 10 (etnews) — 한국어 1차, OPI + DS 특별경영성과급 10.5% 상세
- id 29 (TradingKey) — KOSPI 대시 + NVIDIA dual catalyst 종합
- id 11/13/14/15/24는 동일 정보 중복 discard

**Why:** 단일 시장 이벤트(NVIDIA 실적)가 14건 들어와도 dedup 시 5개 각도면 충분 — primary 영문/primary 한국어/차별 비즈 각도(베라 CPU TAM)/컨퍼런스콜 디테일/거시 가이던스 발언. 더 많이 keep하면 filter_2 top-8이 NVIDIA로 도배됨.

**How to apply:** 어닝/메가이벤트 14+ 클러스터는 5각도 최대 keep + 한국어 1차 보완 1건이 권장. 6각도 이상은 filter_2 top-8 다양성 훼손 위험.

[[2026-05-15-samsung-strike-cluster]] [[2026-05-20-dual-event-compression]]
