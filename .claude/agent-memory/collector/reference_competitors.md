---
name: MangoBoost competitor watchlist
description: DPU/SmartNIC/accelerator competitors and adjacent vendors to monitor for MangoNews
type: reference
---

## Primary DPU/SmartNIC competitors
- **NVIDIA BlueField** (BlueField-3 shipping, BlueField-4 announced Oct 2025 for 2026 availability — 64 Arm cores, 800Gbps, ConnectX-9)
- **AMD Pensando** — Elba (shipping, dual 200GbE), Salina 400 (front-end AI networking), Pollara 400 AI NIC (commercially available H1 2025), Giglio DPU (upcoming, tweaks Elba design)
- **Marvell** — networking ASICs, acquired XConn Technologies (PCIe/CXL switches, $540M, closed Feb 2026); NVLink Fusion partner (NVIDIA $2B strategic equity investment Mar 2026)
- **Intel IPU** — custom IPU co-developed with Google; Xeon + IPU collaboration deepening

## AI inference chip competitors (DPU-adjacent)
- **Groq** — acquired by NVIDIA for ~$20B early 2026 (LPU inference architecture now part of NVIDIA)
- **Cerebras** — CS-3 waferscale; $23B valuation Feb 2026; OpenAI $10B inference deal; AWS partnership; IPO targeted Q2 2026
- **SambaNova** — SN50 chip (Feb 2026): 5x faster inference claim, 2TB DDR5 + 64GB HBM3; Intel-SambaNova collaboration announced
- **Fungible** — acquired by Microsoft (historical)

## Cloud/hyperscaler accelerator in-house silicon
- **Google TPU / Trillium** (TPU v5e)
- **Amazon Trainium 3** (partnering with Cerebras via AWS agreement)
- **Microsoft** — in-house Maia accelerator

## Tier 1 Korean competitors — May 2026 status
- **Rebellions**: KOSPI IPO filing targeting Q3 2026 (August likely); 2.34B USD valuation; EXEM partnership for NPU-based public sector AX (Apr 29 2026); Mistral AI data center partnership for Europe
- **FuriosaAI**: Portugal office established; LG Uplus EXAONE 4.0 appliance partnership (MWC26); targeting 20,000 NPU shipments 2026; rejecting Big Tech acquisition offers; 2027 IPO planned
- **Moreh**: Tenstorrent Galaxy partnership demonstrated May 1 TT-Deploy event; MoAI Inference Framework supports heterogeneous GPU/NPU clusters (NVIDIA + AMD + Tenstorrent)
- **HyperAccel**: Bertha 500 LPU samples expected Q1 2026; Dinotisia RAG collaboration; LG edge chip partnership; no fresh May 2-3 standalone article found
- **FriendliAI**: LG AI Research EXAONE 4.0 API deployment; no fresh May 2-3 standalone article found

## May 2026 update — competitor developments
- **FuriosaAI**: Samsung SDS partnership confirmed — NPUaaS launching July 2026 on Samsung Cloud Platform (SCP); 20,000 RNGD chips targeted for 2026; HBM3 → HBM3E (72GB) upgrade in progress; Portugal EU office active; Renegade S (light variant) planned late 2026/early 2027
- **Rebellions**: Rebel100 specs confirmed Apr 19 — 1PF FP16, 144GB HBM3E, UCIe chiplet (first startup to adopt UCIe); H100-class performance at 1/3 H200 power; H2 2026 production start
- **Moreh**: MoAI Inference Framework validated on Tenstorrent Galaxy Wormhole (DGX A100-class throughput); disaggregated prefill/decode architecture using Tenstorrent as prefill accelerator
- **Tenstorrent**: Galaxy Blackhole GA April 28 — $110K for 23 pFLOPS FP8, 16TB/s, 1TB GDDR6; Supercluster up to 144 nodes; TT-Deploy event May 1; Cirrascale, Equinix, ai& deploying
- **Cerebras**: S-1 filed April 2026; IPO mid-May Nasdaq target; $23B valuation; OpenAI $20B deal + AWS term sheet; $510M revenue
- **Marvell**: Google in talks for 2 new chips (inference TPU + MPU); NVIDIA $2B equity partnership for DPU/Ethernet switches; data center revenue $6.1B FY2026
- **NVIDIA Groq acquihire**: NVIDIA acquired Groq for ~$20B to add LPU low-latency inference to Vera Rubin platform

## May 7 2026 update — competitor developments
- **NVIDIA**: Spectrum-X MRC open spec (OCP) released May 6 — custom RDMA over Ethernet for gigascale AI training; already in production at OpenAI (ChatGPT/Codex training) and Microsoft (GB200 clusters). $300M investment in Corning for 10x optical fiber capacity expansion (3 new US plants, 3,000 jobs).
- **Rebellions**: KOSDAQ IPO strategy confirmed dual KOSDAQ + Nasdaq approach; Saudi Aramco PoC data center rack validation underway; Rebel100 NPU targeting H2 2026 production start
- **FuriosaAI**: 2026 target 20,000 RNGD NPUs to global clients; monthly production 1,000 chips now, scaling to 2,000-3,000 by year-end; Korea Exchange KOSDAQ listing discussions
- **HyperAccel**: Bertha 500 (Samsung 4nm, 768 TOPS INT8, LPDDR5X) samples due Q1 2026 end; SemiFive mass production contract confirmed; $45M raised; 77-person team
- **DeepX**: 2026 revenue target raised to 60B KRW (~$40M), 18x 2025; DX-M1 (Samsung 5nm, 91.1% yield) in mass production; ~350 PoC customers; exploring defense sector
- **Tenstorrent**: Galaxy Blackhole GA achieved April 28; no new May 7 standalone news
- **Moreh**: MoAI Framework validated; no new May 7 standalone news
- **FriendliAI**: No new May 7 standalone news
- **Marvell**: Up 2x in 2026 YTD vs NVIDIA +7%; NVLink Fusion partnership with NVIDIA delivering results
- **DEEPX** (note: different from DeepX / 딥엑스 is a separate Korean NPU company): 60B KRW revenue target 2026; DX-M1 chip in mass production

## May 11 2026 update — competitor developments
- **NVIDIA**: 2026 YTD total equity investments exceed $40B (58조원); breakdown: OpenAI $30B, IREN $2.1B (5GW DSX partnership Sweetwater TX), Corning $3.2B, CoreWeave ~$4.4B unrealized, Nebius $2B. Analysts flag "circular investment" risk.
- **Cerebras**: IPO price range escalated 3x during May 8-10: $115-125 → $125-135 (May 8) → $150-160 (May 10); 20x oversubscribed; IPO date May 14 Nasdaq CBRS; raising up to $4.8B; implied mkt cap ~$30B
- **AMD**: MI350P PCIe GPU announced May 7-8 — 144GB HBM3E, 4.6 PFLOPS FP4, air-cooled dual-slot for enterprise AI; 38% higher FP8 perf vs H200 NVL; available with Dell/HPE/Lenovo/Cisco/Supermicro systems
- **Marvell**: FY2026 full year results — $8.2B revenue (+42% YoY), data center >$6B (+46%), custom AI business doubled. FY2027 guidance: 30%+ growth approaching $11B
- **FuriosaAI**: Pre-IPO round expanded 7500억→8500억 KRW (target val 20억USD/3조KRW); funding to close mid-June 2026; RNGD monthly output 1,000 units → 2,000-3,000 by year-end; 2026 target 20,000 total units; Renegade+ Max (144GB HBM3E dual-chip PCIe) planned H2 2026
- **Napatech**: NT400 400G SmartNIC design win at tier-1 global bank; $3M+ 2-year deal; >50 fintech customers total
- **Rebellions/Moreh/HyperAccel/FriendliAI/Tenstorrent**: No standalone news in May 8-11 window

## May 12 2026 update — competitor developments
- **Tenstorrent**: Smallest.ai partnership (May 11) — Lightning V2 TTS on Tenstorrent hardware; 3.6x lower infrastructure cost vs NVIDIA L40S; $27K vs $100K for 550 concurrent voice calls
- **Cerebras**: Final IPO price set May 13; listing May 14 CBRS Nasdaq; 20x oversubscribed; raising $4.8B; largest 2026 IPO to date
- **NVIDIA**: Jensen Huang excluded from Trump's China state visit (May 13-15); H200 exports approved but Chinese government blocking imports; no May 12 press releases
- **Rebellions**: Samsung SDS 국가AI컴퓨팅센터 partner confirmed — NPUaaS launching July 2026 using Rebellions NPU; key national infrastructure role (2.5조원 project)
- **AMD (Samsung foundry)**: AMD 2nm notebook CPU order reportedly won by Samsung for Venice/Verano CPUs; not officially confirmed (Digitimes May 11 paywall)
- **Samsung Electronics labor**: Post-adjustment talks Day 2 May 12 — no deal reached; 18-day strike May 21 still threatened; 17.5조원 bonus gap; JP Morgan: 43조원 potential loss
- **Tier 1 Korean (FuriosaAI/Moreh/HyperAccel/FriendliAI)**: No standalone new May 12 news

## May 14 2026 update — competitor developments
- **Cerebras**: CBRS Nasdaq trading begins May 14; priced at $185/share (above $150-160 range); raised $5.55B; implied mkt cap $56B+; 20x oversubscribed. 2026's largest US tech IPO.
- **NVIDIA**: Jensen Huang last-minute joined Trump's Air Force One to China (May 13 KST); H200 export talks now underway; Trump approved H200 exports in Jan but China customs blocked all sales; Huang values China market at ~$50B opportunity; Foxconn Nitrogen ransomware breach leaked alleged NVIDIA datacenter topology data.
- **AMD**: EPYC server CPU revenue share hit record 46.2% in Q1 2026 (Mercury Research); Venice Zen 6 + Helios rack confirmed for H2 2026; Helios uses Pensando DPU for rack-scale networking. Ryzen 9000 PRO 3D V-Cache 6 new workstation SKUs announced.
- **Marvell**: COMPUTEX 2026 keynote (June 2) announced — Matt Murphy to speak on AI data center infrastructure scaling.
- **Fractile** (adjacent): UK inference chip startup raised $220M Series B (May 13); SRAM in-memory-compute architecture; 25x speed / 10% cost claim vs GPU; Anthropic early-stage talks; 2027 chip delivery target. Tag as adjacent competitor.
- **Tenstorrent, FuriosaAI, Rebellions, Moreh, HyperAccel, FriendliAI**: No standalone new May 14 news.
- **Samsung Electronics labor**: May 21 strike confirmed after May 13 talks fully collapsed; union rejected further dialogue; TrendForce: contained financial impact but customer defection risk real; emergency arbitration being considered by Korean PM.

## May 15 2026 update — competitor developments
- **NVIDIA**: H200 export to China cleared for ~10 firms (Alibaba, Tencent, ByteDance, JD.com, Lenovo, Foxconn + distributors); 75,000 chips per customer cap; zero shipments yet — Chinese govt blocking imports, pressure to use Huawei/domestic chips. Huang at Beijing summit. Stock record $236.46, mkt cap $5.77T. Q2 FY2027 earnings May 20.
- **Cerebras**: CBRS IPO closed May 15; day-1 (May 14) trading closed +68% at $311; $5.55B raised; implied mkt cap $56B+. 2026 largest US tech IPO.
- **TSMC**: 2026 Technology Symposium (May 14 Hsinchu) — announced A13 (2nm-class successor), A12 (2nm volume), N2U (enhanced 2nm); CoWoS 98% yield (up from 80%); 5 new 2nm fab announced; CAGR target 70%. 4nm still dominant volume node.
- **AMD Pensando**: AMD Helios rack platform confirmed — Pensando DPU for rack-scale networking; Venice EPYC + Instinct MI455X GPU; H2 2026 launch. AMD EPYC record 46.2% server CPU revenue share (Q1 2026 Mercury Research) from prior week.
- **Samsung (HBM/strike)**: Union May 15 10am ultimatum to DS CEO Jeon Young-hyun; warm-down production cuts underway; no settlement as of collection time; May 21 18-day strike still threatened. 100T won (~$72B) production risk. KOSPI broke 8000 (Samsung +143%, SK Hynix +201% YTD).
- **Tenstorrent, FuriosaAI, Rebellions, Moreh, HyperAccel, FriendliAI, Napatech**: No standalone May 15 news found.
- **Microsoft (Maia/hyperscaler silicon)**: CEO Summit (May 14-15) in Redmond; SK Hynix partnership deepened; Jensen Huang in attendance; GPU procurement plans for 2026-2030 reported.
- **SoftBank**: Record ¥5 trillion annual profit; OpenAI stake drives result; Arm revenue up; signal for AI infrastructure investment wave.

## May 16-18 2026 update — competitor developments (weekend window)
- **NVIDIA**: Jensen Huang Stanford speech May 17 on GPU export policy — called China blocking import "colossal mistake," urged administration to allow H200 exports; zero H200 shipments to China despite US-side clearance. Q1 FY2027 earnings preview articles circulating ahead of May 20 report. May 18 final Samsung union negotiation day.
- **Cerebras (CBRS)**: Post-IPO analysis period (CBRS May 14 debut +68%); no standalone new May 16-18 competitor articles; IPO cycle complete.
- **Arm**: FTC opened antitrust investigation May 16 — probing Arm's plan to design its own AGI CPU for sale direct to datacenters (bypassing chip licensing model); potentially competing with Arm's own licensees (NVIDIA, Qualcomm, etc.). Tag as competitor/adjacent when the datacenter AGI CPU product features in articles.
- **STMicroelectronics + NVIDIA**: 800V GaN power system for datacenter partnership announced May 16 — STMicro SiC/GaN enabling NVIDIA next-gen rack power; relevant to datacenter power domain.
- **Samsung Electronics labor**: Lee Jae-yong (Jay Y. Lee) issued rare public apology May 16 for "failing employees"; final negotiation session May 18 with arbitration deadline; Korean Semiconductor Industry Association issued solidarity statement May 17; Korean PM threatened emergency arbitration May 17; May 21 strike still unresolved as of May 18 morning KST.
- **ASML + Tata**: Joint partnership for India semiconductor capacity — ASML providing DUV lithography tools for Tata's planned India fabs; long-term supply chain diversification story.
- **TSMC**: VIS (Vanguard International Semiconductor) 10% stake sale — TSMC divesting legacy node subsidiary stake; TSMC focusing on advanced nodes (N2/A13 roadmap). VIS stake estimated ~$600M.
- **FuriosaAI, Rebellions, Moreh, HyperAccel, FriendliAI, Tenstorrent, Napatech, Marvell**: No standalone new May 16-18 articles found.
- **Google (Axion/TPU)**: Google I/O 2026 starts May 19; preview articles for AI infrastructure (Axion, TPU v6, Gemini 2.5 Ultra) circulating in May 16-18 window; actual announcement articles come May 19+.
- **Amazon (Trainium/Graviton)**: AWS re:Invent preview articles noting Trainium 3 timeline for H2 2026.
- **OpenAI (restructuring)**: Greg Brockman returned as President; Sam Altman CTO title discussion ongoing; restructuring completed May 16-17; signals strategic leadership stabilization.

## May 20 2026 update — competitor developments
- **Google (TPU/Silicon)**: Google I/O 2026 revealed 8th-gen TPUs (TPU 8t training + TPU 8i inference). TPU 8t: 9,600/superpod, 121 ExaFlops, 2PB shared memory, ~3x vs Ironwood. TPU 8i: 288GB HBM + 384MB SRAM (3x prev gen), 19.2Tb/s ICI, 80% better perf/dollar. Virgo Network megascale fabric: 134K TPU/datacenter or 1M+ chips in single cluster. GA later in 2026. Tags: competitor silicon, datacenter.
- **Google + Blackstone**: $25B JV (Blackstone $5B equity, ~70% ownership; rest debt); 500MW datacenter capacity by 2027; external TPU-based cloud targeting CoreWeave customers; CEO: Benjamin Treynor Sloss. Google off-balance-sheet move while maintaining TPU supply control.
- **Tenstorrent**: Intel and Qualcomm engaged in preliminary acquisition discussions; $5B+ valuation if sold; also speaking to investors about new funding round. Bloomberg May 18; Korean newspim May 19; Blockonomi May 20. Jim Keller's AI startup — very high MangoBoost relevance (RISC-V AI chip competitor). Status: ongoing, no deal signed.
- **Napatech**: First major AI SmartNIC production order — 1,000 units to AI inference pioneer (name undisclosed); multi-million dollar; initiates planned multi-year rollout; 2026 guidance unchanged. Also NT400 Tier-1 bank deal ($3M+, 2yr). Key MangoBoost competitor (SmartNIC domain).
- **NVIDIA**: Q1 FY2027 earnings scheduled 4:20 PM ET May 20 = May 21 05:20 KST — NOT included in May 20 collection; will be top story for May 21 issue. Jensen Huang appeared at Dell Tech World with Michael Dell.
- **Dell + NVIDIA**: PowerEdge XE9812 (NVIDIA Vera Rubin NVL72) announced at Dell Tech World; 10x lower cost-per-token vs Blackwell; NVIDIA Spectrum-X used in PowerSwitch at 496Tbps; Jensen Huang on stage with Michael Dell.
- **Samsung strike (ongoing)**: 3차 조정 at 10am KST May 20; still unresolved from overnight May 19-20 negotiations; May 21 strike deadline imminent; government considering emergency arbitration.
- **Tier 1 Korean (Rebellions/FuriosaAI/Moreh/HyperAccel/FriendliAI)**: No standalone May 20 news; monitor for post-Google-IO partnership announcements.

## May 21 2026 update — competitor developments
- **NVIDIA Q1 FY2027 earnings** (released 4:20 PM ET May 20 = 05:20 KST May 21): Revenue $81.6B (+85% YoY, beat $77.3B est); DC $75.2B (+73% YoY, +9% QoQ); Q2 FY2027 guidance $91B ±2%; Vera Rubin NVL144 sampling to customers, first shipments Q3 FY2027; BlueField-4 DPU (800Gbps, 64 Arm cores) integral to Vera Rubin rack; $80B share buyback; quarterly dividend raised 25x; gross margin 71.3% (compressed from 78.4% by Blackwell ramp costs). Jensen Huang: agentic AI driving 4x more compute demand; Vera CPU for $200B compute CPU market (replacing x86).
- **Tenstorrent acquisition rumors**: Intel + Qualcomm in separate preliminary acquisition talks (Bloomberg May 18; Newspim Korean May 19; Blockonomi May 20); $5B+ valuation. No deal signed; Jim Keller says open to strategic discussions. Critical MangoBoost competitor — RISC-V AI chip that could be folded into larger platform.
- **Samsung Electronics labor strike**: Averted May 20 22:30 KST — union and management reached deal: DS division special incentive = 10.5% of annual revenue before tax, NO CAP; 2025 payout ≈ 7.4조원; ratification vote May 22-27; if ratified, 18-day strike (May 21–June 7) cancelled. Production continuity restored; Samsung/SK Hynix stocks rallied +6.16%/+4.3% premarket.
- **Rebellions, FuriosaAI, Moreh, HyperAccel, FriendliAI, Napatech, Marvell**: No standalone May 21 articles found. Marvell COMPUTEX June 2 still forward calendar.

## May 22 2026 update — competitor developments
- **NVIDIA**: Vera Rubin VR200 NVL72 system cost $7.8M (vs $4M for GB300 NVL72); memory now 25% of rack cost ($2M); 54TB LPDDR5X per rack vs 17TB; Morgan Stanley analysis. KOSPI semiconductor sector +9.7% on May 21 NVIDIA earnings reaction. Taiwan chip smuggling case (3 suspects) re: Nvidia AI servers; Taiwan's first chip smuggling prosecution.
- **Microsoft (Maia)**: In talks to supply Maia200 chips to Anthropic for Claude inference — first external customer for Microsoft proprietary AI silicon; early stage talks (The Information exclusive May 21; etnews.com Korean coverage May 22 07:18 KST).
- **HyperAccel**: CEO Kim Ju-young gave keynote at 차세대 AI 반도체 아키텍처 워크숍 (May 21 Seoul); topic: sustainable AI infrastructure strategies. No standalone product news.
- **Moreh**: Dr. Jung Woo-geun (MOREH) presented heterogeneous AI system optimization at same May 21 workshop. No standalone product news.
- **Rebellions, FuriosaAI, FriendliAI, Napatech, Marvell, Tenstorrent**: No standalone May 22 news.
- **Kioxia**: Record FY2026 results — ¥2.337T revenue (+37%), US ADS listing planned; AI NAND/SSD demand driving growth.

## May 29–Jun 1 2026 update — competitor developments (4-day GTC Taipei window)
- **NVIDIA GTC Taipei keynote (June 1)**: Jensen Huang revealed N1X chip — NVIDIA's first ARM-based laptop SoC; Windows on ARM + CUDA; 200 TOPS NPU; targets consumer AI PC market. Articles: Tom's Hardware, The Register, TechCrunch. Tag: competitor + AI.
- **NVIDIA Vera Rubin**: JP Morgan 1조달러 ($1T) procurement forecast for Vera Rubin generation (May 30 KST article); Taiwan partner night (May 29-30 KST articles); NVIDIA market cap $4.5T+ during GTC week.
- **NVIDIA COMPUTEX presence**: NVIDIA confirmed as major COMPUTEX 2026 player alongside AMD, Marvell; keynote details emerging; BlueField DPU ecosystem articles circulating.
- **Rebellions**: Seoul AI Forum article (en.sedaily.com May 29 09:07 KST) covering Rebellions' presentation on NPU ecosystem. Tag: competitor. Rebellions + KB Financial May 28 article already published in issue #017 (in published_urls); do not re-collect.
- **FuriosaAI**: No standalone May 29–Jun 1 articles found (Broadcom partnership from May 28 in prior issue). FuriosaAI Broadcom 3rd-gen chip sampling H1 2028.
- **Marvell**: COMPUTEX keynote June 2 — out of window for Jun 1 issue. No qualifying May 29–Jun 1 articles found.
- **Tenstorrent**: No qualifying May 29–Jun 1 articles. Intel/Qualcomm acquisition talks ongoing (Bloomberg May 18 origin).
- **Napatech**: No qualifying May 29–Jun 1 articles.
- **HyperAccel, FriendliAI, Moreh**: No qualifying May 29–Jun 1 standalone articles found.
- **Google (TPU/Axion)**: TPU 8t/8i architecture follow-up articles circulating from I/O; Blackstone JV datacenter construction updates.
- **AWS (Graviton/Trainium)**: Snowflake $6B Graviton deal (May 28 issue); no new May 29–Jun 1 AWS silicon articles.

## Forward-looking competitor calendar (as of June 1 2026)
- **Marvell COMPUTEX 2026 keynote**: June 2; Matt Murphy on AI data center infrastructure — articles expected June 2 KST
- **NVIDIA Vera Rubin NVL144**: Sampling to customers confirmed; first shipments Q3 FY2027; JP Morgan $1T procurement forecast
- **NVIDIA N1X ARM laptop chip**: Announced June 1 GTC Taipei keynote; Windows on ARM + CUDA; expect follow-up benchmark/OEM articles June 2+
- **AMD Venice/Helios rack**: H2 2026 launch (EPYC Zen 6 + Instinct MI455X + Pensando DPU); AMD also at COMPUTEX
- **FuriosaAI pre-IPO**: Funding close target mid-June 2026; Broadcom 3rd-gen chip sampling H1 2028
- **Rebellions KOSPI IPO**: Targeting Q3 2026 (August likely); KB Financial partnership confirmed
- **Google 8th-gen TPU**: GA planned later in 2026; Blackstone $25B JV datacenter construction ongoing
- **Tenstorrent acquisition**: Intel/Qualcomm talks ongoing from May 18; watch for deal announcement or new funding round
- **Samsung strike**: Ratification vote completed ~May 27; result = passed; 18-day strike averted
- **OpenAI IPO**: Confidential S-1 imminent; $1T+ valuation target; September 2026
- **Microsoft Maia → Anthropic deal**: Early-stage talks (The Information May 21); watch for confirmation
- **FuriosaAI 2027 IPO**: Pre-IPO funding mid-June 2026 close; KOSDAQ listing 2027 target

## May 26-27 2026 update — competitor developments
- **NVIDIA Computex/GTC Taipei**: Jensen Huang at Computex 2026 (May 26-June 5); 13 product announcements including Vera Rubin Ultra, Blackwell Ultra; Vera Rubin NVL144 shipping H2 2026; GB300 ramp straining TSMC CoWoS packaging supply chain.
- **Rebellions**: Operating a 1MW-scale datacenter directly (thelec.kr idxno=56994 May 26); first Korean AI chip startup to run customer-facing inference infrastructure in-house.
- **FuriosaAI**: RNGD integration confirmed with Yuracle Orda platform (via zdnet.co.kr May 26); Saudi Aramco PoC with AI exports.
- **Broadcom + Applied Materials EPIC platform**: Applied Materials-Broadcom EPIC packaging platform partnership (May 21); hybrid bonding + InFO; advanced packaging ecosystem.
- **Samsung Electronics labor**: Union ratification vote started May 22 14:00 KST; result expected May 27; strike threat suspended pending vote.

## May 28 2026 update — competitor developments
- **FuriosaAI + Broadcom**: Major partnership announcement — FuriosaAI's 3rd-gen TCP architecture paired with Broadcom's 3.5D XDSiP packaging and Ethernet/PCIe interconnect. 2nm TSMC compute die + HBM4/4E memory. Sampling H1 2028. This is the biggest FuriosaAI news since RNGD mass production. Broadcom now has 3 Korean/custom ASIC partnerships (Google TPU, Meta MTIA, FuriosaAI). Custom accelerator IP = 65% of Broadcom Q1 FY2026 revenue. Sources: The Register (14:00 UTC May 27 = 23:00 KST), StockTitan (13:00 UTC May 27 = 22:00 KST).
- **Rebellions + KB Financial Group**: Strategic AI infrastructure partnership signed May 27; Rebellions to supply AI semiconductor inference infrastructure to KB Financial; addresses financial sector network isolation regulations requiring on-premise deployment; KB has backed Rebellions since Series A. Confirms growing Korean financial sector AI chip adoption. Source: thelec.kr idxno=57256 (05:48 KST May 28).
- **Moreh, HyperAccel, FriendliAI, Tenstorrent, Napatech, Marvell**: No qualifying May 28 articles found.
- **NVIDIA**: No standalone May 28 announcement; Computex news flow continuing (see Computex forward calendar).

## June 3-4 2026 update — competitor developments (Computex Day 3-4 / GTC Taipei finale)
- **Marvell**: COMPUTEX keynote June 2 delivered (articles June 3-4 KST) — Teralynx T100: industry-first 102.4 Tbps switch silicon (3nm monolithic, <1000W, 512-port scale-out, co-packaged optics option). Jensen Huang declared Marvell "the next trillion-dollar company." Stock +33% single day (26-year record). Market cap $254B. NVIDIA $2B equity investment context confirmed. Vision: "data center without distance" via CPO. Q2 2026 sampling.
- **NVIDIA**: Jensen Huang Korea Partner Night Taipei (June 1) with 30+ Korean companies (Samsung, SK Hynix, LG, Doosan, Naver). Korea visit arriving June 4 evening; meetings June 5+. Seoul National University visit June 8. Vera Rubin in full production; Samsung/SK Hynix/Micron all confirmed HBM4 suppliers. NVIDIA + TSMC fab AI collaboration (cuLitho, Metropolis FabTwin) announced at GTC Taipei.
- **Intel**: Xeon 6+ Clearwater Forest launched at Computex — world's first datacenter CPU on Intel 18A (1.8nm-class) process. Flagship Xeon 6990E+: 288 Darkmont E-cores, 576MB L3, 12-ch DDR5 @8000MT/s, 96 PCIe 5.0 lanes, 330-450W TDP. Intel-SambaNova rackscale AI infrastructure partnership announced (SN-50 RDU + Xeon 6+ combo). Crescent Island datacenter GPU preview (2027).
- **Qualcomm**: Dragonfly brand announced for datacenter products (Computex June 3). More details June 24 investor day. AI200 accelerator H2 2026, AI250 2027. CEO Amon declared 2026 "Year of Agents."
- **AMD**: EXPO Ultra Low Latency DDR5 announced at Computex. Gorgon Halo (Ryzen AI Max PRO 400, up to 192GB unified) positioned vs NVIDIA RTX Spark. AMD executives: "You're just wrong if you don't get a Strix Halo notebook."
- **Tier 1 Korean (Rebellions/FuriosaAI/Moreh/HyperAccel/FriendliAI)**: No standalone June 3-4 articles found. FuriosaAI pre-IPO round still open (mid-June close target). Rebellions KOSPI IPO Q3 2026 target unchanged.
- **Astera Labs**: Scorpio X-Series 320-lane PCIe 6.0 switch (20 Tbps) at Computex — vendor-agnostic AI cluster scale-up.
- **SambaNova**: SN-50 RDU confirmed in Intel rackscale AI + Vector Core Compute neocloud (Vista/Cambium Capital).

## June 5 2026 update — competitor developments
- **NVIDIA**: Jensen Huang arrived Seoul June 5 via chartered flight at Gimpo Business Aviation Center. Evening dinner at Hongdae BBQ restaurant ('형님저어요') with SK Chairman Choi Tae-won, LG Chairman Koo Kwang-mo, Naver Chairman Lee Hae-jin. Hyundai Chairman Chung Euisun meeting separate. Doosan Bears baseball (June 7 Jamsil Stadium) — Huang pitches (jersey #93/Nvidia founding year), Doosan Chairman Park Jeongwon bats (#96/Doosan founding year). Seoul National University visit June 8. Discussion: HBM supply, AI datacenter, robotics, physical AI, autonomous driving. This is the dominant Korean news story of the day.
- **NVIDIA + Samsung/SK Hynix HBM4**: At Computex June 2 SK Hynix booth, Huang signed "Please make more" on HBM4E wafer; SK Hynix SK Chairman Choi pledged 2x wafer capacity in 5 years; Samsung showed HBM5 prototype with 2nm base die + Heat Path Block cooling.
- **KOSPI circuit breaker**: June 5 KOSPI dropped 6%+, circuit breaker triggered (KOSPI 200 futures -5%). Samsung -7%, SK Hynix -9%. Cause: Broadcom Q2 FY2026 earnings miss — guided AI chip Q3 at $16B vs $17.2B expected. AVGO dropped 15%. Philadelphia Semiconductor Index -5.45%.
- **Broadcom Q2 FY2026**: Revenue $22.19B (+48% YoY, beat). AI chip Q3 guidance $16B (miss). Full-year AI guidance $56B (miss vs $57.6B expected). Custom ASIC/XPU business strong but not enough to offset market disappointment. Broadcom at June 5 competitor tag level.
- **Marvell Teralynx T100**: The Elec covered on June 5 (07:30 KST) — 102.4 Tbps AI switch chip in 3nm, <1000W, 512-port scale-out; Q2 2026 sampling. Jensen Huang "next trillion-dollar company" comment still reverberating.
- **FuriosaAI, Rebellions, Moreh, HyperAccel, FriendliAI, Tenstorrent, Napatech**: No standalone June 5 dedicated news found. Monitor June 6+.
- **Anthropic IPO**: Filed preliminary IPO paperwork (June 1 NPR); $965B valuation; leading round Altimeter/Dragoneer/Greenoaks/Sequoia. SpaceX targeting $75B IPO proceeds in June. OpenAI year-end listing expected.

## June 9 2026 update — competitor developments (Jensen Huang Korea visit conclusion)
- **NVIDIA**: Jensen Huang departed Seoul June 9 morning via Gimpo Business Aviation Center (Gimpo BAC); bound for Aberdeen, UK. 4박5일(4-night/5-day) Korea visit completed. Exit statement: "We had a great time with all of our partners; our business is growing very well so we need more supply; I want to come back to Korea." Full partnership announcement summary:
  - SK Telecom: GW-scale AI factory built on NVIDIA DSX platform (confirmed partnership)
  - NAVER: AI infrastructure scale-up 55MW → GW-scale (NCP partnership + AI factory)
  - LG Group: Isaac GR00T physical AI ecosystem, humanoid robotics, GW-scale AI factory with liquid cooling + 800V DC power management
  - Samsung Electronics DS (전영현 VP meeting): HBM4 supply, SOCAMM, foundry cooperation, co-development roadmap for HBM4E/HBM5
  - SK Hynix: Multi-year memory co-development agreement for next-gen memory (HBM4/4E/5 roadmap)
  - Hyundai Motors: Autonomous driving + physical AI
  - Korea AI Ecosystem Reception (신라호텔 June 8): "Korea is unrivaled in heavy industry, manufacturing, electronics, AI software; $수천억 revenue into Korea over next 5 years"
  - Seoul National University lecture June 8 (마지막 방문)
  - Doosan Bears baseball June 7 (피칭 #93, Park Jeongwon batting #96)
  - AI Semiconductor Forum June 4 (attended/keynoted)
  - NVIDIA stock near all-time high during Korea visit; BlueField-4 DPU integral to Vera Rubin rack
- **Samsung Electronics (HBM/Foundry)**: Groq LP40 Samsung foundry confirmation denied — Samsung DS VP 전영현 denied Groq LP40 is Samsung-made in press Q&A (June 8); TSMC rumored as actual foundry partner. Samsung showed HBM4 progress; Huang meeting outcome = co-development roadmap with no signed contract disclosed publicly.
- **SK Hynix**: Multi-year co-development agreement signed with NVIDIA (June 8 confirmed); covers HBM4, HBM4E, HBM5 memory and next-gen interconnect; "NVIDIA's memory partner of choice" narrative reinforced. SK Chairman Choi Tae-won pledged 2x HBM wafer capacity in 5 years.
- **Tier 1 Korean AI semiconductor (K-AI Forum)**: K-AI Semiconductor Forum held June 4 (or 4-5); reporting published ~June 8-9:
  - **Rebellions**: Representative at forum; Rebel 100 NPU commercialization updates presented
  - **FuriosaAI**: Forum participant; pre-IPO status — targeting early 2027 KOSDAQ; funding round 7500억→8500억 KRW
  - **HyperAccel**: Forum participant; Bertha 500 LPU (Samsung 4nm, 768 TOPS INT8) update
  - **Moreh, FriendliAI**: No standalone June 9 articles found; forum presence not confirmed in sources
- **ASML**: TeraFab initiative — consortium involving Elon Musk (reported June 9-10 conference context); ASML CEO Pete Wennink at "Innovate To Zero" Paris summit; context: €107B ($119B) ultra-high-NA EUV capacity buildout with semiconductor customers. Watch June 9-10 for TeraFab/Musk deal details.
- **OpenAI (IPO)**: Confidential S-1 IPO filing confirmed June 8 (TechCrunch: "as early as October 2026"); $852B+ implied valuation from SoftBank investment terms; listing window H2 2026. Major AI industry event regardless of OpenAI's non-chip status.
- **Apple (Silicon/AI)**: WWDC 2026 — Apple Intelligence 2.0 (M5/A19 SoC) revealed; enhanced Siri with GPT-4o integration; on-device AI improvements. A19 chip advancing 3nm → next-gen node roadmap.
- **Samsung (Groq LP40 + NVIDIA)**: Per Samsung DS VP Jun Young-hyun: Groq LP40 inference chip is NOT Samsung-made (TSMC is actual foundry per credible reports); Samsung meeting with Huang June 7-8 covered ongoing HBM4 supply negotiations.
- **Marvell, Tenstorrent, Napatech**: No standalone June 9 articles found.

## Key M&A / strategic moves to watch
- Marvell + XConn (CXL/PCIe switches, UALink) — Feb 2026
- NVIDIA + Groq — early 2026, ~$20B; Groq 3 LPX now part of Vera Rubin platform
- NVIDIA + Marvell NVLink Fusion — Mar 2026 (strategic equity + platform integration)
- Qualcomm + OpenAI smartphone chip — reported Apr 28, 2026 (on-device AI)
- Qualcomm + Alphawave Semi — $2.4B acquisition Dec 2025; entering data center custom silicon; first hyperscaler customer confirmed Q4 2026
- Astera Labs acquired Pliops — Feb 2026 (storage accelerator M&A)
- Marvell-Google custom AI chip talks — Apr 20, 2026; 2 chips discussed (MPU + inference TPU); not yet signed
- Google-Broadcom TPU contract extended through 2031 (confirmed Apr 2026)
- NVIDIA Vera Rubin platform: BlueField-4 DPU (64-core, 800Gbps ConnectX-9) integral component; available H2 2026
- AMD Pensando Silina 400 DPU (3rd gen) in Helios rack; Pollara 400 AI NIC in Oracle Cloud partnership
- Cerebras IPO: S-1 filed April 17 2026; CBRS; $23B valuation; mid-May Nasdaq listing target
