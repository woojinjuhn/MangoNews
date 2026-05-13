---
name: DPU/SmartNIC adjacent signal vocabulary
description: Keyword/entity catalog for recognizing DPU-relevant news quickly during filtering
type: reference
---

MangoBoost 핵심 영역인 DPU/SmartNIC 인접성을 빠르게 식별하기 위한 어휘 목록.

**경쟁사 DPU/SmartNIC 제품**
- NVIDIA BlueField (현재 4세대), ConnectX SuperNIC (현재 9), Spectrum Ethernet
- AMD Pensando (DSC, Salina, Pollara)
- Marvell OCTEON DPU, Teralynx 스위치
- Intel IPU (E2000)
- Broadcom Stingray, Jericho/Tomahawk
- AWS Nitro
- Google IPU, Mount Evans

**CPU 인접 신호 (DPU 수요 견인)**
- Arm Neoverse, AGI CPU (에이전틱 AI 전용, 2026-03 발표)
- AWS Graviton (현재 5세대)
- Microsoft Cobalt
- Intel Xeon 6, AMD EPYC

**워크로드 키워드**
- agentic AI / agent inference (CPU:GPU 비율 1:1로 이동)
- KV cache management (BlueField-4 같은 storage DPU 필수)
- offload (network, storage, security)
- 400V/800V DC 전환, 액침냉각

**시장 시그널**
- "CPU shortage", "BMC lead time 35-40 weeks"
- "compute-constrained" (capacity 부족 = 인프라 신규 투자 트리거)
- 하이퍼스케일러 custom silicon engagement (Qualcomm, Marvell-Google 등)

**적용 가이드**: 본문에 위 어휘 중 2개 이상 등장 + 새로운 사실/숫자가 있으면 keep 우선. DPU 직접 언급은 없어도 CPU 부족·CPU:GPU 비율 변화는 DPU 수요 신호로 keep.
