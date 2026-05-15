---
name: Jargon selection — high bar, default to NOT including
description: The jargon section exists to aid readability for genuinely unfamiliar terms only. Default is to skip. MangoBoost staff are sophisticated industry practitioners.
type: feedback
---

# The single most important rule

**The jargon section is a readability aid, not a glossary.** Unnecessary jargon entries actively harm the newsletter — they clutter the page, dilute genuinely useful entries, and condescend to the reader. **Default behavior: do NOT include.** Add an entry only when a typical MangoBoost employee would genuinely not know the term.

**Why:** MangoBoost is a DPU (Data Processing Unit) semiconductor company. Its employees are deep practitioners in AI infrastructure, semiconductors, datacenters, accelerators, and packaging. They know the basic vocabulary of the industry, plus standard business and finance terms. (User feedback: 2026-05-03 #001 review, 2026-05-04 #002 review, 2026-05-14 #008 review.)

**The reader-perspective test (apply to every candidate term):**
1. *"Could a typical MangoBoost engineer or PM not know this?"* → If they almost certainly know it, **skip**.
2. *"Does the term explain itself when read aloud?"* → If yes, **skip**.
3. *"Would the explanation I'd write be roughly a translation of the term?"* → If yes, **skip**.
4. *"If I removed this entry, would the reader actually be confused?"* → If "no, they'd be fine," **skip**.

When in doubt, **skip**. Cleaner is better.

# What to SKIP — categories with examples

## 1. Basic semiconductor / AI-infrastructure vocabulary
Staff knows all of these regardless of spell-out, parenthetical gloss, or Korean form:

- **DPU** (MangoBoost's own product category — defining this is condescending)
- **HBM**, **HBM2/3/4/5** (High-Bandwidth Memory)
- **GPU**, **CPU**, **NPU**, **SoC**, **FPGA**, **ASIC**
- **SSD** (including `기업용 SSD`, `enterprise SSD`)
- **DRAM**, **SRAM**
- **CUDA**, **OpenCL**
- **LLM** (model architectures like `MoE` are still includable)
- **하이퍼스케일러** (hyperscaler), **클라우드**, **데이터센터**, **반도체**
- **팹리스** (fabless), **파운드리** (foundry), **레티클**, **노광**
- Power / compute scale units: **W**, **kW**, **MW**, **GW** (gigawatt), **TFLOPS**, **PFLOPS**, **엑사플롭스 (exaflop)** — staff knows what "GW datacenter" or "exaflop cluster" means

## 2. Korean (or mixed) compound expressions that are self-explanatory
If a phrase tells you its meaning by being read literally, do NOT define it:

- `기가와트(GW) 단위 컴퓨팅 용량` (gigawatt-scale compute capacity — phrase explains itself)
- `풀스택(full-stack) 전략`
- `기업용 SSD(enterprise SSD)`
- `커스텀 실리콘`
- `자체 칩 외판`
- `메모리 처리 유닛 (MPU)` if "메모리 처리 유닛" itself reads as the explanation
- `SRAM 기반 추론 칩`
- `양자 계약(bilateral deal)`
- `750MW 저지연 AI 컴퓨트` / `N GW 데이터센터 클러스터` — staff knows MW/GW and what "저지연 컴퓨트" means; concatenating known parts does NOT create a new term worth defining (2026-05-14 #008 review)
- Anything where the explanation would be a near-tautology

## 3. K-* prefix policy compounds
Korean policy programs that prefix a known industry term with `K-` are self-explanatory once the staff knows the industry term. **Do NOT include**:

- `K-NPU` (NPU is baseline; K- means Korean version of)
- `K-Cloud` (same logic)
- `K-Nvidia 이니셔티브` — the prefix conveys the meaning
- `소버린 AI` ("소버린" = sovereign; widely used in Korean policy press)

The exceptions are policy programs whose name does NOT decompose into a known root:

- `독파모 프로젝트` — opaque acronym, worth a one-liner
- `국민성장펀드 반도체/AI 부문` if the article assumes background — usually a quick body mention is enough
- `Stargate` (OpenAI) — nominal codename, not a transparent compound

## 4. Common business / financial terms
Staff includes business and PM roles familiar with standard vocabulary:

- **수주잔고 / 백로그 (backlog)**
- **자본지출 / capex** — though specific capex *figures* with currency conversion are body content, not jargon
- **YoY / QoQ / TTM**, **run rate**
- **MoU**, **JV**
- **특수목적법인 / SPC**
- Standard IPO / financing vocabulary: S-1, IPO, valuation, lockup, etc.
- **초과청약 N배** (oversubscribed by N times) — IPO press standard, self-evident: "20배 초과청약" reads as its own definition (2026-05-14 #008 review)
- **공모가**, **공모가 밴드**, **상장 첫 거래일**, **유통주식**, **시가총액** — IPO mechanics baseline

# What to INCLUDE — when the term genuinely warrants it

## A. Specific product or architecture names (recent or non-obvious)
- `MI400 / Helios`, `Ironwood`, `BlueField-4`, `OCTEON 11`, `Trainium 3`, `Galaxy Wormhole`
- New packaging or process generations: `CoWoS-L`, `HBM5E`, `2nm Backside Power`
- Brief: explain what makes the product distinct (why it's news), not the category

## B. Novel technical concepts the article relies on
- `disaggregated serving / prefill 가속기`
- `KV cache (Key-Value cache)`
- `MoE (Mixture-of-Experts)`
- `speculative decoding`, `tensor/pipeline parallelism`, `quantization (FP4/FP8/INT8)`
- These earn their place because skipping them leaves the article incomprehensible

## C. Opaque policy / program names (no transparent decomposition)
- `독파모`, `Stargate`, `CHIPS Act` (when the article hinges on its specific provisions)
- The K- prefix family belongs in SKIP, not here

## D. Less-known companies the article centers on
- A *short* (1–2 sentence) intro: "Fractile — UK chip startup focused on SRAM-based inference accelerators."
- Skip well-known names: NVIDIA, AMD, Intel, Samsung, SK hynix, TSMC, Google, Microsoft, OpenAI, Anthropic, Apple, Meta, Amazon, Tesla.
- Worth including: Cerebras (specifics), Tenstorrent (relevant), Groq, SambaNova, Pliops, Astera Labs, Fractile, NeuroBlade, Lambda Labs, etc.
- Korean startups borderline: Moreh, Furiosa, Rebellions, FriendliAI, HyperAccel, DeepX — include only if the article assumes background the reader may lack

## E. Niche or emerging acronyms with specific meaning
- `LLMOps`, `RAG (Retrieval-Augmented Generation)`, `MCP (Model Context Protocol)`, `AX (AI Transformation)`
- These are AI-press common but not yet baseline like LLM

# Volume guidance

- **Per article**: 0–3 entries is normal. 4 is a soft cap; reach it only when the article genuinely covers many novel concepts. **5+ is almost always a sign of over-inclusion.**
- **Total per issue**: a healthy newsletter has perhaps 8–15 jargon entries across 8 main articles, weighted toward articles that introduce new tech / companies / policies.
- **Zero is fine**: articles about earnings, capex, market share, or general industry trend often need no jargon at all.

# The principle behind the principle

The user's bar is: *signal density over completeness*. Adding marginal jargon entries makes the newsletter look exhaustive but actually makes it harder to read. The reader is sharp; respect their time and intelligence. If you find yourself defining `풀스택`, `기가와트`, `커스텀 실리콘`, or anything that translates into itself, you have over-fired — pull back.
