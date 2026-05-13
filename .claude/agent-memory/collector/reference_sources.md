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
- **fortune.com** — accessible for big tech capex/data center articles; explicit dates; good heat island / sustainability coverage
- **topnews.in** — accessible; republishes Korea semiconductor export analysis; explicit dates; easier access than Bloomberg
- **TrendForce** beat: TSMC CoWoS wafer ASP approaching $10K (same as 7nm); key pricing signal for quarterly tracking

## Query patterns (2026-05-04 run)
- `"May 2026" OR "2026-05-03" OR "2026-05-04" semiconductor AI DPU announcement` — surfaced Motley Fool May 3 Marvell analysis
- `Samsung HBM4E 5월 검증 SK하이닉스 TSMC 협력 2026` — surfaced Paik Financial News HBM4E validation piece
- `TSMC CoWoS advanced packaging HBM5 roadmap 2026 2027` — surfaced TrendForce ASP article + Tom's Hardware roadmap
- `퓨리오사AI 삼성SDS 레니게이드 클라우드 파트너십` — surfaced multiple Korean outlets covering the Samsung SDS cloud deal
- `AI Inferencing Will Define 2026 market wide open` — SDxCentral piece names all inference chip competitors including FriendliAI

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
