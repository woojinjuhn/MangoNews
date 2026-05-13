---
name: Reusable jargon explanations
description: Vetted Korean explanations for recurring AI/semi terms — reuse and refine across newsletters
type: reference
---

Recurring jargon terms with explanations that have read well in MangoNews. Reuse the analogy/voice; tweak only when the article context shifts the emphasis.

**HBM / HBM4 / HBM5E**: GPU 옆에 수직으로 쌓아 붙이는 초고속 단기기억 메모리. 세대가 올라갈수록 단수와 대역폭이 커진다. (HBM4 = 24단까지 가능한 차세대; HBM5E = 그 다음, 24단 + 더 큰 대역폭)

**칩렛(chiplet)**: 거대한 칩 하나를 통째로 만드는 대신 여러 작은 칩 조각을 한 패키지에 붙여 만드는 방식. 수율↑ + 서로 다른 공정 혼용 가능. AMD MI455X = 12 컴퓨트 + 3 어드밴스드 칩렛.

**FP4 / FP8**: AI 모델 숫자 정밀도. 작을수록 속도/전력↑, 정확도 약간↓. 추론=FP4, 학습=FP8 추세.

**자본지출(capex)**: 데이터센터·서버·전력·네트워크 인프라에 들어가는 대형 설비투자. AI 시대에는 곧 GPU/HBM/광 트랜시버/DPU 수요와 직결.

**연환산 매출(run rate)**: 최근 분기 매출 × 4. "이 속도로 1년 가면 얼마"인지 직관적 환산. 안정성 지표는 약함, 성장 속도 보여주는 데 유용.

**전년 동기 대비(YoY)**: 같은 분기를 1년 전과 비교한 변화율. 계절성 제거.

**TPU(Tensor Processing Unit)**: 구글이 자사 AI 워크로드 전용으로 직접 설계한 AI 가속기. 2026년부터 외부 판매 시작.

**ASIC**: 특정 용도 전용 맞춤 칩. 범용 GPU 대비 같은 일을 더 빠르고 전력 효율 좋게 처리.

**하이퍼스케일러**: AWS·구글 클라우드·MS Azure·메타 — 한 번 발주만으로 칩 시장을 흔드는 초대형 클라우드 사업자.

**에이전틱 AI(Agentic AI)**: 한 번 답하고 끝나는 챗봇이 아니라 스스로 목표를 쪼개 도구를 호출하며 자율 작업하는 AI. 백그라운드에서 토큰을 수십~수백 번 토해내야 해서 추론 칩 수요 폭발 트리거.

**MoE(Mixture-of-Experts)**: 거대 모델을 여러 '전문가' 부분 모델로 쪼개고 입력마다 일부만 골라 쓰는 구조. 같은 성능을 더 적은 연산으로. GPT-OSS·DeepSeek 등이 대표.

**디스어그리게이티드 서빙**: LLM 추론을 prefill(입력 처리)와 decode(토큰 생성)로 쪼개 서로 다른 칩에 맡기는 방식. 비싼 HBM 의존도를 낮추는 핵심.

**RAG / LLMOps**: RAG = 외부 문서 실시간 검색해 답변 근거 붙이기. LLMOps = LLM 운영용 DevOps. 공공 도입에서 "AI가 헛소리 안 한다는 증거" 만드는 데 필수.

**CoWoS / CoWoS-L**: TSMC 어드밴스드 패키징. GPU + HBM 등 여러 칩을 한 인터포저 위에 함께 얹어 고대역폭 연결. CoWoS-L = 작은 LSI 브리지 사용해 더 큰 패키지 가능.

**레티클 한계**: 노광 장비 한 번에 찍을 수 있는 칩 최대 면적. 이 한계 넘으면 칩렛 패키징 필수.

**SiP(System-in-Package)**: 컴퓨트·메모리·I/O 칩을 한 패키지에 다 욱여넣어 단일 칩처럼 동작하게 한 통합 패키지.

**팹리스(fabless)**: 공장 없이 설계만, 양산은 TSMC·삼성 같은 파운드리에 맡기는 회사. 리벨리온·퓨리오사·하이퍼엑셀·딥엑스 모두 해당.

## Skip list (MangoBoost 직원에겐 기본 상식 — 절대 설명하지 말 것)
CPU, GPU, AI, 클라우드, 반도체, 메모리, 데이터센터, NPU(요약문 안에 \"신경망처리장치\"로 한 번만 풀어쓰면 충분), 파운드리, DPU.

## Borderline (기사 핵심 논점이 그 단어에 걸려 있을 때만 설명)
하이퍼스케일러, ASIC, 팹리스, 칩렛.
