---
name: Main-set dedup — content overlap, same-event duplicates, ongoing-saga cap
description: Before locking main, dedup by topical/informational overlap (not just exact URL). Drop weaker article when two keeps share a meaningful chunk of the same story; cap multi-day ongoing sagas at 1 main + 0-1 complement.
type: feedback
---

Stage-2의 메인 선정에서 dedup은 **정보적/주제적 겹침** 기준이지 정확 URL이나 헤드라인 유사도가 아니다. 두 기사가 같은 회사 + 같은 비트 + 겹치는 데이터 포인트를 공유하면, 둘 다 개별적으로 메인급이어도 약한 쪽을 drop. 디자이너는 정확 URL만 dedup하므로 여기서 안 거르면 그대로 발송된다.

## Core test

매 메인 후보 쌍에 대해: **"독자가 기사 B를 읽고 '이미 A에서 핵심을 다 봤다'고 느끼는가?"** → 그렇다면 B drop. 어휘 유사도가 아닌 독자-체감 redundancy가 기준.

## Three forms of the same rule

### (1) 일반 content overlap
같은 회사·같은 비트·같은 주(週)에 다른 각도로 나온 두 기사 (예: 제품 로드맵 + 시장 점유율). **2026-05-14 #008**: AMD Helios AI Rack (제품) + AMD EPYC 46.2% 점유율 (시장) — 다른 각도지만 "AMD 모멘텀" 본질이 겹쳐서 두 번째가 redundant. 사용자 피드백: "완전히 동일한 기사가 아니더라도 겹치는 기사는 제외시켜줘."

### (2) ETNews 동일 매체 동일 사건 (sub-case)
ETNews/전자신문은 한국 반도체 메이저 이슈에 op-ed + 이슈플러스 심층을 동시 발행한다. Stage-1이 둘 다 keep해서 보내도 메인은 데이터 풍부한 1건만. **2026-05-06 삼성 파업 케이스**: op-ed("국가경제 치명적 타격")와 [이슈플러스](생산 -58.1% + CXMT/YMTC 점유율) 동시 keep → 정량 데이터 있는 후자만 메인 채택.

### (3) Ongoing saga over-coverage cap
다일 동안 매 호마다 새 기사가 쏟아지는 사건(삼성 파업, NVIDIA 수출 규제, OpenAI 펀딩, Intel 구조조정, TSMC 팹, 단일 회사 어닝 사이클). 메인 1건 + 새 차원을 가져오는 보완 0~1건으로 cap. **2026-05-14 #008**: 삼성 파업 메인 3건(이벤트 + 파급 + 시민배당) → 한 사건이 메인 절반을 잡아먹음. 사용자 피드백: "삼성 파업 관련 기사만 3개나 실렸어."

## How to apply

1. 메인 락 직전에 surviving keeps를 **story** 단위로 그룹화 (story = 명명된 진행 중 이벤트 — 파업, IPO, 수출규제, 인수합병, 소송, 어닝). `selection_notes`에 그룹을 선언.
2. ≥2 메인 후보를 가진 그룹마다: "두 번째가 첫 번째에 전혀 없는 차원을 드러내는가?"
   - **있음** = 보완 (새 데이터, 새 영향받는 주체, 새 지리적 각도, 새 규제 요소) → 둘 다 keep
   - **없음** = 재담론 → 약한 쪽 drop
3. 한 쪽만 골라야 하면: 데이터/숫자 풍부한 쪽 > 분석/감정 톤. 단, MangoBoost 관련 ripple(SK하이닉스·Micron 공급 영향 등)이 분석 기사에만 있으면 분석을 채택.
4. 연속 호(號) 사이에서는 각도를 회전: N호 = 이벤트, N+1 = 결과, N+2 = 해결. 같은 saga를 매번 처음부터 다시 쓰지 않음.
5. Tie-breaker: (a) new-info 밀도 → (b) 카테고리 다양성 → (c) 한국어 1차 + 영문 1차 보완은 예외 (둘 다 keep 가능 — [[feedback_korean_source_preference]] 참조).

## 자동 적용 saga 리스트 (관측 기반)

Samsung 파업, NVIDIA H20/H200 중국 수출, OpenAI 펀딩, Intel 구조조정/파운드리 분할, TSMC 팹 발표, 단일 회사 어닝 사이클의 multiple 애널리스트 takes.

## 로그 형식

drop된 기사는 `selection_notes`에 사유 명시:
- content overlap: `"dropped id X — content overlap with id Y (weaker)"`
- ETNews 동일 사건: `"dropped id X — ETNews same-event redundant with id Y"`
- saga over-cap: `"dropped id X — saga over-coverage; [story name] already in main as id Y"`

## 예외 — vendor multi-part event는 dedup 아님

같은 vendor의 단일 키노트(Google I/O, NVIDIA GTC, Apple WWDC)에서 나온 multi-part primary blog는 각 파트가 별개 DPU/실리콘/JV/모델 각도를 가지므로 dedup 대상 아님. [[reference_vendor_multipart_event]] 참조.
