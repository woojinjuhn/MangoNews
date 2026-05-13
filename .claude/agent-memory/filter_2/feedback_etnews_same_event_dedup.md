---
name: ETNews same-day same-event dedup
description: When ETNews runs both an op-ed and a data piece on the same Korean semi event, prefer the data-rich piece for main; drop the op-ed
type: feedback
---

ETNews/전자신문은 한국 반도체 메이저 사건(예: 삼성 파업, HBM 정책)에 대해 같은 날 op-ed 헤드라인 + 이슈플러스 심층 분석 두 형태로 동시에 발행하는 경우가 많다. Stage-1 filter는 두 기사를 다른 각도로 보고 둘 다 keep하는 경향이 있다 — Stage-2에서 메인 슬롯을 두 개 다 쓰지 말고 데이터가 풍부한 한 건만 메인에 채택해야 한다.

**Why:** 2026-05-06 삼성 파업 케이스에서 #20(op-ed: "신뢰 하락… 국가경제 치명적 타격")과 #21([이슈플러스] 생산 -58.1%/-18.4%, CXMT/YMTC 점유율) 둘 다 keep로 들어왔는데, 메인 한 자리만 쓰는 게 맞았다. #21이 정량 데이터+중국 반사이익 두 축을 동시에 다뤄서 더 강했음. op-ed는 같은 사건의 감정 톤만 보강해서 독자에게 새 정보가 적다.

**How to apply:** ETNews가 같은 사건에 op-ed-style 1건 + 이슈플러스/심층 1건을 동시에 keep해 보낸 날엔, 자동으로 심층(데이터/숫자가 있는 쪽) 1건만 메인에 넣고 다른 한 건은 selection_notes에 명시적으로 드롭 사유를 남겨라. 둘 다 메인에 넣으면 같은 사건이 newsletter 양분을 차지해 카테고리 분산이 망가진다.
