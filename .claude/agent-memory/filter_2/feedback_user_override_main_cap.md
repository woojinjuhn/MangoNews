---
name: User-specified main_cap overrides dynamic formula
description: When user explicitly sets a main_cap in the prompt, honor that over the window_days formula
type: feedback
---

When the user's request explicitly sets a main article ceiling (e.g., "최대 8개"), use that as `main_cap` even if the dynamic formula (`min(8 + (window_days - 1) * 2, 14)`) would yield a higher cap.

**Why:** The dynamic formula is a default for headless runs. When the user is actively in the loop and specifies a number, that's the editorial decision — they may be deliberately tightening the cap to fight pad-filling on catch-up days. Honoring the explicit instruction also matches the agent-driven (not script-driven) operating principle.

**How to apply:** If the user prompt contains an explicit cap (e.g., "메인 기사 최대 N개"), use N. Note both N and the formula's computed value in `selection_notes` for traceability (e.g., "main_cap=8 (사용자 명시; 동적 공식상 window_days=4→14 가능)"). If no cap is mentioned, fall back to the formula.
