---
name: experiment-designer
description: |
  Designs A/B tests and product experiments with hypothesis structuring,
  sample size calculation, duration estimation, and result interpretation.
  Unified framework for both product and marketing experiments.
metadata:
  version: 1.0.0
  category: product
  domain: experimentation
triggers:
  - "A/B test"
  - "experiment"
  - "hypothesis test"
  - "split test"
---

# Experiment Designer - A/B Test & Product Experiment Guide

## Overview

Designs statistically sound experiments so you make decisions based on data, not opinions. Especially critical when traffic is low and every experiment counts.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Testing a product change | Full experiment design |
| "A/B test", "experiment" | Interactive experiment builder |
| Interpreting test results | Statistical analysis guide |

---

## 2. Experiment Design Template

```markdown
# Experiment: [Name]

## Hypothesis
> If we [change X], then [metric Y] will [improve/decrease] by [Z%],
> because [rationale based on user behavior/data].

## Design
| Field | Value |
|-------|-------|
| **Type** | A/B / A/B/n / Multivariate |
| **Primary Metric** | [e.g., conversion rate] |
| **Guardrail Metrics** | [metrics that should NOT worsen] |
| **Baseline** | [current value of primary metric] |
| **MDE** | [Minimum Detectable Effect, e.g., 5%] |
| **Significance** | 95% (α = 0.05) |
| **Power** | 80% (β = 0.20) |

## Sample Size & Duration
| Variant | Traffic Split | Required Sample | Est. Duration |
|---------|--------------|----------------|---------------|
| Control (A) | 50% | [N] | [days] |
| Variant (B) | 50% | [N] | [days] |

## Variants
### Control (A)
[Current experience — no changes]

### Variant (B)
[Specific change being tested]

## Success Criteria
- **Win**: Primary metric improves by ≥ MDE AND guardrails stable
- **Lose**: Primary metric does not improve OR guardrails degrade
- **Inconclusive**: Not enough data (extend or abandon)

## Risks & Mitigations
- [Risk]: [Mitigation]
```

---

## 3. Sample Size Quick Reference

For conversion rate experiments (95% significance, 80% power):

| Baseline Rate | MDE 5% | MDE 10% | MDE 20% |
|--------------|--------|---------|---------|
| 1% | 380K | 95K | 24K |
| 5% | 72K | 18K | 4.6K |
| 10% | 34K | 8.6K | 2.2K |
| 20% | 16K | 3.9K | 1K |
| 50% | 3.1K | 780 | 200 |

*Per variant. Total = N × number of variants.*

---

## 4. Low-Traffic Strategies

When you don't have enough users for traditional A/B testing:

| Strategy | When | How |
|----------|------|-----|
| **Accept larger MDE** | >20% effect expected | Reduces sample size |
| **Sequential testing** | Need early stopping | Bayesian approach |
| **Before/after** | No traffic for split | Compare time periods |
| **Qualitative** | <100 users | User interviews + usability tests |
| **Fake door test** | Testing demand | Measure clicks on non-existent feature |

---

## 5. Result Interpretation

```markdown
## Experiment Results: [Name]

| Metric | Control | Variant | Δ | p-value | Significant? |
|--------|---------|---------|---|---------|-------------|
| [Primary] | [N] | [N] | [+/-]% | [p] | Yes/No |
| [Guardrail] | [N] | [N] | [+/-]% | [p] | - |

## Decision: [Ship / Don't Ship / Iterate]
**Rationale**: [Why this decision based on data]

## Learnings
- [What we learned about user behavior]
- [Implications for future experiments]
```

---

## 6. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate experiment design documents |
| **Read** | Reference existing experiment history |

---

## 7. Boundaries

**Will:**
- Design statistically sound A/B tests
- Calculate sample sizes and durations
- Provide low-traffic experimentation alternatives
- Guide result interpretation

**Will Not:**
- Implement feature flags or A/B test code
- Run statistical analyses on real data
- Connect to analytics platforms
- Make ship/no-ship decisions (present data, you decide)
