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

## Forward-looking competitor calendar (as of May 20 2026)
- **NVIDIA Q1 FY2027 earnings**: May 20 4:20 PM ET = May 21 05:20 KST; next issue story
- **Samsung strike**: May 21 start date; 18-day window through June 7; monitoring required
- **Marvell COMPUTEX 2026 keynote**: June 2; Matt Murphy on AI data center infrastructure
- **AMD Venice/Helios rack**: H2 2026 launch (EPYC Zen 6 + Instinct MI455X + Pensando DPU)
- **FuriosaAI pre-IPO**: Funding close target mid-June 2026; 2027 IPO
- **Rebellions KOSPI IPO**: Targeting Q3 2026 (August likely)
- **Google 8th-gen TPU**: GA planned later in 2026; watch for customer adoption announcements

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
