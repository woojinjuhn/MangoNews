---
name: MangoNews Pipeline Context
description: MangoNews daily collector agent pipeline context — sources, test-mode overrides, dedup state
type: project
---

MangoNews is a daily 7 AM KST newsletter pipeline for MangoBoost (DPU semiconductor company).

**Pipeline architecture:**
- Channel A: RSS feeds + web sections from `config/sources.yaml` (The Register, NextPlatform, SemiAnalysis, ServeTheHome, HPC Wire, Blocks & Files, AI Times, Tom's Hardware, Data Center Dynamics, Wired, TechCrunch, IEEE Spectrum, Network World, ArtificialIntelligence-News + Naver News IT section)
- Channel B: Search-based discovery via 4+ WebSearch queries per domain (AI/semiconductor/datacenter/competitor)
- Dedup state: `state/published_urls.jsonl` — read-only for collector; downstream filter-curator appends kept URLs

**Test-mode override (first run 2026-04-30):** Channel A skipped entirely. Channel B only 4 queries. Volume target 5-10 articles.

**Why:** First end-to-end pipeline test to verify JSON schema and downstream flow.
**How to apply:** Future runs should run both channels unless explicitly overridden.
