---
name: budget-planner
description: |
  Creates departmental and project budgets with variance tracking.
  Provides startup-specific budget templates and burn rate management
  frameworks.
metadata:
  version: 1.0.0
  category: operations
  domain: finance
triggers:
  - "budget"
  - "예산"
  - "expense plan"
  - "burn rate"
---

# Budget Planner - Startup Budget Management

## Overview

Creates structured budgets that prevent "where did the money go?" moments. Budget early, review monthly, survive longer.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Quarterly/annual planning | Full budget template |
| Post-fundraise | Use of funds allocation |
| Monthly review | Budget vs actual comparison |

---

## 2. Startup Budget Template

```markdown
# Budget — [Quarter/Year]

## Revenue Forecast
| Month | MRR | Other | Total Revenue |
|-------|-----|-------|--------------|
| [M1] | $[N] | $[N] | $[N] |
| [M2] | $[N] | $[N] | $[N] |
| [M3] | $[N] | $[N] | $[N] |

## Expenses by Category
| Category | Monthly Budget | % of Total | Notes |
|----------|---------------|-----------|-------|
| **People** | $[N] | [N]% | [N] FTEs |
| **Infrastructure** | $[N] | [N]% | Cloud, SaaS tools |
| **Marketing** | $[N] | [N]% | Ads, content, events |
| **Office/Admin** | $[N] | [N]% | Rent, supplies |
| **Legal/Accounting** | $[N] | [N]% | Lawyers, accountants |
| **Misc/Buffer** | $[N] | 10% | Always keep 10% buffer |
| **Total** | **$[N]** | **100%** | |

## Use of Funds (Post-Raise)
| Category | Allocation | Duration |
|----------|-----------|----------|
| Engineering (hiring + salaries) | 50-60% | [N] months |
| Product & Design | 15-20% | [N] months |
| Sales & Marketing | 15-20% | [N] months |
| Operations & Legal | 5-10% | [N] months |
| Buffer | 10% | Emergency reserve |
```

---

## 3. Monthly Budget Review

```markdown
## Budget vs Actual — [Month]

| Category | Budget | Actual | Variance | Status |
|----------|--------|--------|----------|--------|
| People | $[N] | $[N] | +/-$[N] | 🟢/🔴 |
| Infra | $[N] | $[N] | +/-$[N] | 🟢/🔴 |
| Marketing | $[N] | $[N] | +/-$[N] | 🟢/🔴 |
| **Total** | **$[N]** | **$[N]** | **+/-$[N]** | |

## Commentary
- [Explanation for significant variances]
- [Actions to address overruns]
```

---

## 4. Startup Budget Rules of Thumb

| Rule | Guideline |
|------|-----------|
| People costs | 60-70% of total (biggest expense) |
| Marketing | 15-25% of revenue (early stage: higher) |
| Buffer | Always keep 10% unallocated |
| Runway alert | Start worrying at 6 months remaining |
| Review cadence | Monthly review, quarterly re-forecast |

---

## 5. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate budget templates |
| **Read** | Reference previous budgets |

---

## 6. Boundaries

**Will:**
- Generate startup budget templates and frameworks
- Provide budget vs actual tracking templates
- Offer use-of-funds allocation guidance
- Include startup-specific rules of thumb

**Will Not:**
- Connect to accounting software
- Perform tax calculations
- Replace professional accountants/CFOs
- Process actual financial transactions
