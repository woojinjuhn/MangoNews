---
name: High-yield news sources per domain
description: Sources proven to yield relevant same-day articles for the four MangoNews domains
type: reference
---

## Confirmed high-yield sources (from 2026-04-30 run)

### AI domain
- **TechCrunch** (techcrunch.com/category/artificial-intelligence/) — excellent for same-day articles; listings show "X hours ago" timestamps; fetch category page first to discover links
- **Techmeme** (via llm-stats.com/ai-news) — aggregates from Bloomberg, Wired, WSJ same-day; good for surface discovery
- **Seeking Alpha** — publishes earnings-adjacent AI infrastructure news with same-day timestamps (e.g. OpenAI 10GW milestone Apr 30)
- **investing.com** — same-day breaking news on AI infrastructure milestones

### Semiconductor domain
- **IndexBox** (indexbox.io/blog/) — publishes daily semiconductor/stock market analysis with explicit dates; usually April 29/30 articles same day
- **SemiEngineering** (semiengineering.com) — deep TSMC/process node coverage; paywalled sometimes
- **TSPA Semiconductor Substack** (tspasemiconductor.substack.com) — strong TSMC Tech Symposium analysis; open access

### Datacenter domain
- **TechCrunch** — covers hyperscaler capex, cloud earnings (AWS, Google Cloud) same-day
- **Data Center Dynamics** (datacenterdynamics.com) — often 403 on direct fetch; use search to find headlines then try alternative sources
- **GlobeNewswire** — press releases with explicit publication dates; accessible

### Competitor domain
- **TechCrunch, IndexBox, NextPlatform** — competitor M&A, IPO, product news
- **NextPlatform** (nextplatform.com) — deep Cerebras/SambaNova/inference chip coverage; accessible
- **Fierce Network** (fierce-network.com) — Marvell, networking chip M&A coverage

## Paywall / access issues
- **Bloomberg** — 403 on direct fetch; use search summaries or Seeking Alpha follow-up
- **CNBC** — 403 on direct fetch
- **Digitimes** — paywall on most articles (requires subscription)
- **SemiEngineering** — often 403
- **DataCenter Dynamics** — often 403
- **Tom's Hardware** — article body not accessible (article text behind JS rendering); headlines discoverable via search
- **BusinessWire** — timeout issues occasionally

## Korean sources (tested and confirmed 2026-04-30)
- **전자신문** (etnews.com) — Korean semiconductor trade paper, wire stories appear ~6 hours after English sources
- **ZDNet Korea** (zdnet.co.kr) — IT/semiconductor news; accessible; article-level fetch works; covers Samsung HBM earnings same-day
- **더일렉** (thelec.kr) — Korean-language chip/display focused; accessible; good for Qualcomm DC chip, Samsung earnings same-day; correct domain is thelec.kr (not theelec.net)
- **AI타임스** (aitimes.com) — RSS feed works; multiple same-day articles on AI funding, Korean tech earnings; mix Korean/English content
- **MBC 뉴스데스크** (imnews.imbc.com) — accessible; Korean earnings/HBM coverage
- **Korea Times** (koreatimes.co.kr) — accessible English-language Korean tech coverage
- **Naver News IT/과학** (news.naver.com/section/105) — BLOCKED (JS-rendered, cannot fetch directly); skip or use search to surface individual article URLs

## Query patterns that surfaced novel stories
- `"April 29 2026" OR "April 30 2026" AI chip datacenter infrastructure` — precise date filtering
- `site:techcrunch.com AI datacenter semiconductor "April 29"` — site-scoped date search
- Fetch TechCrunch category page directly — lists all same-day articles with timestamps; very effective
- `삼성전자 1분기 실적 HBM4 2026년 4월 30일` — Korean Samsung earnings search; surfaces zdnet.co.kr, koreatimes.co.kr, wikitree.co.kr same-day
- `SK하이닉스 HBM 삼성전자 반도체 실적 2026년 4월 30일` — Korean memory/HBM search; surfaces MBC, Korea Herald, aitimes
- `hyperscaler cloud capex Q1 2026 earnings Microsoft AWS Google Meta` — broad earnings summary
- Tom's Hardware RSS redirect: tomshardware.com/feeds/all → 301 → tomshardware.com/feeds.xml (use latter directly)
- Tom's Hardware article bodies ARE fetchable (unlike prior note); headlines discoverable via RSS + body retrieval works

## Updated source notes (2026-05-03 run)
- **NetworkWorld** index.rss returns 404 — remove from working feeds
- **HPC Wire** feed returns 403 — unreliable; use direct article URLs surfaced via WebSearch instead

## Updated source notes (2026-06-05 run)
- **전자신문 (etnews.com)**: Mobile homepage (m.etnews.com) lists same-day articles with sequential IDs; example June 5 articles: /20260605000007, /20260605000008, /20260605000014, /20260605000023, /20260605000030. Accessible via direct URL; JSON-LD or byline gives publication time. Good for Korean-language daily market news + AI sector news.
- **뉴스핌 (newspim.com)**: Same-day articles accessible; URL pattern news/view/20260605000NNN. Korean market/semiconductor analysis.
- **TradingKey**: Accessible; publishes Korean market crash analysis with precise timestamps; good for KOSPI/semiconductor stock events.
- **파이낸셜뉴스 (fnnews.com)**: URL pattern YYYYMMDDHHMMID; accessible; good for Korean conglomerate/Jensen Huang visit coverage.
- **bloomingbit.io/feed/news**: Korea Economic Daily English-language wire; accessible; good for Jensen Huang Korea visit English coverage.
- **iClarified.com**: Accessible; covers Apple ecosystem and AI product announcements with June 5 timestamps visible; no JSON-LD but header date visible.
- **TechCrunch**: June 5 KST articles not visible on category page on June 5 morning (articles timestamped June 4 KST visible); fetch late in collection window.
- **ServeTheHome**: No June 5 articles in site index; primarily publishes Mon-Fri US daytime hours.
- **NextPlatform**: Single June 5 article confirmed in feed; 00:26 UTC = 09:26 KST; reliable for analytical/weekly AI infrastructure pieces.
- **AnySilicon**: WSTS June 2 forecast article — do NOT use for June 5 collection; out-of-window.
- **Tom's Hardware custom AI ASIC article**: "May 2026" title signals older date; always verify JSON-LD datePublished before including TH articles.
- **en.sedaily.com (Seoul Economic Daily English)**: Preview/preview articles often dated days before the event; always verify JSON-LD or byline before including.
- **Naver News (news.naver.com)**: Claude Code unable to fetch — confirmed JS-rendered, skip direct fetch; use WebSearch to surface individual article URLs from Naver then fetch those directly.
- **DataCenterDynamics RSS** works but body fetch returns 403; use headlines from feed, supplement with search
- **Wired** RSS blocked entirely by WebFetch tool
- **indexbox.io/blog/** — good for Tenstorrent/competitor product launches; same-day explicit dates; accessible
- **cloudnews.tech** — accessible; publishes Korea semiconductor export/AI summaries same-day
- **theedgemalaysia.com** — re-publishes Bloomberg Korea/chip export articles; accessible when Bloomberg direct is paywalled
- **thetechportal.com** — publishes same-day AI chip startup news (Anthropic-Fractile was May 3 here); accessible
- **science-technology.news-articles.net** — syndicates MarketWatch competitor/ASIC articles; accessible; explicit dates
- **heygotrade.com** — publishes same-day hyperscaler earnings/capex analysis; accessible
- **Korea Semiconductor Innovation Center / KSIA** (en.sedaily.com) — good for Korean industry association news
- **더일렉 (thelec.kr)** confirmed working for Samsung/SK Hynix earnings transcripts (idxno ~55xxx range for Q1 2026)
- **AI타임스 RSS** extremely high yield — typically 6-10 relevant articles on May 2-3 window alone; always run first

## Query patterns that surfaced novel stories (2026-05-03 run)
- `"Moreh" Tenstorrent Galaxy inference May 2026` — surfaced PR Newswire release on manila times
- `Rebellions EXEM NPU AX 사업 협력` — surfaced ZDNet Korea Apr 30 article
- `Qualcomm datacenter custom silicon AI chip news May 2026` — surfaced The Register May 1 article
- `FCC China electronics certification ban semiconductor May 2026` — surfaced Tom's Hardware May 2 article
- `hyperscaler capex Q1 2026 Microsoft Azure Meta` — surfaced heygotrade.com Apr 30 analysis
- `Marvell AI custom silicon ASIC hyperscaler news May 2026` — surfaced science-technology.news-articles.net Apr 30

## Source notes (2026-05-04 run)
- **SDxCentral** (sdxcentral.com) — accessible; publishes good AI inference market analysis; explicit dates; good for inference architecture landscape
- **TrendForce** (trendforce.com/news/) — accessible; TSMC CoWoS/advanced packaging pricing data; explicit dated articles
- **prnewswire.com** — accessible for Korean company press releases (Moreh, Rebellions PRs often syndicated here)
- **thenextweb.com** — accessible; good for Google/Marvell/hyperscaler custom silicon news; explicit dates

## Source notes (2026-06-08 run — weekend collection window)
- **SemiAnalysis RSS** (semianalysis.com/feed/): Feed is effectively dead — latest items are September 2025. Do not rely on RSS; check site directly via WebSearch.
- **NetworkWorld RSS**: Confirmed 404. Do not attempt.
- **HPC Wire RSS**: Confirmed 403. Skip.
- **Wired RSS**: Blocked by WebFetch. Skip.
- **DataCenterDynamics RSS**: Works but weekend-only articles (Jun 6-7) were peripheral (orbital power stations, Argentina DC launch) — low relevance for MangoBoost domains.
- **AI타임스 RSS**: Highest yield Korean source — Jun 6-8 window produced 7+ directly relevant articles.
- **Korea Herald (koreaherald.com)**: Excellent for Jensen Huang Korea visit coverage and KOSPI semiconductor news; accessible; no paywall on standard articles.
- **TradingKey**: Good for KOSPI circuit-breaker / stock market analysis; accessible; publishes with precise timestamps.
- **파이낸셜뉴스 (fnnews.com)**: Accessible; breaks Korean pre-market stock news earliest (8AM KST articles).
- **bloomingbit.io**: English-language Korea Economic Daily wire; good for Jensen Huang / NVIDIA Korea ecosystem articles.
- **Tom's Hardware**: article bodies accessible; June 7 articles confirmed fetchable (ASML, Google/SpaceX deal, Huawei/DeepSeek).
- **TechCrunch RSS**: Weekend articles (Jun 6-7) well covered; OpenAI super app, lockdown mode, tokenpocalypse all June 6-7.
- **더일렉 (thelec.kr)**: Weekend articles confirmed; thelec.kr article list page shows June 6-8 items directly.
- **ZDNet Korea**: June 7 articles confirmed; accessible for LGU+ datacenter strategy.

## Query patterns that surfaced novel stories (2026-06-08 run)
- `"Black Monday" Korea KOSPI semiconductor June 8 2026 Samsung SK Hynix selloff` — surfaced Korea Herald, TradingKey circuit-breaker articles
- `chip sector semiconductor selloff June 6 2026 Broadcom Marvell Micron` — confirmed selloff scope; congress.net byline June 5 (window-out)
- `Jensen Huang Seoul Korea visit June 8 2026 SNU` — surfaced Korea Herald, bloomingbit, aitimes comprehensive itinerary
- `Huawei Ascend 910C DeepSeek V4 post-training China AI chips June 7 2026` — surfaced Tom's Hardware June 6 article
- `ASML EUV Europe most valuable company June 2026` — surfaced Tom's Hardware June 7 article
- `LGU+ AI datacenter 2030 5조 계약 June 2026` — surfaced ZDNet Korea June 7 article + AITimes
- **fortune.com** — accessible for big tech capex/data center articles; explicit dates; good heat island / sustainability coverage
- **topnews.in** — accessible; republishes Korea semiconductor export analysis; explicit dates; easier access than Bloomberg
- **TrendForce** beat: TSMC CoWoS wafer ASP approaching $10K (same as 7nm); key pricing signal for quarterly tracking

## Query patterns (2026-05-04 run)
- `"May 2026" OR "2026-05-03" OR "2026-05-04" semiconductor AI DPU announcement` — surfaced Motley Fool May 3 Marvell analysis
- `Samsung HBM4E 5월 검증 SK하이닉스 TSMC 협력 2026` — surfaced Paik Financial News HBM4E validation piece
- `TSMC CoWoS advanced packaging HBM5 roadmap 2026 2027` — surfaced TrendForce ASP article + Tom's Hardware roadmap
- `퓨리오사AI 삼성SDS 레니게이드 클라우드 파트너십` — surfaced multiple Korean outlets covering the Samsung SDS cloud deal
- `AI Inferencing Will Define 2026 market wide open` — SDxCentral piece names all inference chip competitors including FriendliAI

## Source notes (2026-06-12 run — very sparse IPO day)
- **Friday IPO day pattern**: When a major event (SpaceX IPO June 12) dominates the calendar, most analytical articles were published June 11 (US time zones = out of window). Expect very low article counts on IPO first-trading-day Fridays.
- **Confirmed June 12 sources**: AI타임스 (06:55, 07:00 KST articles), asiae.co.kr (08:28 KST), 247wallst.com (03:38 KST = Jun 11 EDT), TradingKey (02:00, 03:00 KST), The Motley Fool (03:45 KST = Jun 11 EST), The Next Platform (07:42 KST = Jun 11 UTC). All accessible.
- **NVIDIA Newsroom confirmed no June 12 press releases** — verified by fetching /news/latest; last was June 11 (stockholder meeting, GeForce NOW sale).
- **asiae.co.kr (Asia Business Daily English)**: Good for Korean market morning-open analysis; accessible; publishes before 9 AM KST.
- **Tom's Hardware SpaceX AI1 article**: Paywalled/JS-rendered — cannot extract body on June 12. Skip and use AI타임스 Korean version instead.
- **DataCenterDynamics SpaceX AI1**: 403. Use AI타임스 Korean coverage or TradingKey instead.
- **qz.com (Quartz)**: 403 on direct fetch. Use WebSearch summary as fallback.
- **Rebellions/FuriosaAI/HyperAccel/Moreh**: No new June 12 articles found after exhaustive search. Latest coverage is June 11 (Rebellions Middle East advisor, sedaily.com).

## Source notes (2026-05-07 run)
- **ServeTheHome RSS** — very high yield on May 7 window: NVIDIA Spectrum-X MRC (published UTC May 6, 11:30) and PCIe 8.0 spec article; both fully fetchable
- **thelec.net (THE ELEC English)** — confirmed working for May 7 articles; Intel/Terafab article idxno=6806; DEEPX revenue article idxno=6557; Tesla AI6 Samsung idxno=5646
- **g-enews.com** — Korean; accessible; Samsung foundry SF2P vs Tesla AI5 analysis article (May 6 KST)
- **biz.newdaily.co.kr** — Korean; accessible; Korea Exchange KOSDAQ AI IPO roundtable (May 4); covers Rebellions + FuriosaAI + DeepX meeting
- **SiliconAngle** (siliconangle.com) — accessible; publishes same-day NVIDIA networking/AI analysis; good for MRC/Spectrum-X
- **NVIDIA Newsroom** (nvidianews.nvidia.com) — accessible press releases; May 6 Corning optical partnership announcement
- **AI타임스 RSS** — May 7 7:00 AM article on Sam Altman robotics published (idxno=210148); RSS confirms KST timestamps directly
- **HPC Wire** — 403 again confirmed; skip
- **NetworkWorld RSS** — 404 confirmed; skip
- **Wired RSS** — blocked; skip
- **Naver News section/105** — blocked (JS-rendered); skip

## Source notes (2026-06-15 run — Jun 13-15 window)
- **AI타임스 RSS**: Highest-yield source again — 8 articles in window; most published 06:00-08:00 KST (reliable early morning cadence). Timestamps from RSS confirm exact KST publication time. Always run first.
- **ZDNet Korea**: 4 articles in window; accessible; Anthropic export control coverage was comprehensive (3 angles in 2 days). `zdnet.co.kr/view/?no=YYYYMMDDHHMM` URL pattern. Good for US/Korea policy intersections.
- **TechCrunch RSS**: 3 articles confirmed (Anthropic statement, OpenAI AG investigation, Meta Manus). RSS gives UTC times; convert +9h for KST.
- **Tom's Hardware RSS**: 5 articles in window (Jun 13-14 confirmed via RSS dates). RSS provides day but not exact time. Approximate KST time used (~14:00) since JSON-LD unretrievable. Articles: AMD Ryzen AI Halo, AI subscription pricing, water efficiency, AI cryptomining, RTX Pro 6000.
- **ServeTheHome**: 2 articles confirmed (Anthropic export restriction policy, Intel Xeon 6 SoC DPU Computex). Accessible; publishes primarily Mon-Fri US hours but Jun 13 Fri (US) articles visible.
- **전자신문 (etnews.com)**: 2 articles (BrainChip CEO interview Jun 14, Anthropic export ban national AI policy angle Jun 14). Accessible; ID pattern `/2026061N000NNN`.
- **The Next Web (thenextweb.com)**: Data center opposition $130B blocked article — confirmed timestamp 2026-06-14T10:44:00Z. Accessible with JSON-LD.
- **DataCenterDynamics RSS**: Works (feed accessible) but body fetch still returns 403. Vertiv-ThermoKey acquisition article (Jun 14) was an exception — body accessible for that specific article. When DCD body fetch fails, check alternative sources.
- **hpcwire.com RSS**: 403 again. Confirmed persistent.
- **networkworld.com RSS**: 404 again. Confirmed persistent.
- **wired.com RSS**: Blocked by WebFetch. Confirmed persistent.
- **Naver News (news.naver.com/section/105)**: Still JS-rendered; Claude Code unable to fetch. Use WebSearch to surface individual naver.com article links.
- **The Elec (thelec.kr)**: Jun 12 Sam Altman postponement article (thelec.kr/news/articleView.html?idxno=60204). Accessible; good for Korean enterprise AI strategy news.
- **blocksandfiles.com RSS**: Accessible; Jun 13-14 articles focused on NAS/storage (lower relevance for Jun 15 issue). Check if datacenter storage angle appears.
- **The Register RSS**: AWS networking article Jun 13 confirmed (InfiniBand vs homegrown). Accessible.

## Query patterns (2026-06-15 run)
- `Anthropic Fable 5 Mythos 5 export ban June 2026 government directive` — surfaced TechCrunch, AI타임스, ZDNet Korea, ServeTheHome, 전자신문
- `앤트로픽 페이블 미소스 수출 통제 6월 2026` — surfaced ZDNet Korea 3 separate angles, AI타임스
- `Sam Altman Korea visit postponed G7 France June 2026` — surfaced AI타임스 Jun 13, The Elec Jun 12
- `AMD Ryzen AI Halo desktop AI chip June 2026` — surfaced Tom's Hardware Jun 14
- `OpenAI attorney general 42 states investigation June 2026` — surfaced TechCrunch Jun 14, The Next Web
- `NVIDIA Vera CPU China orders June 2026` — surfaced AI타임스 Jun 13
- `data center opposition $130 billion blocked June 2026` — surfaced The Next Web Jun 14
- `Kioxia Japan largest market cap Toyota surpass June 2026` — surfaced AI타임스 Jun 13
- `BrainChip neuromorphic chip Korea 2026 인터뷰` — surfaced 전자신문 Jun 14
- `Intel Xeon 6 SoC DPU Computex June 2026` — surfaced ServeTheHome Jun 13

## Query patterns (2026-05-07 run)
- `NVIDIA Corning optical fiber 300 million investment AI infrastructure` — surfaced NVIDIA Newsroom press release + Tom's Hardware + CNBC coverage
- `AMD EPYC Zen 7 data center CPU record revenue Q1 2026` — surfaced Data Center Dynamics + Tom's Hardware same-day; AMD Q1 earnings ($10.25B, +38% YoY; data center $5.8B, +57%)
- `xAI neocloud datacenter compute May 6 7 2026` — surfaced TechCrunch analysis + DCD news on Anthropic/xAI Colossus 1 deal (300MW, 220,000 GPUs)
- `SpaceX Terafab semiconductor chip factory Texas 2026` — surfaced TechCrunch, Bloomberg, CNBC same-day (May 6); $55B initial, up to $119B
- `PCIe 8.0 spec 1TB/s bandwidth announcement May 2026` — surfaced ServeTheHome + Tom's Hardware same-day; draft 0.5 released
- `NVIDIA Spectrum-X MRC RDMA AI networking May 2026` — surfaced ServeTheHome + SiliconAngle same-day; MRC open spec via OCP
- `삼성 파운드리 SF2P 테슬라 AI5 칩 2026년 5월` — surfaced g-enews.com Korean analysis; Taylor yield test is H2 2026 decision point

## Source notes (2026-05-06 run)
- **GlobeNewswire** — excellent for Astera Labs / semiconductor company press releases with exact timestamps; accessible
- **WinBuzzer** — accessible; publishes same-day Huawei/NVIDIA China chip summaries citing FT; explicit dates
- **Motley Fool** (fool.com) — publishes same-day Broadcom/NVIDIA market analysis; body accessible
- **NewDaily** (newdaily.co.kr/biz/) — Korean; accessible; covers Korean AI/semiconductor startup IPO news same-day
- **Blocks & Files** RSS — reliable same-day; SAP enterprise data/AI acquisitions appeared here same-day
- **ServeTheHome** RSS — very reliable for same-day hardware news (SPEC CPU 2026, Micron SSD, Astera Labs)
- **전자신문** (etnews.com) — confirmed working for Samsung strike/foundry articles; URL pattern /YYYYMMDDXXXXXX
- **더일렉 article list** (thelec.kr/news/articleList.html) — directly shows same-day articles with timestamps; use to discover URLs

## Source notes (2026-06-16 run — single day window)
- **ServeTheHome RSS**: Only source that had a confirmed June 16 00:00:08 UTC article (Tensordyne Napier). All other RSS feeds showed latest items as June 15. Fetch the feed early in the run to catch just-published articles.
- **IEEE Spectrum**: Tensordyne article published June 15 20:38 UTC = June 16 05:15 KST. RSS did not yet contain it when fetched, but article was live on the web (confirmed via AOL syndication with explicit UTC timestamp "Mon, June 15, 2026 at 8:15 PM UTC"). Use AOL or Yahoo Finance for exact UTC timestamps when IEEE Spectrum article body shows only relative time.
- **The Elec (thelec.net English)**: 1 June 16 article confirmed (KC Tech SK Hynix, idxno=11337, 07:20 KST). Fetch thelec.net homepage to discover same-day articles; English edition publishes separately from thelec.kr Korean edition.
- **ZDNet Korea**: 5 confirmed June 16 articles by fetching the ZDNet Korea homepage. Articles span 08:20-10:26 KST. Direct page fetch yields more than search queries.
- **전자신문 (etnews.com)**: Confirmed June 16 article (Anthropic White House dispatch, 07:58 KST, idxno=20260616000006). Fetch etnews.com homepage to discover same-day article IDs. Samsung Galaxy Z8 article (20260616000023) is out of scope (consumer gadget).
- **AI타임스 (aitimes.com) RSS**: Confirmed 1 June 16 article (idxno=211727, 07:00 KST). Always fetch RSS first for this source.
- **Tensordyne as adjacent competitor**: Tensordyne (formerly Recogni, rebranded 2025) is an inference chip startup making logarithmic number system (LNS) AI chips at TSMC 3nm. CompetitorNote: 3 articles in one day (ServeTheHome, IEEE Spectrum, DigitalToday) — tag all with `competitor: "Tenstorrent"` when the article is about Tensordyne alone... wait: Tensordyne is NOT Tenstorrent. Tensordyne is a SEPARATE company (formerly Recogni). Tenstorrent is Jim Keller's company. These are two different companies. DO NOT conflate. Tensordyne articles should be competitor-tagged as adjacent inference chip startup (not in priority list), so competitor field should be null for pure Tensordyne stories unless they directly involve a priority-list company.

## CRITICAL CORRECTION: Tensordyne vs Tenstorrent
- **Tenstorrent** = Jim Keller's RISC-V AI accelerator company; Qualcomm is in talks to acquire for $8-10B; Hyundai/Kia investors.
- **Tensordyne** = formerly Recogni (rebranded 2025); logarithmic number system (LNS) inference chip; TSMC 3nm; $176M raised; CEO Marc Bolitho. NOT in the competitor priority list but adjacent.
- In the 2026-06-16 collection: DigitalToday article (Qualcomm/Tenstorrent) correctly tagged `competitor: "Tenstorrent"`. ServeTheHome and IEEE Spectrum articles are about Tensordyne (NOT Tenstorrent) and should NOT be tagged with Tenstorrent — they were erroneously tagged in the 01_collected.json. Note for fix in filter stage.

## Query patterns (2026-06-16 run)
- `Qualcomm Tenstorrent acquisition deal June 16 2026` — confirmed Reuters + DigitalToday + Yahoo Finance coverage
- `Tensordyne napier AI processor logarithmic math June 2026` — ServeTheHome RSS June 16, IEEE Spectrum June 16 (UTC Jun 15 → KST Jun 16)
- `데이터센터 AI 뉴스 2026년 6월 16일 한국` — low yield; direct ZDNet Korea homepage crawl much more effective
- Thelec.net homepage crawl: most effective way to find June 16 English-language semiconductor articles from Korea

## Source notes (2026-06-17 run — single day window, post-#028)
- **thelec.kr (디일렉)**: High-yield June 17 morning — LG Innotek Vietnam FC-BGA article (idxno=58172, 08:00 KST). Direct homepage fetch showed June 17 articles; SK Hynix ADR (idxno=58201, 22:49 KST June 16 = out of window). ID range 58xxx for June 16-17.
- **ZDNet Korea homepage**: Most reliable for Korean June 17 coverage — Apple 1.4nm Intel foundry (no=20260617080400, 08:24 KST), Korea-OpenAI AI Safety MOU (no=20260617093724, 10:00 KST) both confirmed via direct page crawl.
- **전자신문 homepage**: Most same-day articles are semiconductor/AI trade news with IDs 20260617000005+; fetching homepage directly shows all June 17 articles by publication time.
- **AI타임스 articleList.html**: Confirmed June 17 articles — Ten/Rebellion ICT unicorn (idxno=211793, 09:10 KST). Always check articleList.html for same-day items.
- **TechCrunch RSS**: Articles after 15:00 UTC June 16 are June 17 KST. Confirmed: Anthropic feud (22:34 UTC = 07:34 KST), Qualcomm AR chip (18:22 UTC = 03:22 KST). Fetch RSS feed to get exact timestamps.
- **NextPlatform RSS**: June 16 19:52 UTC (+0100 BST) = June 17 03:52 KST. Tensordyne logarithmic chip article confirmed in window.
- **Blocks and Files RSS**: June 16 16:14 UTC (+0100 BST) = June 17 00:14 KST. VAST Data neoclouds article confirmed in window. Feed accessible.
- **DataCenterDynamics RSS**: Feed accessible; all June 16 UTC articles from 18:00 onward = June 17 KST. However, body fetch still returns 403. Use RSS headlines to confirm article existence then source body from BusinessWire/PRNewswire if press release, or substitute with NextPlatform/BlocksandFiles coverage.
- **Tom's Hardware**: Intel 18A-P article at 21:00 UTC June 16 = 06:00 KST June 17. Body behind paywall (JS-rendered, subscription required). Use Business Wire / StockTitan as canonical source for Intel press releases; SemiWiki as secondary.
- **Intel / Business Wire**: Intel VLSI Symposium 18A-P announcement sourced from BusinessWire (https://www.businesswire.com/news/home/20260616740562/en/). StockTitan confirms exact timestamp (June 17, 07:00 UTC = 16:00 KST).
- **StockTitan (stocktitan.net)**: Accessible for Intel/semiconductor press releases; exact timestamps; full body text available.
- **CNBC**: 403 on direct fetch — persistent. Use Investing.com Canada (ca.investing.com) or Guru Focus for Intel/chip news.

## Query patterns (2026-06-17 run)
- `zdnet.co.kr view no=202606170 반도체 AI` — surfaced Apple 1.4nm article (no=20260617080400)
- `ZDNet Korea 6월 17일 AI 데이터센터 반도체 2026` — surfaced CIS2026 event (out of window), Lenovo AI infra article (out of window)
- `더일렉 thelec.kr 2026년 6월 17일 반도체` — surfaced LG Innotek Vietnam FC-BGA (idxno=58172)
- `Intel 18A-P risk production VLSI symposium June 2026` — surfaced Tom's Hardware (paywalled), StockTitan, SemiWiki, CNBC (403)
- `Anthropic Claude surpass OpenAI business spending June 2026` — surfaced TechCrunch (22:34 UTC June 16 = in window), VentureBeat analysis
- `Samsung Electronics global strategy meeting June 17 2026` — surfaced the June 17 DS division meeting context; AI/HBM agenda for June 18 (not June 17)
- BST timezone note: RSS feeds with "+0100" offset (UK-based servers like NextPlatform, Blocks and Files) publish in BST. Convert to UTC: subtract 1 hour, then add 9 for KST.

## Source notes (2026-06-11 run)
- **ZDNet Korea** — highest-yield Korean source for June 11 window: 4 directly relevant articles (삼성 GenAI 도입, NVIDIA 6G RU, Oracle Q4, DiffusionGemma); article IDs follow /view/?no=YYYYMMDDHHMMSS pattern; JSON-LD present.
- **전자신문 (etnews.com)** — 3 qualifying articles June 11 (Samsung/OpenAI, Oracle 분석, ETRI 초미세 접합); article list at /news/YYYYMMDDXXXXXX.
- **더일렉 (thelec.kr)** — 2 qualifying articles June 10 evening (375단 낸드플래시, Claude Fable 5); published 20:59 KST (well within window for June 11 issue).
- **TipRanks** — 403 on direct fetch; article body inaccessible; use search result summary to reconstruct (low confidence for exact quotes).
- **인사이트코리아 (insight.co.kr)** — accessible; good for SK그룹/대기업 strategic announcements.
- **Korea Herald (koreaherald.com)** — accessible; June 10-11 articles well covered.
- **Tom's Hardware** — excellent for June 10 articles (TSMC fab expansion, AMD Venice, Samsung floating DC, China AI grid); all June 10 bodies accessible; JSON-LD present.
- **뉴시스 (newsis.com)** — accessible for semiconductor equipment market articles; URL /view/NISX+date pattern.
- **MarkTechPost** — accessible for AI model release articles (DiffusionGemma); explicit June 10 dates.
- **TechTimes** — accessible; good for Google-Intel TPU order, ASML, Anthropic; JSON-LD present.
- **InteractiveCrypto / GuruFocus** — accessible; publish Intel-Google TPU market reaction articles; lower-tier outlets but good for stock market angle.
- **Oracle Investor Relations** — accessible; official IR press releases have precise timestamps.
- **AsiaE Business Daily (asiae.co.kr/en/)** — accessible; Korean business news English edition; SK Telecom Anthropic stake article.
- **Motley Fool (fool.com)** — accessible; TSMC supply/demand analysis; semiconductor stock analysis.
- **HostingJournalist** — accessible; SIA-Deloitte semiconductor AI rack value report.
- **Technetbook (technetbooks.com)** — accessible; AMD Venice benchmark synthesis articles.
- **Blockonomi** — accessible; Terafab/ASML conference articles; June 8 articles (outside window but accessible for reference).

## Query patterns (2026-06-11 run)
- `Samsung Electronics ChatGPT Gemini Claude AI 도입 2026년 6월` — surfaced ZDNet Korea + 전자신문 June 11 articles
- `NVIDIA 6G antenna GPU AI-RAN wireless base station June 2026` — surfaced ZDNet Korea June 11 07:33 KST
- `Oracle Q4 FY2026 results cloud infrastructure IaaS revenue June 2026` — surfaced ZDNet Korea + 전자신문 + Oracle IR
- `Google DiffusionGemma diffusion language model open source June 2026` — surfaced ZDNet Korea + MarkTechPost June 10
- `SK하이닉스 375단 낸드 몰리브덴 양산 2026년 6월` — surfaced 더일렉 June 10 20:59 KST
- `FriendliAI San Francisco office expansion AI inference June 2026` — surfaced TipRanks June 11
- `Amazon 17.5 billion loan AI infrastructure June 2026` — surfaced TechCrunch + The Next Web June 10
- `Google Intel TPU packaging 2028 order June 2026` — surfaced Tom's Hardware + TechTimes + GuruFocus June 10
- `TSMC fab N2 CoWoS expansion roadmap 2026` — surfaced Tom's Hardware June 10
- `AMD EPYC Venice benchmark Zen 6 NVIDIA Vera 2026` — surfaced Tom's Hardware + Technetbook June 10

## Source notes (2026-06-18 run — single day window, post-#029)
- **thelec.net (THE ELEC English)**: High-yield — STT GDC Seoul 1 datacenter article (idxno=11417, 00:03 KST). Homepage crawl shows same-day articles with timestamps; best early-morning source for Korean semiconductor/datacenter English coverage.
- **ZDNet Korea homepage**: 4 confirmed June 18 articles via homepage crawl (HBM4E 12단 samples, Apple memory demand, MS Copilot Cowork, Databricks LakehouseRT). URL pattern /view/?no=202606180NNNNN; range 085052–110400+ for June 18.
- **AI타임스 articleList.html**: 3 confirmed June 18 articles (Anthropic Seoul opening, KAIST liquid cooling, MoST-Anthropic MOU). All 05:00-11:30 KST. Always first to cover Korean AI policy milestones.
- **전자신문 (etnews.com)**: 2 confirmed June 18 articles (Anthropic Seoul partnerships 06:07, SK hynix HBM4E 08:41). IDs 20260618000003, 20260618000009.
- **Korea Herald (koreaherald.com)**: SK hynix HBM4E article (09:16:18 KST). Use JSON-LD from page for precise timestamps. Important for distinguishing Jun 17 vs Jun 18 articles (JH STT GDC article was 14:48 KST June 17 — outside single-day window).
- **ServeTheHome RSS**: AMD EPYC Venice HPE Discover 2026 article (RSS Jun 18 01:48 UTC = 10:48 KST). Byline said "June 17" but RSS timestamp was June 18 UTC — RSS is canonical for ServeTheHome.
- **NextPlatform RSS**: 2 confirmed June 18 articles (server boom article 21:03 UTC Jun 17 = 06:03 KST Jun 18; HPE datacenter networking 22:02 UTC Jun 17 = 07:02 KST Jun 18). Feed uses "+0100 BST" offset; convert: subtract 1h for UTC then +9h for KST.
- **The Register RSS**: NVIDIA-backed optics vendor (Coherent) article (19:12 UTC Jun 17 = 04:12 KST Jun 18). Confirmed via JSON-LD `datePublished`.
- **DataCenterDynamics RSS**: Feed accessible; articles have June 18 UTC dates but body fetch still returns 403 persistently. Skip body fetch; use headlines only.
- **Tom's Hardware**: Intel fab roadmap article was client-side rendered (byline showed date only, no time), so JSON-LD datePublished was unavailable. Dropped per hard gate rule.
- **Tier 1 Korean competitors (Moreh, FriendliAI, HyperAccel, Furiosa, Rebellions)**: Zero articles on June 18 KST in entire run. Last notable coverage: Rebellions/Furiosa — June 12-16; HyperAccel/Moreh — older. Normal for a single-day window.
- **HPCwire**: 403 again. Persistent — skip.
- **DeepSeek blacklist story (thenextweb.com)**: Published Jun 17 09:57 UTC = Jun 17 18:57 KST — outside Jun 18 window. Taipei Times version dated Jun 18 was found but body not extractable.

## Query patterns (2026-06-18 run)
- `SK하이닉스 HBM4E 12단 샘플 공급 2026년 6월 18일` — surfaced ZDNet Korea + 전자신문 + Korea Herald triple coverage
- `Anthropic Seoul office opening Korea AI June 18 2026` — surfaced AI타임스, 전자신문, DigitalToday.co.kr/en
- `HPE Discover 2026 datacenter AMD EPYC networking June 18 2026` — surfaced ServeTheHome (EPYC Venice), NextPlatform (HPE networking), NextPlatform (server boom pricing)
- `Coherent optics NVIDIA photonics wafer capacity June 2026` — surfaced The Register (Jun 18 04:12 KST)
- `MS Copilot Cowork collaborative AI agent June 18 2026` — surfaced ZDNet Korea
- `Databricks LakehouseRT real-time inference June 2026` — surfaced ZDNet Korea
- `STT GDC Korea data center launch Seoul June 2026` — surfaced thelec.net 00:03 KST

## Query patterns (2026-05-06 run)
- `Broadcom AI custom ASIC XPU news May 2026` — surfaced NextPlatform 5/5 Broadcom 3.5D article + Motley Fool analysis
- `Astera Labs CXL PCIe connectivity AI infrastructure news May 2026` — surfaced GlobeNewswire Scorpio X-Series 320-lane announcement + Q1 results
- `Huawei AI chip sales China Nvidia May 2026` — surfaced WinBuzzer 5/5 article (Huawei $12B target)
- `Applied Materials ASMPT NEXX acquisition semiconductor May 2026` — surfaced GlobeNewswire 5/4 press release
- `딥엑스 리벨리온 퓨리오사 하이퍼엑셀 한국거래소 상장 뉴스 5월` — surfaced NewDaily 5/4 KRX AI company meeting article
- `Samsung Electronics semiconductor earnings results May 2026` — confirmed Samsung Q1 record earnings news from late April/early May
- **Samsung strike (파업) risk**: recurring major topic for May 2026 — 삼성전자 노조 파업 예고 5월 21일-6월 7일; major supply chain risk story
- **Astera Labs** confirmed as relevant competitor/adjacent (PCIe/CXL fabric switches for AI scale-up); tag as "Astera Labs"

## Source notes (2026-05-11 run)
- **AI타임스 RSS** — high yield; idxno=210280~210305 covers May 8-10; Korean articles on Anthropic/Akamai, DeepSeek funding, NVIDIA investment, Intel-Apple, xAI/Cursor
- **thelec.kr/news/articleList.html** — direct list page; idxno=56240~56317 covers May 8-11; FuriosaAI pre-IPO (56240), Samsung strike (56280), packaging market (56270), Apple-Intel (56312)
- **ServeTheHome** — Anthropic Colossus 1 deal (May 9) accessible; AMD MI350P story via NextPlatform
- **9to5Mac** — accessible for Intel-Apple deal details (May 8); better body extraction than Tom's Hardware
- **Converge Digest** (convergedigest.com) — accessible; Napatech NT400 tier-1 bank SmartNIC deal confirmed May 2026
- **CNBC direct** — 403; use Gurufocus/theaiinsider.tech for re-reported accessible content
- **theaiinsider.tech** — accessible; DeepSeek funding story (May 8) fully fetchable
- **Bloomberg** — 403 still; use winbuzzer.com for Huawei/chip stories

## Query patterns (2026-05-11 run)
- `Anthropic Akamai computing deal AI May 2026` — surfaced $1.8B deal reports; winbuzzer.com accessible
- `Cerebras CBRS IPO price range May 8 9 10 2026` — CNBC May 10 $150-$160 + GuruFocus May 8 $125-$135
- `NVIDIA IREN datacenter 5 gigawatt partnership May 2026` — NVIDIA Newsroom + GlobeNewswire + etnews.com Korean
- `Intel Apple chip manufacturing deal May 2026` — 9to5Mac + aitimes.com Korean (idxno=210297)
- `AMD MI350P air cooling enterprise AI GPU May 2026` — The Register May 7 + NextPlatform May 8
- `삼성전자 노조 파업 5월 21일 반도체 생산 리스크 2026년` — thelec.kr + JP Morgan analysis via insight.co.kr
- `퓨리오사AI 프리IPO 투자 확대 7500억 8000억 2026년 5월` — thelec.kr idxno=56240

## Source notes (2026-05-12 run)
- **thelec.kr homepage** — idxno=56328~56398 range covers May 11-12; SoftBank ESS (56328), TSMC-Sony JV (56339), Samsung HBM Kostec (56370), 국가AI컴퓨팅센터 (56398)
- **fnnews.com** — accessible; 삼성전자 파업 사후조정 최신 기사 (May 12 05:03 KST)
- **finance.biggo.com** — accessible; Samsung labor dispute analysis with May 12 date
- **thetechportal.com** — accessible; Trump-China delegation coverage (May 12)
- **news1.kr** — accessible Korean; Trump-China delegation (May 12)
- **DCD RSS** — articles stop at May 11 (no May 12 items as of 08:00 KST)
- **NVIDIA Newsroom** — last press release May 8; no May 12 items
- **aitimes.com** — May 12 homepage confirms 08:39 KST publication; idxno=210315~210356 for May 11-12 range

## Key observations (2026-05-12 run)
- On Monday mornings (especially after weekend), fewer fresh articles are available before 9 AM KST
- 2026-05-12 window is tight (only this single day); majority of May 11 published items captured in prior issue
- Samsung Electronics labor dispute (파업 vs 타결) is the dominant Korean semiconductor story of the week
- Trump China state visit (May 13-15) is major geopolitical semiconductor/NVIDIA H200 story
- Cerebras IPO pricing (final May 13, listing May 14 CBRS) is imminent competitor event
- AMD Samsung 2nm foundry deal: still reported/rumored not confirmed; Digitimes May 11 paywall

## Query patterns (2026-05-12 run)
- `Samsung strike labor "May 12" 2026 final talks outcome` — fnnews.com + BigGo Finance accessible
- `Trump China visit CEO delegation Jensen Huang excluded May 12 2026` — thetechportal.com + news1.kr + en.sedaily.com accessible
- `Cerebras IPO price final Nasdaq CBRS May 13 14 2026` — CNBC 403; use BigGo/cryptopolitan
- `삼성SDS 국가AI컴퓨팅센터 계약 2026년 5월` — zdnet.co.kr + thelec.kr + etnews.com all accessible same-day

## Source notes (2026-05-14 run)
- **thelec.kr/news/articleList.html** — idxno=56564 is May 14 07:40 KST AMD server CPU market share article; idxno=56556 is May 14 07:34 battery/PNT; refresh to highest idxno to find same-day articles
- **aitimes.com** — idxno=210448 is May 14 07:00 KST (xAI infrastructure pivot analysis); idxno=210481 and 210484 also May 14 morning
- **stocktitan.net** — accessible for Cerebras IPO press release when CNBC/Bloomberg 403
- **tech.eu** — accessible; UK/EU startup funding coverage (Fractile $220M Series B May 13)
- **americanbazaaronline.com** — accessible; Jensen Huang China trip confirmation story May 13
- **semafor.com** — accessible; strategic analysis on Jensen Huang as China bargaining chip
- **wccftech.com** — AMP version 403; use digitalcitizen.life for AMD market share data
- **en.sedaily.com** — accessible for Samsung/Korean labor/strike stories in English
- **TechCrunch** — RSS only shows May 13 articles as of early May 14 KST; wait for May 14 UTC articles
- **ServeTheHome** — Kioxia XG10 PCIe Gen5 SSD article published May 13 KST
- **DCD** — 403 on individual article fetch (Fractile story); use tech.eu/finsmes.com for DCD-originated stories
- **upi.com** — 403; use en.sedaily.com/manilatimes.net for Korea labor news

## Key observations (2026-05-14 run)
- Cerebras CBRS IPO first trading day (May 14 KST) is the day's defining competitor event; $185/share, $56B+ valuation
- Jensen Huang last-minute Air Force One boarding (May 13 KST) resolves the "excluded from China trip" story; H200 export talks now active
- Samsung strike: no new settlement as of 5/14 morning KST; May 21 strike date intact; TrendForce contained-impact analysis published May 13 UTC
- Foxconn ransomware (Nitrogen) breach confirmed May 12-13 UTC — NVIDIA/Intel/Google datacenter topology data allegedly stolen
- Fervo Energy FRVO IPO +33% debut signals AI power-demand investment theme maturing
- Fractile $220M Series B (UK inference chip) confirms growing non-NVIDIA inference chip funding wave
- AMD EPYC hits record 46.2% server CPU revenue share Q1 2026; Venice/Helios H2 2026 launch confirmed
- Marvell COMPUTEX 2026 keynote (June 2) announced; tag as competitor event
- JSR Taiwan photoresist plant (Yunlin, 2028 start) — last Japanese big-3 to localize near TSMC

## Query patterns (2026-05-14 run)
- `Cerebras CBRS IPO Nasdaq May 14 2026 listing first day trading` — stocktitan.net + cnbc.com (403 for body but headline OK) + investing.com
- `Jensen Huang China H200 chip deal semiconductor export talks outcome May 14` — semafor.com + americanbazaaronline.com + meyka.com accessible
- `Samsung strike May 21 2026 latest update HBM production risk` — trendforce.com + en.sedaily.com + tomshardware.com
- `Fractile AI inference chip funding raise May 2026` — tech.eu + finsmes.com + datacenterdynamics.com (403)
- `AMD EPYC server CPU 46% market share Q1 2026 Mercury Research` — wccftech.com AMP 403; digitalcitizen.life accessible
- `Google SpaceX orbital data center partnership May 2026` — tomshardware.com + dataconomy.com accessible; bloomberg.com 403

## Source notes (2026-05-15 run)
- **taipeitimes.com** — accessible; re-publishes Reuters/AP semiconductor/China chip stories with explicit dates; good NVIDIA China backup
- **ts2.tech** — accessible; tech stock/NVIDIA articles with explicit dates; useful when Bloomberg/CNBC paywalled
- **bnnbloomberg.ca** — accessible (BNN Bloomberg Canada mirror); publishes Bloomberg financial stories same-day; better access than bloomberg.com
- **aitimes.com** — idxno=210485~210545 range for May 15; RSS items from early morning KST available
- **thelec.kr** — idxno=56564+ for May 14 confirmed; May 15 articles start idxno ~56590+; Korean semiconductor trade press
- **TSMC Technology Symposium 2026** (May 14 Hsinchu) — major annual event; large number of articles followed; tspasemiconductor.substack.com + anandtech.com + tomshardware.com all cover
- **Korea Herald** (koreaherald.com) — accessible for Samsung strike/KOSPI 8000 coverage; English Korean press
- **insight.co.kr** — accessible; JP Morgan Samsung strike analysis; covers HBM supply chain risk
- **DCD RSS** — feed works (kcg.datacenterdynamics.com/rss) but article body returns 403; use headlines only
- **SemiAnalysis** — RSS feed stuck on Sep 2025; no 2026 content via feed; use search only for SemiAnalysis articles
- **Tom's Hardware RSS** — redirect: tomshardware.com/feeds/all → 301 → tomshardware.com/feeds.xml; article bodies fetchable
- **NVIDIA Q2 FY2027 earnings** — scheduled May 20; story not yet filed as of May 15 morning KST

## Key observations (2026-05-15 run)
- Collection ran early morning KST; most English-language RSS feeds (NextPlatform, ServeTheHome, DCD, TechCrunch) had no May 15 content yet
- Collection in single-day window (2026-05-15 only) limits total volume; target 40+ achieved (42 articles)
- KOSPI breaking 8000 (May 14 KST close) is the dominant Korean market story; fueled by Samsung/SK Hynix rally
- US-China tariff truce (145%→30% effective May 14) has massive semiconductor import/export implications; top story
- Samsung strike May 15 10am ultimatum is the day's main Korean semiconductor operational story
- TSMC Symposium (May 14) — A13/A12/N2U process nodes and CoWoS yield milestones are must-cover for semiconductor domain

## Query patterns (2026-05-15 run)
- `NVIDIA H200 China clearance approved companies Alibaba Tencent ByteDance May 15 2026` — taipeitimes.com + ts2.tech accessible
- `TSMC 2026 Technology Symposium A13 A12 N2U CoWoS yield May 14 15 2026` — tspasemiconductor.substack.com + tomshardware.com accessible
- `Samsung Electronics union strike May 15 ultimatum CEO Jeon Young-hyun response 2026` — koreaherald.com + insight.co.kr accessible
- `KOSPI 8000 record Samsung SK Hynix stock rally May 15 2026` — Korea Herald + ZDNet Korea accessible
- `US China trade deal tariff 145 to 30 semiconductor chips impact May 14 15 2026` — ts2.tech + various accessible
- `Anthropic Claude OpenAI Codex agent billing Claude Code limit May 2026` — techcrunch.com + ycombinator.com HN accessible
- `SoftBank FY2025 annual profit OpenAI record May 2026` — accessible via multiple English outlets
- `Microsoft CEO Summit SK Hynix HBM partnership AI datacenter May 15 2026` — Korea Herald accessible

## Source notes (2026-05-16 to 2026-05-18 run — 3-day weekend window)
- **Weekend publishing pattern**: Most English RSS feeds (NextPlatform, ServeTheHome, DCD, Blocks & Files, IEEE Spectrum) publish very little Sat/Sun; expect low Channel A yield; Channel B (WebSearch) becomes primary on weekends
- **AI타임스 RSS** — still publishes on weekends; idxno=210555~210600 range for May 16-18; reliable
- **thelec.kr** — weekend article volume reduced but still publishes; idxno=56600~56650 range for May 16-18
- **더일렉 article list** — direct list page at thelec.kr/news/articleList.html still works; explicit timestamps confirm weekend articles
- **koreaherald.com** — accessible; covers Samsung strike ultimatum (Lee Jae-yong apology May 16) and Samsung union negotiation May 18
- **bnnbloomberg.ca** — accessible for weekend Bloomberg semiconductor/NVIDIA stories
- **Reuters** — accessible for weekend NVIDIA/China chip export stories
- **Google I/O 2026** (starts May 19): preview articles published May 16-18 are valid; actual announcement articles not yet available
- **NVIDIA Q1 FY2027 earnings**: scheduled May 20; not yet published in May 16-18 window; only preview articles accessible
- **fnnews.com** — accessible Korean; publishes Samsung labor news on weekends
- **zdnet.co.kr** — accessible weekends; Samsung/SK Hynix/semiconductor news
- **etnews.com** — accessible weekends; 전자신문 Korean semiconductor coverage

## Key observations (2026-05-16 to 2026-05-18 run)
- 3-day weekend window (Sat+Sun+Mon after Fri issue) significantly increases collection window but reduces per-day article density
- Samsung labor dispute (Lee Jae-yong apology May 16, final negotiation May 18) dominated Korean semiconductor coverage all weekend
- Chinese semiconductor export/Huawei supercomputer stories continue to surface (LineShine/Huawei CPU cluster May 16)
- Google I/O 2026 preview articles available May 16-18 but actual announcements (May 19-20) fall outside window
- FTC Arm antitrust investigation (May 16) was major US semiconductor story; Arm designing AGI CPU for own datacenter sales
- STMicroelectronics NVIDIA 800V datacenter power partnership (May 16) — niche but relevant to datacenter power domain
- Jensen Huang Stanford speech (May 17) on GPU export policy important NVIDIA competitor article
- Samsung/SK Hynix R&D surge articles confirm Korean memory investment wave

## Query patterns (2026-05-16 to 2026-05-18 run)
- `Samsung Lee Jae-yong apology union strike chip May 16 2026` — koreaherald.com + fnnews.com accessible
- `FTC Arm antitrust investigation AGI CPU datacenter May 2026` — accessible via Bloomberg/Reuters mirrors
- `NVIDIA Jensen Huang Stanford GPU export speech May 17 2026` — tomshardware.com + SiliconAngle accessible
- `China Huawei CPU supercomputer LineShine May 16 2026` — accessible via multiple outlets
- `STMicroelectronics NVIDIA 800V datacenter power May 16 2026` — GlobeNewswire + Tom's Hardware accessible
- `Samsung SK Hynix R&D spending surge semiconductor record May 2026` — zdnet.co.kr + koreaherald.com accessible
- `ASML Tata India semiconductor fab May 2026` — Reuters + accessible outlets
- `OpenAI Sam Altman Greg Brockman restructuring May 16 17 2026` — TechCrunch + multiple accessible
- `Google I/O 2026 AI announcement May 19 preview` — TechCrunch + The Verge accessible
- `TSMC VIS minority stake sale May 2026` — Reuters + Taiwan press accessible
- `Joosungenginring ALG wafer polishing equipment semiconductor May 2026` — Korean press accessible

## Source notes (2026-05-19 run — single day window)
- **English RSS feeds ALL empty for May 19 KST**: TheRegister, NextPlatform, ServeTheHome, TechCrunch, Tom's Hardware, AI News, Spectrum IEEE, SemiAnalysis, DCD, Blocks&Files all published last on May 18 as of early May 19 KST. Single-day windows after non-weekday issues are very lean for English sources.
- **Google I/O 2026 keynote**: starts 10am PT May 19 = 2am KST May 20 — any recap articles are out-of-window for May 19 issue; capture for May 20.
- **NVIDIA Q1 FY2027 earnings**: after-hours May 20 ET = May 21 KST — also for future issue.
- **Korean sources were the only May 19 publishers**: aitimes.com, aitimes.kr, thelec.kr, etnews.com, zdnet.co.kr published May 19 morning articles.
- **thelec.kr articleList**: showed only 1 confirmed May 19 article (idxno=56722, 08:00 KST); idxno=56800 was published May 18 18:00 (updated May 19 08:03 — update timestamp does NOT count for recency).
- **aitimes.com article list section/S1N1**: most recent articles are May 18; May 19 articles appear only on the homepage view.
- **CNBC chip stocks article May 19**: URL cnbc.com/2026/05/19/chip-stocks-samsung-sk-hynix-ai-memory.html — 403 on direct fetch; use bnnbloomberg.ca/ts2.tech as backup.
- **aitimes.kr article list**: use /news/articleList.html?view_type=sm to find same-day articles; found idxno=40085 (Dell-Samsung 08:39) and idxno=40087 (Siemens-Arm 09:28) for May 19.
- **etnews.com homepage**: showed 7 May 19 articles; most relevant were tech/AI category articles (idxno 20260519000001 through 000053).
- **zdnet.co.kr**: one relevant May 19 article found (ChatGPT/Gemini/Claude Korean MAU record, 09:27 KST).

## Key observations (2026-05-19 run)
- Single-day KST window (May 19 only) after previous-day issue is the leanest collection scenario.
- Korean outlets publish starting ~06:00-07:00 KST; English outlets typically start publishing UTC 06:00+ (= KST 15:00+).
- thelec.kr GIDS architecture article (idxno=56800) is a key gotcha: published May 18 18:00 but "updated" May 19 08:03 — ORIGINAL publish date governs recency, NOT update date.
- Competitor searches: zero qualifying May 19 articles for all Tier 1 and Tier 2 priority competitors.
- Major May 19 Korean tech stories: OpenAI wins Musk trial (aitimes.com), POSTECH transistor research (etnews.com), Dell-Samsung AI factory (etnews.com), KOSPI semiconductor pullback.

## Query patterns (2026-05-19 run)
- `Google IO 2026 Gemini 4 keynote recap announcements` — all results are preview articles; no post-keynote coverage yet as keynote starts 10am PT = 2am KST May 20
- `Samsung SK Hynix memory chip stocks Nomura rally "May 19"` — CNBC article (403); use ts2.tech/bnnbloomberg.ca as backup
- `전자신문 etnews 5월19일 반도체 AI 데이터센터 뉴스` — surfaces etnews.com articles from May 19 (7 articles found)
- `aitimes.kr 인공지능신문 AI 뉴스 5월 19일 2026 반도체` — surfaces aitimes.kr same-day articles
- `한경 중앙일보 반도체 AI 5월 19일 2026` — surfaced Newspim Tenstorrent acquisition article (20260519000052, May 19 08:08 KST); newspim.com good source for competitor/M&A news with precise timestamps
- `Marvell NVIDIA Tenstorrent news May 19 2026` — Tenstorrent Intel/Qualcomm acquisition interest (Bloomberg May 18, out-of-window for English; Newspim Korean recap May 19 in-window)
- `techcrunch category AI page fetch` — TechCrunch article timestamps sometimes show "X hours ago"; verify whether PT date converts to May 19 KST (evening PT = next-day KST); Anthropic/Stainless acquisition (12:27 PM PDT May 18 = 04:27 KST May 19) was in-window

## Key observations (2026-05-19 run — extended, US morning ET articles)
- US East Coast business hours (ET 09:00+ = KST 22:00+ May 19) produce English articles that are technically May 19 KST or May 20 KST; for a 07:00 KST newsletter, only articles published by ~22:00 KST May 19 are collectible
- TechCrunch published Anthropic/Stainless acquisition at 12:27 PM PDT May 18 = 04:27 KST May 19 — clearly in window and high-value story
- Evening PT articles (after ~20:00 PT) = after 12:00 KST May 20 — those go to next issue
- **Newspim** (newspim.com) confirmed as valuable source for Korean-language competitor/M&A news; "AI의 종목 이야기" column specifically covers semiconductor/AI competitor stocks; precise timestamps visible
- **etnews.com WAF blocking**: sequential article URL probing (e.g. 20260519000055, 20260519000060) triggers WAF block (220.76.66.114 flagged); use WebSearch or homepage fetch instead of sequential probing
- **ZDNet Korea** (zdnet.co.kr) — homepage fetch revealed ~20 articles on May 19; most are non-tech (finance, beauty, health); AI/semiconductor articles need topic-filtering; WD quantum HDD article (09:54) and Apple WWDC26 preview (10:01) were May 19 articles
- **Apple WWDC26 preview articles** (event June 8-12) published May 19 — these are borderline; include only if significant AI chip announcement expected; pure schedule-announcements can be skipped
- **sedaily.com** — Seoul Economic Daily accessible; Korean semiconductor stock movement articles with specific timestamps (08:35 KST May 19); potential overlap with etnews/kospi articles — check for near-duplicates

## Source notes (2026-05-21 run — single day window, NVIDIA Q1 FY2027 earnings day)
- **NVIDIA earnings coverage pattern**: Earnings released 4:20 PM ET May 20 = 05:20 KST May 21; Korean outlets (fnnews, ajunews, sedaily, heraldcorp, hankyung, newspim, techm.kr, zdnet.co.kr, etoday) publish first wave 05:45-09:13 KST; English outlets (TechCrunch, The Register, NextPlatform, ServeTheHome) publish 02:00-07:00 KST; huge volume — plan for 10+ articles on earnings-day; downstream filter selects
- **fnnews.com** — very fast to publish after-hours earnings coverage; NVIDIA article 05:45 KST; Samsung labor deal article 00:07 KST May 21; reliable Korean financial press
- **ajunews.com** — accessible Korean financial/tech news; NVIDIA earnings 06:34 KST; precise timestamps in article byline
- **newspim.com** — accessible; early KST publisher; NVIDIA earnings 05:49 KST; good for AI/semiconductor earnings
- **techm.kr** — accessible Korean tech news; NVIDIA earnings 07:34 KST; article structure allows body extraction
- **etoday.co.kr** — accessible Korean financial news; NVIDIA earnings 07:44 KST; stock market angle
- **heraldcorp.com** — accessible Korean press; NVIDIA earnings 06:40 KST; Korea Herald parent; same-day financial news
- **sedaily.com** (Seoul Economic Daily, Korean) — accessible; NVIDIA/Samsung stock reaction 06:26 KST
- **thelec.kr** — NVIDIA earnings piece 09:13 KST with unique Samsung/SK Hynix HBM supply angle; most distinctive take among Korean NVIDIA articles
- **hankyung.com** — accessible Korean financial press; NVIDIA earnings 05:53 KST (very fast); often pairs with stock market reaction
- **SemiAnalysis RSS** — confirmed STUCK at September 2025; no 2026 content; skip feed entirely; use WebSearch for individual SemiAnalysis article leads
- **HPC Wire** — 403 confirmed; skip
- **NetworkWorld RSS** — 404 confirmed; skip
- **Wired RSS** — blocked; skip
- **Naver News section/105** — JS-rendered; skip
- **Tom's Hardware** — bodies fetchable via direct URL; RSS confirmed at tomshardware.com/feeds.xml; Samsung strike/NVIDIA earnings coverage published ~02-03 KST morning

## Key observations (2026-05-21 run)
- Single-day KST window (May 21 only) remains lean for English sources before 07:00 KST; NVIDIA earnings exception — all outlets rushed to publish
- **Dominant story pattern**: When NVIDIA reports earnings after-hours ET, May-date KST issue becomes an NVIDIA earnings heavy issue; plan for 50%+ competitor-tagged articles
- Korean outlets publish NVIDIA earnings summaries fast (within 90 minutes of ET release); typically 8-10 Korean articles on same earnings event; filter_2 should select the most distinctive angle
- Samsung labor deal (파업 타결) resolved May 20 22:30 KST; articles published May 21 00:07 KST onward; confirm exact settlement terms: DS사업부 특별 인센티브 세전 10.5% (매출 대비), 상한선 없음; ratification vote May 22-27
- SpaceX S-1 IPO filing: Nasdaq SPCX, $1.7T valuation target, $80B raise — major financial news with satellite/AI infrastructure angle; filed 2026-05-21

## Query patterns (2026-05-21 run)
- `NVIDIA Q1 FY2027 earnings results revenue datacenter guidance May 21 2026` — extremely high yield; all Korean + English outlets
- `엔비디아 실적 발표 1분기 FY2027 5월 21일` — fnnews/ajunews/hankyung/newspim/techm.kr all publish within 90min of ET release
- `Samsung Electronics strike averted union deal May 21 2026` — fnnews + Tom's Hardware + thelec.kr accessible
- `NVIDIA Jensen Huang Vera Rubin BlueField-4 DPU guidance Q2 FY2027 91 billion` — TechCrunch + The Register accessible
- `Anthropic first profitable quarter Q2 revenue projected 2026` — TechCrunch accessible
- `OpenAI IPO confidential S-1 filing valuation 2026` — multiple accessible outlets
- `AMD Ryzen AI Max PRO 400 192GB unified memory AI workloads May 2026` — Tom's Hardware accessible
- `삼성전자 파업 타결 5월 21일 DS 특별인센티브` — fnnews/thelec.kr accessible

## Source notes (2026-05-20 run — single day window, Google I/O day 2)
- **Google I/O 2026 keynote (May 19 PT = May 20 KST)**: Google I/O keynote ran May 19 10am PT = May 20 02:00 KST; all recap/announcement articles published May 20 KST morning are in-window; extremely high-yield day for AI articles
- **Korean outlets published May 20 Google I/O recap by 07-09 KST**: etnews.com (×4 articles, Gemini Flash×2, Karpathy, Dell), aitimes.com (×2 articles), zdnet.co.kr (×5 articles including Google IO, Dell, Red Hat, Cohere, Samsung strike); very high yield
- **DCD (Data Center Dynamics)**: Blackstone-Google TPU JV article and Dell PowerStore Elite article published ~02:00 KST May 20 (17:00 UTC May 19); accessible via RSS; individual article 403 still applies — use RSS feed timestamps and body via search supplement
- **NextPlatform**: Dell Tech World article published 17:08 UTC May 19 = 02:08 KST May 20; accessible; full body fetchable
- **ServeTheHome**: AMD EPYC 8005 Sorano article published ~16:30 UTC May 19 = 01:30 KST May 20; accessible; full body fetchable
- **Tom's Hardware**: SMIC article at 16:01 UTC May 19 = 01:01 KST May 20; Intel 18A article at 12:13 UTC May 19 = 21:13 KST May 19 (borderline — day before window start); be careful; check RSS timestamps precisely
- **Napatech press releases**: napatech.com/media/press-releases/ — accessible; May 20 production order announcement explicit timestamp; always fetch direct for competitor coverage
- **Google Blog** (blog.google/innovation-and-ai/): accessible; exact publication timestamps via article JSON-LD; Sundar Pichai keynote recap published with 02:00 KST May 20 estimate (keynote timing)
- **Google Cloud Blog** (cloud.google.com/blog/): accessible; 8th-gen TPU article; same timing as blog.google; use JSON-LD for exact time
- **Interesting Engineering** (interestingengineering.com): accessible; Gemini Flash recap published ~02:28 KST May 20; good backup for English AI stories when TechCrunch/The Verge paywalled
- **The Tech Portal** (thetechportal.com): accessible; two May 20 Google IO articles published 03:32 and 04:21 KST; good source for AI hardware/software recaps

## Key observations (2026-05-20 run)
- Google I/O 2026 day 2 dominates the AI domain — 10+ articles across Korean and English outlets covering Gemini 3.5 Flash, Gemini Omni/Spark, Search AI overhaul, Samsung smart glasses
- Blackstone-Google $25B TPU joint venture (announced May 20) is the single highest-impact datacenter story; directly relevant to MangoBoost (TPU competition with DPU workloads)
- Google 8th-gen TPU details: TPU 8t (training, 121 ExaFlops/pod, 9600/superpod) and TPU 8i (inference, 288GB HBM, 19.2Tb/s ICI) — directly relevant as competitor silicon
- NVIDIA Q1 FY2027 earnings released after market close (4:20 PM ET May 20 = May 21 05:20 KST) — NOT available for May 20 collection; will be top story for May 21 issue
- Dell Technologies World 2026 (Las Vegas) produces simultaneous Korean and English datacenter articles
- Samsung labor dispute (파업) still ongoing May 20; 3차 조정 session at 10am KST May 20; no resolution as of morning collection
- **Tenstorrent Intel/Qualcomm M&A**: Bloomberg May 18 original (out-of-window); Newspim Korean recap May 19 (borderline); Blockonomi English recap May 20 ~04:00 KST (in-window); keep both Korean and English as they serve different MangoBoost audiences
- **Napatech**: First major AI SmartNIC production order win (1,000 units, inference customer); also NT400 fintech deal; very high relevance to MangoBoost as direct SmartNIC competitor; always include

## Query patterns (2026-05-20 run)
- `Google IO 2026 Gemini Flash TPU keynote announcements May 20` — extremely high yield; all Korean outlets published 07-09 KST May 20
- `Dell Technologies World 2026 AI infrastructure PowerEdge NVIDIA May 20` — NextPlatform + DCD + Korean outlets accessible
- `Blackstone Google TPU joint venture cloud platform May 20 2026` — DCD + The Register accessible
- `Google 8th generation TPU training inference agentic 2026` — blog.google + cloud.google.com accessible
- `Napatech SmartNIC production order AI inference May 2026` — napatech.com press release directly accessible
- `Tenstorrent Intel Qualcomm acquisition M&A May 2026` — Blockonomi + newspim accessible
- `Andrej Karpathy Anthropic pretraining May 2026` — etnews.com + Korean outlets
- `SMIC AMEC domestic Chinese chipmaking tools production May 2026` — tomshardware.com accessible
- `AMD EPYC 8005 Sorano Zen 5 telco edge May 2026` — servethehome.com accessible
- `삼성전자 파업 5월 20일 3차 조정 타결 여부` — ajunews.com + zdnet.co.kr; both published overnight into May 20

## Source notes (2026-05-22 run — single day window)
- **Single-day KST window after same-week issue**: Tom's Hardware and Blocks & Files published May 21 UTC articles after 15:00 UTC (= after midnight KST May 22); TechCrunch published 10:30 AM PDT May 21 (17:30 UTC = 02:30 KST May 22); no NextPlatform, ServeTheHome, DCD accessible articles for this window
- **Korean outlets were the primary May 22 source**: etnews.com (4 articles 07:18-09:26 KST), thelec.kr (1 article 06:02 KST), aitimes.com (2 articles 07:00 and 08:03 KST), newspim.com (1 article 08:35 KST)
- **Taipei Times** (taipeitimes.com) — accessible; publishes Taiwan semiconductor/policy news; good for NVIDIA export control enforcement stories; first-instance chip smuggling crackdown article confirmed accessible
- **aitimes.com "발행일" vs "입력일"**: Some articles show "입력" (draft input) date earlier than "발행일" (publication date). Use 발행일 for recency window check, not 입력일. Example: idxno=210729 input May 20 but 발행일 May 22 08:03 = in-window for May 22 issue.
- **newspim.com "AI MY 증시전망" column**: High-value daily semiconductor market analysis with precise KST timestamps; excellent for NVIDIA-earnings-day and Samsung-event reaction articles
- **etnews.com breaking news list**: m.etnews.com/news/section.html shows all same-day articles with timestamps; use for discovery
- **DCD** — body still 403 on all attempts; skip individual article fetch; use The Register or search summaries for DCD-originated stories
- **OpenAI Guaranteed Capacity**: Published The Register May 20 20:51 UTC = May 21 05:51 KST — out of window for May 22 issue (falls on last issue date)
- **edaily.co.kr** — accessible Korean financial news; NVIDIA earnings articles at 09:53 KST May 21 (out of window for May 22 issue)

## Key observations (2026-05-22 run)
- **Dominant May 22 story pattern**: NVIDIA earnings aftermath (May 21 KST earnings day); May 22 = "reaction day" — Korean KOSPI semiconductor surge (+9.7%), Samsung vote confirmation, market analysis
- **Samsung union ratification vote**: Started 14:00 KST May 22; results expected May 27; etnews.com idxno=20260522000042
- **AMD Taiwan $10B investment**: GlobeNewswire PR published May 21 01:35 ET (out-of-window in English); thelec.kr Korean analysis published 06:02 KST May 22 (in-window); always check Korean outlet publication of same story
- **aitimes.com articles 210788, 210808**: Both published May 22 morning KST; 210788 is daily news briefing; 210808 is Gemini Omni follow-up from I/O
- **Microsoft Maia to Anthropic**: The Information exclusive May 21 local time; etnews.com first Korean coverage May 22 07:18 KST
- **No standalone news for Tier 1 Korean competitors on May 22**: HyperAccel CEO Kim Ju-young spoke at May 21 workshop; Moreh's Jung Woo-geun spoke at same workshop; covered in etnews.com May 22 09:26 article
- **Datacenter domain lean**: No new datacenter-primary announcements May 22; market reaction stories dominated

## Query patterns (2026-05-22 run)
- `m.etnews.com/news/section.html` — direct breaking news list; all May 22 articles with timestamps
- `AMD Taiwan $10 billion investment EFB packaging May 22 2026` — surfaces thelec.kr idxno=57034 (06:02 KST May 22)
- `전자신문 etnews 기사 20260522` — direct URL probe for May 22 articles (idxno pattern 20260522000041, 42, 74, 83 etc.)
- `aitimes.com 구글 제미나이 AI 5월22일` — aitimes article list; idxno 210788, 210808 for May 22 morning
- `Microsoft Maia chip supply Anthropic external first May 2026` — surfaces The Information / etnews.com coverage
- `엔비디아 1분기 실적 5월22일 반응 코스피 반도체` — newspim.com KOSPI reaction article (08:35 KST May 22 in-window)
- `Prosecutors Taiwan AI chip smuggling Nvidia Super Micro May 22 2026` — Taipei Times accessible

## Source notes (2026-05-26 run — single day window, NVIDIA Taiwan + Computex preview week)
- **No May 26 English RSS articles before 09:00 KST**: Tom's Hardware, ServeTheHome, DCD, NextPlatform, Blocks&Files all last published May 25; single-day English drought confirmed
- **Tom's Hardware May 26 articles**: SK hynix iHBM (11:49 UTC = 20:49 KST May 26, out-of-window for May 27 issue); AMD 256-core EPYC Venice (earlier); IBM Anderon quantum (19:05 UTC = 04:05 KST May 27, in-window but stale underlying news from May 21)
- **Korean outlets primary source again**: ZDNet Korea, AI타임스, thelec.kr, etnews.com, aitimes.kr all published May 26 morning articles
- **thelec.kr member-only articles**: Some articles at thelec.kr now require login ("회원전용기사"); idxno=56000 (memory substrate price rise, 2026-05-27 08:28) was paywalled; cannot extract body
- **Taipei Times**: Published NVIDIA Taiwan HQ meeting preview article 2026-05-26 (exact time unknown from JSON-LD); accessible; confirms May 27 employee gathering/groundbreaking
- **Focus Taiwan**: Published NVIDIA employee meeting article 2026-05-25 20:29; 404 when URL modified to May 27 variant
- **aimatters.co.kr** — accessible Korean tech news; NVIDIA Jensen Huang/Lisa Su Taiwan arrival May 26; explicit date

## Key observations (2026-05-27 run — single day window)
- **Single-day window (May 27 only) after May 26 issue remains the leanest pattern**: Almost zero English RSS articles before 09:00 KST; Korean outlets dominate
- **Micron $1T market cap** was the dominant semiconductor story: ZDNet Korea + Etnews + newspim + Motley Fool all covered it from different angles; three articles kept (avoid full dedup since different outlets/content)
- **Samsung union vote** (result announced ~10:30 KST May 27): Only pre-result "expected to pass" articles found; no confirmed-pass article available at collection time
- **NVIDIA Taiwan HQ event** (May 27): Groundbreaking/employee gathering confirmed; only pre-event articles (May 25-26 publication dates) available; post-event coverage not yet indexed
- **Competitor domain lean**: All Tier 1 Korean AI chip companies had no qualifying May 27 articles; last news for Rebellions was May 14-26 period (pre-IPO NDR, Red Hat OpenShift Dec 2025)
- **Datacenter domain true zero**: No datacenter-specific articles published May 27 KST; confirmed no-news day for that domain in this window
- **fnnews.com** — accessible Korean financial news; Samsung union vote article published 05:31 KST May 27; fastest Korean publisher for morning semiconductor news
- **ajunews.com** — accessible Korean financial/tech news; Samsung union vote 08:05 KST; precise timestamps in URL pattern (/view/YYYYMMDDHHMMSSXXX)
- **newspim.com** — accessible; Samsung/SK Hynix pre-market rally 08:39 KST; "최종수정" timestamp in article confirms exact KST publish time

## Query patterns (2026-05-27 run)
- `삼성전자 노조 잠정합의안 가결 결과 10시30분 2026년 5월 27일` — fnnews.com + ajunews.com + newspim.com all accessible
- `마이크론 시총 1조달러 UBS 목표주가 상향 반도체 2026-05-27` — zdnet.co.kr + etnews.com accessible
- `앤트로픽코리아 최기영 서울 사무소 2026년 5월 27일` — zdnet.co.kr + heraldcorp.com accessible
- `딥시크 V4-Pro API 가격 인하 영구 2026` — zdnet.co.kr accessible
- `삼성전자 SK하이닉스 프리마켓 급등 마이크론 2026-05-27` — newspim.com accessible
- `샘 올트먼 AI 일자리 종말 없다 시드니 커먼웰스 2026-05-27` — etnews.com accessible
- `NVIDIA Jensen Huang Taiwan headquarters groundbreaking May 27 2026` — pre-event articles only findable (Taipei Times May 26, Focus Taiwan May 25)

## Source notes (2026-05-29 to 2026-06-01 run — 4-day weekend+holiday window)
- **4-day window (Thu May 29 – Mon Jun 1)**: Large window accumulates many articles; GTC Taipei keynote (Jun 1 11 AM Taiwan time = 10 AM KST) is anchor event; most English sources publish Fri/Sat content UTC which converts to KST same-day or +1
- **Tweaktown** (tweaktown.com) — accessible; covers TSMC, NVIDIA, AMD chip news with explicit URLs; URL pattern /news/NNNNNN/; article /111892/ = TSMC energy efficiency May 31; /111882/ = NVIDIA N1X teaser — check URL carefully before assigning article
- **bizwatch.co.kr** — Korean business news; /article/market/YYYY/MM/DD/ slug gives publication date; May 28 articles = last issue date = out-of-window; start excluding when slug date == last_issue_date
- **ajunews.com** — CRITICAL: URL slug date (e.g. /view/20260512HHMMSSXXX) is NOT reliable for publication date; always verify from article body byline; May 12 article with /view/20260512... was May 12 not May 29; body read is mandatory
- **SiliconAngle** (siliconangle.com) — accessible; covers same datacenter stories as Tom's Hardware; prefer Tom's Hardware as more authoritative when both cover same story; avoid duplicate inclusion
- **ASUS B300 GPU server ServeTheHome pattern**: STH article returned T00:00:00Z timestamp — no exact time verifiable; dropped per hard gate; STH sometimes returns midnight UTC for new articles; re-fetch later in day or skip
- **GTC Taipei June 1 keynote**: Articles indexed 10-30 min post-keynote; NVIDIA/Taiwan news in English appears Tom's Hardware, The Register, TechCrunch ~06:00-08:00 KST June 1; Korean outlets (aitimes, zdnet.ko, etnews) follow 08:00-10:00 KST

## Source notes (2026-05-28 run — single day window)
- **Single-day KST window (May 28 only)**: Confirmed leanest collection scenario — most semiconductor stories (Samsung Vietnam, SK Hynix/Micron $1T) published May 27 UTC convert to May 27 KST (last issue date) = out-of-window
- **UTC/KST boundary critical**: Samsung Vietnam chip plant Reuters story = 03:34 UTC May 27 = 12:34 KST May 27 — out-of-window; Lightmatter press release = May 21; Blocks&Files Mn3Sn = 14:21 UTC May 27 = 23:21 KST May 27 — out-of-window
- **"In-window" articles published May 27 UTC**: Must be AFTER 15:00 UTC May 27 to convert to May 28 KST; all articles before 15:00 UTC are May 27 KST = last issue date
- **thelec.kr member-only articles**: idxno 56051, 56052, 56053 all "회원전용기사" on TSMC 2nm prison story, Nanya-NVIDIA LPDDR, Tokyo Electron tech leak — skip; record in skipped_paywalled
- **FuriosaAI-Broadcom partnership**: Major story; The Register (14:00 UTC May 27 = 23:00 KST May 27 ✓ in window), StockTitan (13:00 UTC May 27 = 22:00 KST ✓), DCD (403 on body fetch). ZDNet Korea did NOT publish a separate Korean article on this story.
- **Snowflake-AWS $6B deal**: The Register (22:20 UTC May 27 = 07:20 KST May 28 ✓); TechCrunch (10:00 PDT May 27 = 17:00 UTC = 02:00 KST May 28 ✓); GeekWire (403); significant AI infrastructure deal; tag semiconductor (AWS Graviton custom chip angle)
- **thelec.kr Rebellions-KB Financial**: Published May 28 05:48 KST; body accessible and substantive (full article visible); confirmed in-window
- **aitimes.com**: May 28 articles confirmed at idxno=210970 (07:00 KST) and idxno=210993 (06:55 KST); both fully fetchable
- **zdnet.co.kr**: 4 May 28 articles found; most relevant: LG ESS (08:15), Meta One (09:38), SKT AI agent (09:25); 보안 article (09:38) is cybersecurity not domain-relevant
- **HPC Wire** — 403 confirmed; skip
- **NetworkWorld RSS** — 404 confirmed; skip
- **Wired RSS** — blocked; skip
- **SemiAnalysis RSS** — stuck Sep 2025; skip
- **Spectrum IEEE** — no May 28 content; skip
- **ServeTheHome** — last article May 27 23:00 UTC = May 28 08:00 KST but it's a PC test bench review — not domain-relevant
- **Blocks & Files** — last article May 27 14:21 UTC = May 27 23:21 KST (out-of-window); no May 28 articles

## Key observations (2026-05-28 run)
- **Semiconductor domain truly sparse on May 28 KST**: Almost all big semiconductor stories (Samsung Vietnam, Micron $1T, SK Hynix rally) published May 27 KST; only Snowflake-AWS Graviton article qualifies as semiconductor-adjacent
- **FuriosaAI-Broadcom partnership** is the biggest competitor story of the day — both English and Korean-language searches confirm; thelec.kr Korean article not found; The Register + StockTitan cover well
- **Cognition AI $1B raise** ($25B valuation, 12:17 → May 28 01:00 KST) is the AI funding story of the day
- **Snowflake-AWS Graviton $6B**: Signals shift from GPU-only AI to CPU+GPU hybrid; AWS Graviton gaining major enterprise workloads
- **Goldman Sachs token demand crisis** (24x agentic increase) is the AI cost/infrastructure anxiety story with high MangoBoost relevance
- **Italian 200% datacenter tax** (Lombardy agricultural zone) = emerging regulatory trend affecting AI buildout geography
- **Meta One AI subscription**: Marginal relevance but signals AI monetization shift; included as it shows how major AI providers are pricing inference compute

## Query patterns (2026-05-28 run)
- `FuriosaAI Broadcom partnership 3rd gen AI chip May 28 2026` — The Register + StockTitan accessible; DCD 403
- `퓨리오사AI 브로드컴 파트너십 3세대 칩 2026년 5월` — Korean search surfaced no same-day Korean articles; English-only story in Korean press
- `리벨리온 KB금융 AI 인프라 협력 2026년 5월 28일` — thelec.kr idxno=57256 accessible (thelec.kr articleList showed correct article URL)
- `Snowflake AWS $6B Graviton CPU deal May 27 2026` — The Register 22:20 UTC; TechCrunch 10:00 PDT; GeekWire 403
- `Cognition AI Devin $1B funding $25B valuation May 27 2026` — TechCrunch 09:00 PDT = May 28 01:00 KST in-window
- `Goldman Sachs agentic AI token demand 24x increase cost crisis 2026` — Tom's Hardware 20:52 UTC May 27 = 05:52 KST May 28
- `Italy Lombardy data center 200% tax agricultural zone May 2026` — Tom's Hardware 16:40 UTC May 27 = 01:40 KST May 28
- `nextplatform.com RSS May 28 2026 AI datacenter electrician` — only 1 article for May 28 in feed (00:18 BST = 23:18 UTC May 27)

## Source notes (2026-06-02 run — single day window, Computex 2026 day 1)

- **Computex 2026 keynote timing critical**: NVIDIA keynote was June 1 11AM Taiwan = June 1 10AM KST = LAST ISSUE DATE; most RTX Spark/Vera Rubin/Cosmos 3 English coverage (Tom's Hardware RTX Spark, Tom's Hardware Crescent Island, ServeTheHome NVIDIA keynote, ServeTheHome Marvell keynote, notebookcheck.net, xda-developers.com, all dated June 1) = out-of-window. Only Jun 2 KST Korean outlet articles and the Tom's Hardware "Watch Intel Computex Keynote" (published June 2) qualify.
- **Marvell Teralynx T100 announcement**: Made at Marvell keynote June 2 10:30 AM Taiwan = June 2 09:30 KST; but press releases (businesswire, investor.marvell.com) were pre-staged May 26; Yahoo Finance/InvestingNews body dates show June 1 22:00 KST (= June 1 in Korea); DCD article confirmed June 2 12:24 KST in prior session but 403 on re-fetch; treat DCD Marvell with caution — include but note.
- **ServeTheHome live coverage articles**: Always have keynote night publication; Marvell keynote was June 1 7:30PM PT = June 2 11:30 KST but article published June 1 by Ryan Smith; NVIDIA keynote was May 31 8PM PT, article published May 31. STH live articles = publication date of article, NOT keynote date.
- **Tom's Hardware**: RTX Spark (June 1), Crescent Island (June 1), "Watch Intel Keynote" (June 2) — the watch/live articles publish on the keynote day. Always verify tomshardware.com byline: "published X June 2026".
- **aitimes.com**: Very high yield; Korean Computex coverage at 12:00-13:00 KST June 2; confirmed 4 relevant articles (idxno=211237, 211238, 211240, 211242). AI타임스 consistently publishes Korean summaries of all major Computex announcements within 1-2 hours.
- **Korean financial press** (ebn.co.kr, fnnews.com, heraldcorp.com, sedaily.com): Published June 2 morning 06:50-12:13 KST; HBM4/Vera Rubin/SK Hynix NVIDIA partnership stories dominate.
- **ddaily.co.kr** (디지털데일리): Accessible; June 2 07:00 KST Intel Computex article confirmed; URL pattern /page/view/YYYYMMDDXXXXX.
- **thelec.net**: English edition confirmed June 2 07:32 KST Qualcomm Dragonfly article (idxno=10949); good coverage of Korean and international chip news in English.
- **en.sedaily.com**: URL /markets/2026/06/02/ prefix confirms June 2 publication; KOSPI 9000 article confirmed 08:26 KST.
- **ebn.co.kr**: URL /news/articleView.html?idxno=1710939; June 2 06:50 KST confirmed; good for Samsung/SK Hynix memory supply chain angle.
- **NextPlatform RSS**: No June 2 content visible; feed shows May 2 as most recent item (publishing cadence inconsistent).
- **HPC Wire feed**: 403 confirmed.
- **NetworkWorld RSS**: 404 confirmed.
- **Wired RSS**: Blocked.
- **SemiAnalysis RSS**: Still stuck Sep 2025.
- **Naver News section/105**: Still JS-rendered, blocked.

## Key observations (2026-06-02 run)
- **Computex 2026 single-day window problem**: Most Computex day-0 announcements (NVIDIA GTC keynote June 1) published June 1 KST = last issue date = excluded. Day 1 (June 2) has fewer NEW announcements; Intel keynote is the major June 2 event.
- **Intel Computex 2026 keynote**: Took place June 2 1:30 PM Taiwan = 12:30 KST; coverage articles confirmed published June 2 (Tom's Hardware watch article, ddaily.co.kr Intel strategy article).
- **Marvell keynote**: June 2 10:30 AM Taiwan = 09:30 KST; Murphy + Jensen Huang shared stage; major connectivity/T100 announcement; but most press coverage dated June 1 KST.
- **Qualcomm Dragonfly**: Announced Computex June 2; thelec.net English article confirmed June 2 07:32 KST; paywalled on digitimes.
- **CommonWealth Magazine** (english.cw.com.tw): Taiwan business magazine; excellent analysis articles on NVIDIA/Qualcomm strategy; published date confirmed June 2 from article URL (2026-06-02 web only); 403 on direct fetch in some sessions — try direct URL.
- **Korean market articles**: KOSPI AI-driven surge is a recurring secondary story when Jensen Huang/NVIDIA keynote drives Korean semiconductor stock rally; always check en.sedaily.com and heraldcorp.com for these.

## Query patterns (2026-06-02 run)
- `컴퓨텍스 2026 6월 2일 AI 반도체 뉴스 ddaily fnnews ebn` — ddaily.co.kr + fnnews.com + ebn.co.kr accessible; June 2 morning articles
- `Intel Computex 2026 Lip-Bu Tan keynote Xeon 6+ Crescent Island June 2` — Tom's Hardware + ddaily.co.kr accessible
- `Qualcomm Dragonfly data center AI inference Computex 2026 announcement June 2` — thelec.net idxno=10949 confirmed June 2 07:32 KST
- `KOSPI 9000 Jensen Huang AI semiconductor rally June 2 2026` — en.sedaily.com + heraldcorp.com accessible
- `SK하이닉스 HBM4 엔비디아 베라 루빈 협력 2026-06-02` — ebn.co.kr + biz.heraldcorp.com accessible June 2
- `라이칭더 대만 총통 컴퓨텍스 AI 공급망 June 2 2026` — fnnews.com June 2 12:13 KST exclusive
- `Marvell Teralynx T100 102.4 Tbps AI switch Computex June 2 2026` — DCD 403; investor.marvell.com May 26 (pre-event); hpcwire 403; stocktitan.net/seekingalpha 403; use search summaries only for this story
- `Computex 2026 NVIDIA vs Qualcomm agentic AI analysis` — english.cw.com.tw article.action?id=4805 confirmed June 2 (Industry | 2026-06-02 | web only in URL)

## Source notes (2026-06-10 run — single day window, Anthropic Claude Fable 5 / WWDC 2026 follow-up)

- **Single-day window (June 10 KST only)**: Many major stories (China $295B AI datacenter plan, Samsung AX declaration, Apple WWDC) broke June 9 KST — all excluded. Lean English RSS; Korean outlets + TechCrunch provide bulk of volume.
- **AI타임스 RSS** — highest yield again; 4 confirmed June 10 articles: Anthropic Fable 5 (06:32 KST), Samsung AX (06:58), Apple/Siri WWDC (06:55), WWDC summary (07:00). Always run first; RSS timestamps are KST-precise.
- **TechCrunch**: 3 June 10 KST articles confirmed: WWDC summary (03:04 KST), Claude Fable 5 (02:00 KST), Google AI subscription price (09:26 KST). TechCrunch publishes UTC articles that translate to June 10 KST from June 9 evening US time; always check category page for same-day KST articles.
- **전자신문 (etnews.com)**: 4 confirmed June 10 articles via homepage fetch: Gemini 3.5 번역 모델 (07:28), 앤트로픽 Fable 5 (07:28), 삼성전자 Element Biosciences 투자 (07:48), 강원도 의료 AX (09:20). High-yield Korean source; fetch m.etnews.com for same-day discovery.
- **뉴스핌 (newspim.com)**: 2 confirmed June 10 articles: Samsung/SK 호남·충청 반도체 투자 (07:25), Apollo/Blackstone $35B AI infrastructure (02:57).
- **머니투데이 (mt.co.kr)**: Accessible; Anthropic Fable 5 article (06:16 KST June 10); good Korean financial press backup for AI news.
- **아시아경제 (asiae.co.kr)**: Accessible; Samsung/SK Hynix Honam semiconductor investment article (06:59 KST June 10); covers Korean industry investment stories well.
- **The Next Platform**: Single article June 10 01:58 KST (Broadcom/Marvell AI chip economics); body accessible via direct fetch; feed published 16:58 UTC June 9 = 01:58 KST June 10.
- **Winbuzzer (winbuzzer.com)**: Accessible; publishes same-day AI recaps (Claude Fable 5 June 10 07:52 KST); URL pattern /YYYY/MM/DD/<slug>-xcxwbn/; 404 errors are common when URL slug is wrong — verify slug carefully.
- **Tom's Hardware**: Bodies fetchable; June 10 articles confirmed: Anthropic AI self-improvement warning (02:03 KST), Claude Fable 5 Mythos (05:34 KST). JSON-LD datePublished remains mandatory — times confirmed as 17:03 UTC and 20:34 UTC June 9.
- **DataCenterDynamics**: Articles all dated June 9 KST; 403 on body fetch. No June 10 DCD articles collected.
- **HPCWire RSS**: 403 confirmed again. Skip.
- **NetworkWorld RSS**: 404 confirmed again. Skip.
- **Wired RSS**: Blocked confirmed again. Skip.
- **Naver News section/105**: JS-rendered, blocked. Relied on web search for Korean content.
- **SemiAnalysis RSS**: Still stuck at 2025 content. Skip.
- **NVIDIA blog (blogs.nvidia.com)**: June 9 PCC article dropped — no extractable exact time for T00:00:00 hard gate compliance; blog.nvidia.com posts often lack JSON-LD precision. Always apply hard gate.

## Key observations (2026-06-10 run)
- **Anthropic Claude Fable 5 / Mythos 5 launch** (June 9 evening US time = June 10 early KST) was the day's dominant AI story; 6+ articles across outlets. Filter_2 should select 1-2 most distinctive angles.
- **WWDC 2026 follow-up**: Apple Siri AI backed by Google Gemini AND NVIDIA Blackwell GPUs; this dual NVIDIA/competitor angle is important for MangoBoost.
- **Google AI subscription price war** ($4.99/month): Major AI monetization inflection; signals inference compute commoditization.
- **Samsung/SK Hynix HBM site review** (호남·충청): Regional investment news signals next-gen HBM packaging capacity expansion; high MangoBoost relevance.
- **Total 19 articles**: Below 40-80 target due to strict single-day window after June 9 issue. Honest volume — do not pad.
- **Major stories missed (June 9 KST)**: China $295B AI datacenter plan, Samsung AX declaration, Bloomberg China story — all confirmed June 9 KST; excluded correctly.
- **Tier 1 Korean competitors**: Zero qualifying June 10 articles for Moreh, FuriosaAI, HyperAccel, FriendliAI, Rebellions.

## Query patterns (2026-06-10 run)
- `Anthropic Claude Fable 5 Mythos release June 10 2026` — TechCrunch, Tom's Hardware, Winbuzzer, etnews all yielded June 10 KST articles
- `WWDC 2026 Apple Siri AI NVIDIA Blackwell Google Gemini June 10` — AI타임스 (idxno 211518, 211533), TechCrunch WWDC summary
- `Google AI Pro subscription price cut $4.99 June 10 2026` — TechCrunch June 10 09:26 KST confirmed
- `Apollo Blackstone Broadcom AI infrastructure $35B deal June 2026` — 뉴스핌 June 10 02:57 KST; English source confirms June 9 Bloomberg original
- `삼성전자 SK하이닉스 호남 충청 HBM 반도체 투자 2026-06-10` — 뉴스핌 07:25 + 아시아경제 06:59 confirmed
- `Broadcom Marvell custom AI ASIC hyperscaler economics nextplatform June 10` — The Next Platform 01:58 KST June 10 confirmed
