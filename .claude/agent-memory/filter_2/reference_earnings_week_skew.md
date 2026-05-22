---
name: Earnings-week market category skew is legitimate news cycle, not over-concentration
description: Late April / late July / late October / early February days legitimately tilt main toward `market` category due to hyperscaler earnings clustering. Don't force diversification on these days.
type: reference
---

분기 어닝 사이클 종료 직후(4월 말, 7월 말, 10월 말, 2월 초) Stage-1 입력은 `market` 카테고리로 무겁게 쏠린다 — 2026 Q1 run은 27건 중 11건이 market이었다. 하이퍼스케일러 capex 발표, TPU/Trainium 전략, AWS/Azure/Google Cloud 성장, 한국 수출 figures가 5~7일 윈도우 내에 다 떨어짐.

**Why:** 이건 진짜 뉴스 사이클 효과이지 필터링 편향이 아니다. 하이퍼스케일러 어닝은 AI-인프라 수요 baseline을 재정의하는 사건이라 한 주에 몰리는 게 정상.

**How to apply:** 이런 날에는 market-skewed `category_breakdown_main` 수용 (예: 메인 8개 중 2~3슬롯 market은 정상). 카테고리 분산을 위해 덜 중요한 스토리를 메인에 밀어넣지 말 것. 4축 평가 사용:
- 시장 영향력 (어닝 주차에 가장 무겁게 작동)
- 망고부스트 직원 주목도 (어닝 주차에 강함)
- 대중 관심도
- 카테고리 분산 (이 축은 어닝 주차에 의도적으로 약화)

products 슬롯과 competitor-tagged collaboration/projects 아이템은 여전히 적절히 들어갈 자리가 있다 — 메인 전체를 market으로 도배할 필요는 없음.

## 적용 트리거 캘린더

- 4월 마지막 주: Q1 어닝 (NVIDIA, AMD, Intel, Microsoft, Google, Amazon, Meta, Samsung, SK하이닉스)
- 7월 마지막 주: Q2 어닝
- 10월 마지막 주: Q3 어닝
- 2월 첫 주: Q4 어닝 + 연간 capex 가이던스
