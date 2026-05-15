# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

MangoNews is a daily Korean-language newsletter (target 7 AM KST) for MangoBoost employees — a DPU semiconductor company. Each weekday it produces one issue covering AI / semiconductors / datacenters / competitors and delivers it via Google Workspace SMTP. There is no web app, no server, no test suite — the entire product is the daily artifact in `data/<YYYY-MM-DD>/` and the email that gets sent.

**Core architectural rule:** this is an *agent-driven* pipeline, not a script-driven one. All editorial logic (relevance, curation, summarization, design judgement) lives inside Claude subagent prompts under `.claude/agents/`. The only PowerShell scripts in `scripts/` are thin glue for SMTP delivery and git commit. **Do not** move editorial logic into Python or PowerShell — that violates the project's foundational design.

## The 6-stage pipeline

**Trigger:** the user typing **"시작"** (canonical short form) — or equivalent natural phrasing like "오늘 뉴스 만들어줘". Both should run the full pipeline end-to-end including SMTP send, without per-stage confirmation prompts.

**Workflow rule — TodoWrite first, always.** Before invoking the `collector` subagent, you MUST create a 6-item TodoWrite list naming each stage (collector, filter, filter_2, summarizer, designer, sender) and mark them in_progress / completed as you go. This is non-negotiable for the pipeline because (a) the run takes ~25 minutes across 6 long subagents and the user needs visible progress, (b) it prevents accidentally skipping a stage on retries, (c) it makes mid-pipeline failures unambiguous to recover from. Do not "do the trivial first one" before creating the list — list first, then start.

The main Claude instance dispatches subagents sequentially via the `Agent` tool. Each stage writes a JSON artifact that the next stage reads:

```
collector  → data/<date>/01_collected.json      (40–80 raw articles, full bodies)
filter     → data/<date>/02_filtered.json       (~15–25 relevance-passing)
filter_2   → data/<date>/03_selected.json       (main ≤8 + headlines ≤3 + competitor passthrough)
summarizer → data/<date>/04_summarized.json     (TLDR / 요약 bullets / Jargon per main article)
designer   → data/<date>/05_newsletter.html     (email-ready HTML from templates/)
sender     → SMTP send + sent_log + archive
```

Each subagent definition lives in `.claude/agents/<name>.md` with model + tool allowlist in frontmatter. The agent definitions themselves are the spec — read them when modifying behavior.

## State files (cross-issue persistence)

Two append-only JSONL files survive across runs and shape future-run behavior. Touching either has multi-issue blast radius — be careful.

- **`state/published_urls.jsonl`** — canonical URLs already shown in past newsletters. Written by `filter_2` after main+competitor selection is locked. Read by `collector` at the start of every run for dedup. This is what keeps the "since-last-issue" recency window safe — readers never see a story twice no matter how wide the window grows over weekends/holidays.
- **`state/sent_log.jsonl`** — one JSONL line per send `{issue_number, issue_date_kst, subject, to, from, html_path, archive_path, sent_at_kst, status}`. Written by the `send_newsletter.ps1` script. The last line drives (a) the next `issue_number`, (b) collector's recency window (collect articles from `last issue date + 1 day` through today).

`archives/no_NNN.html` is the inline-base64-logo standalone copy of each issue (the in-flight email body uses `cid:logo` + LinkedResource; the archive substitutes a `data:` URI so the file renders standalone in a browser).

## Sources & secrets

- **`config/sources.yaml`** — only place to edit RSS feeds and web sections. Two channels: `rss_feeds` (fetched as feeds) and `web_sections` (fetched + crawled, used for Naver News which has no usable RSS). Recency/dedup/relevance rules are NOT here — they're in the collector prompt.
- **`.env`** (gitignored) — Google Workspace SMTP credentials. Required keys are documented in `.claude/agents/sender.md` ("Inputs" section). `MANGONEWS_TO_EMAILS` is comma-separated; `send_newsletter.ps1` enforces all recipients end in `@mangoboost.io`.

## Scripts (thin glue only)

- **`scripts/send_newsletter.ps1`** — invoked by the `sender` agent. Parses `.env`, validates recipients, rewrites the inline-base64 logo to `cid:logo` + LinkedResource for the email body, sends via System.Net.Mail SMTP, writes the standalone-renderable archive copy, and appends one JSONL line to `sent_log.jsonl`. Subject is fixed canonical `[MangoNews #NNN] YYYY-MM-DD` (override via `-SubjectOverride` for resends).
- **`scripts/auto_commit.ps1`** — runs as a `SubagentStop` hook matched to the `sender` subagent (see `.claude/settings.local.json`). Reads the latest `archives/no_*.html` to derive the issue number, commits everything with message `newsletter #NNN YYYY-MM-DD`, and pushes to `origin/main`. Always exits 0 so it cannot block a Claude Code turn. The hook payload's `subagent_type` is the defensive gate — without it the hook would fire on every subagent stop.

## Run a single stage manually

Each agent can be invoked in isolation via the `Agent` tool (subagent_type = collector / filter / filter_2 / summarizer / designer / sender). They consume the prior stage's artifact at the standard path, so a stage re-run only requires that the upstream artifact exists. For a resend of an existing issue: invoke `sender` and point it at `archives/no_NNN.html`.

## Per-agent memory layout

Every subagent has its own persistent memory directory at `.claude/agent-memory/<agent>/`. Each memory is a separate `.md` file with frontmatter (`name`, `description`, `type` ∈ {user, feedback, project, reference}); each agent's `MEMORY.md` is the index. Agents accumulate institutional knowledge across runs here — Korean source quirks, currency rules, jargon skip lists, dedup heuristics, etc. **When a user gives editorial feedback ("don't include X", "drop overlapping articles"), the durable home for it is the appropriate agent's memory, not this file and not the agent definition.**

The top-level user-scope memory at `~/.claude/projects/c--Users-pc-24-042-mangonews/memory/` holds cross-cutting facts (user profile, currency rule, "뉴스 생성" trigger).

## Permissions / hooks

- `.claude/settings.json` — committed. Pre-authorizes WebSearch, WebFetch, Write/Edit (especially under agent-memory), and PowerShell so the pipeline runs without permission prompts.
- `.claude/settings.local.json` — gitignored. Holds the SubagentStop → auto_commit hook (machine-specific paths).

## Conventions worth knowing before editing

- **No backwards-compatible filename support.** Older issues use `01_raw.json`; newer ones use `01_collected.json`. Agents discover whichever exists via Glob — don't add a renamer.
- **Currency conversion**: $1B = 10억 달러 in newsletter copy. Verify every USD mention against the source body. Korean won figures stay as-is (조/억).
- **Jargon section is a high-bar readability aid, not a glossary.** See `.claude/agent-memory/summarizer/feedback_skip_known_jargon.md` for the skip/include doctrine — basic semiconductor/AI vocabulary and self-explanatory compounds are never defined.
- **Today's date** for any agent run is the KST date at run time. Collector's recency window is `(last sent_log issue_date_kst + 1 day) … today (KST)` inclusive.
