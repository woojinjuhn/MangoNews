---
name: Stage-1 contract quirks — don't trust summary totals, no id field, same-event different URLs
description: Three Stage-1 (02_filtered.json) gotchas to defend against — summary.competitor_kept_total can undercount, raw articles have no id field, and same-event-different-URL is normal not duplicate.
type: reference
---

Stage-2가 Stage-1 출력을 소비할 때 신뢰하면 안 되는 3가지 contract 결함. 모두 실제 발생 사례 기반.

## (1) summary 토탈은 advisory — kept[]를 직접 세라

Stage-1의 `summary.competitor_kept_total`과 `summary.by_competitor`는 advisory이며 `kept` 배열의 실제 `competitor != null` 카운트와 불일치할 수 있다.

**Example (2026-05-04):** summary가 `competitor_kept_total: 6`로 보고했으나 kept에는 7건이 있었다 — id=23 SDxCentral inference market analysis(`competitor: Tenstorrent`)가 summary에서 누락. 같은 패턴이 `total_received`에도 적용됨 — 2026-05-03 사용자 프롬프트가 42개라고 했지만 articles[]에는 46개.

**How to apply:**
- `competitor_articles_count`는 kept를 iterate하며 `competitor != null` 직접 카운트.
- `total_received`도 articles[] length로 derive — `run_summary.total` 신뢰 금지.
- 같은 직접 iteration으로 `by_competitor` 출력 채우기.

## (2) Raw articles have no id field; filename varies

Raw collector output(`01_raw.json` or `01_collected.json` — Glob으로 발견)의 `articles[]` entries는 `id` 필드 없음. Stage-1이 부여하는 numeric id는 raw list 내 위치 기반이지만, 어떤 날짜는 `"01"`, `"08"` 2자리, 다른 날짜는 `art_NNN` 형식.

**Why:** filter_2는 kept 항목에 body를 붙여야 하는데 raw에 id가 없고 filename도 다름.

**How to apply:**
- `data/<date>/*`를 Glob해 raw 파일명 발견.
- kept entry → raw body 매칭은 **URL** (가장 신뢰 가능) 또는 title로. 위치 id mapping 의존 금지.
- 각 raw article block은 약 10줄 (title, url, body, published_at, source, topic_tag, secondary_tags, competitor).

## (3) Same event, different URLs across days is NORMAL

Stage-1이 같은 사건의 다른 매체 URL을 keep한 경우 (예: NVIDIA-Jensen-skips-China — 이전 호는 `thetechportal.com`, 오늘은 `thenextweb.com`), registry는 URL-exact dedup이므로 차단되지 않는다. Stage-1의 keep 결정을 event-level dedup으로 재판정하지 말 것.

**Why:** Registry는 canonical URL이 dedup key (collector contract: "Trust the existing canonicalization; do not re-canonicalize"). Same-event-different-URL은 dedup 위반 아님 — 한국어 1차 + 영문 1차 보완 보도가 정상 작동하는 메커니즘.

**How to apply:**
- URL이 다르고 Stage-1이 keep했으면 그대로 forward.
- 같은 사건이 최근 호에 등장했다면 `selection_notes`에 명시 (summarizer가 알도록) — 단 article을 block하지 않음.

## Related defensive rules

- [[feedback_check_registry_for_dupes]] — collector dedup 실패 대비 registry 재확인 (Stage-2가 마지막 방어선).
- [[feedback_stale_date_drop_not_demote]] — 비슷한 don't-trust-upstream 패턴 (stale published_at는 demote가 아니라 drop).
