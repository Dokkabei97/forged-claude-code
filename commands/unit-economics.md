---
name: unit-economics
description: "Calculates CAC, LTV, LTV/CAC ratio, payback period and other unit economics with improvement simulations"
category: operations
complexity: basic
mcp-servers: []
personas: []
---

# /unit-economics - Unit Economics Calculator

## Triggers
- When assessing business model health
- Before fundraising to present financials
- When evaluating marketing channel efficiency

## Usage
```
/unit-economics
/unit-economics --simulate            # Run improvement scenarios
/unit-economics --arpu 50 --churn 5   # Direct input
```

## Behavioral Flow

### Phase 1: Input Collection
```
Required:
  - Monthly revenue per customer (ARPU): $[N]
  - Monthly churn rate: [N]%
  - Customer acquisition cost (CAC): $[N]

Optional:
  - Gross margin: [N]%
  - Monthly growth rate: [N]%
  - Expansion revenue rate: [N]%
```

### Phase 2: Calculate Metrics

```
LTV = ARPU × Gross Margin / Churn Rate
Payback Period = CAC / (ARPU × Gross Margin)
LTV/CAC Ratio = LTV / CAC

Example:
  ARPU: $50/month, Churn: 5%/month, CAC: $200, Margin: 80%
  LTV = $50 × 0.80 / 0.05 = $800
  Payback = $200 / ($50 × 0.80) = 5 months
  LTV/CAC = $800 / $200 = 4.0x
```

### Phase 3: Health Assessment

```markdown
# Unit Economics Report

## Core Metrics
| Metric | Value | Benchmark | Status |
|--------|-------|-----------|--------|
| ARPU | $[N]/mo | - | - |
| Churn Rate | [N]%/mo | <5% SaaS | 🟢/🟡/🔴 |
| CAC | $[N] | - | - |
| LTV | $[N] | - | - |
| **LTV/CAC** | **[N]x** | >3x | 🟢/🟡/🔴 |
| **Payback** | **[N] mo** | <12 mo | 🟢/🟡/🔴 |
| Gross Margin | [N]% | >70% SaaS | 🟢/🟡/🔴 |

## Health Score
🟢 **Healthy** (LTV/CAC > 3, Payback < 12mo)
🟡 **Improving** (LTV/CAC 1-3, Payback 12-18mo)
🔴 **Unsustainable** (LTV/CAC < 1, Payback > 18mo)

## Improvement Scenarios
| Scenario | Change | New LTV/CAC | Impact |
|----------|--------|-------------|--------|
| Cut churn by 1% | [N]% → [N]% | [N]x | +$[N] LTV |
| Increase ARPU 20% | $[N] → $[N] | [N]x | +$[N] LTV |
| Reduce CAC 25% | $[N] → $[N] | [N]x | Faster payback |

## Highest-Impact Lever
[Which change gives the biggest LTV/CAC improvement]
```

## Tool Coordination
- **Write**: Generate unit economics report

## Boundaries

**Will:**
- Calculate LTV, CAC, LTV/CAC, payback period
- Assess health against SaaS benchmarks
- Run improvement simulations
- Identify highest-impact levers

**Will Not:**
- Access real financial data or billing systems
- Account for complex cohort-based LTV models
- Provide investment advice
- Replace CFO financial modeling
