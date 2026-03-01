---
name: metrics-tracker
description: |
  Defines and tracks startup metrics by stage (Pre-PMF, Post-PMF, Scale).
  Supports AARRR pirate metrics, North Star Metric, and leading/lagging
  indicator frameworks with dashboard templates.
metadata:
  version: 1.0.0
  category: product
  domain: analytics
triggers:
  - "metrics"
  - "KPI"
  - "AARRR"
  - "north star"
  - "product metrics"
---

# Metrics Tracker - Startup Metrics Framework

## Overview

Defines the right metrics for your startup stage. Measuring everything measures nothing — focus on the metrics that drive decisions.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Defining initial metrics | Stage-based metric selection |
| "KPI", "AARRR" | Metric framework setup |
| Weekly/monthly review | Metric report template |

---

## 2. Metrics by Stage

### Pre-PMF (Product-Market Fit 전)
> Focus: Are users getting value?

| Metric | Definition | Target |
|--------|-----------|--------|
| **Activation Rate** | % of signups completing core action | > 40% |
| **Retention (Week 1)** | % returning after 7 days | > 25% |
| **NPS** | Net Promoter Score | > 40 |
| **Qualitative feedback** | User interview insights | Weekly interviews |
| **Sean Ellis Test** | "Very disappointed" if product disappeared | > 40% |

### Post-PMF
> Focus: Can we grow efficiently?

| Metric | Definition | Target |
|--------|-----------|--------|
| **MRR** | Monthly Recurring Revenue | Growing MoM |
| **MRR Growth Rate** | (This month - Last month) / Last month | > 15% MoM |
| **Churn Rate** | % of users/revenue lost per month | < 5% |
| **CAC** | Total acquisition cost / New customers | Decreasing |
| **LTV** | Avg revenue per customer × Avg lifetime | LTV/CAC > 3 |

### Scale
> Focus: Is growth sustainable and efficient?

| Metric | Definition | Target |
|--------|-----------|--------|
| **ARR** | Annual Recurring Revenue | Milestone-based |
| **Net Revenue Retention** | Expansion - Churn | > 110% |
| **Payback Period** | Months to recover CAC | < 12 months |
| **Gross Margin** | (Revenue - COGS) / Revenue | > 70% |
| **Rule of 40** | Revenue growth % + Profit margin % | > 40% |

---

## 3. AARRR Framework

```
Acquisition → Activation → Retention → Revenue → Referral

[How users     [First       [Users      [Users     [Users bring
 find you]      value        come        pay]       others]
                moment]      back]
```

**Define for your product:**
```markdown
## Our AARRR Metrics

| Stage | Metric | Current | Target | Measurement |
|-------|--------|---------|--------|-------------|
| **Acquisition** | [e.g., Website visitors] | [N] | [N] | [GA4] |
| **Activation** | [e.g., Complete onboarding] | [N%] | [N%] | [Mixpanel] |
| **Retention** | [e.g., DAU/MAU ratio] | [N%] | [N%] | [Amplitude] |
| **Revenue** | [e.g., MRR] | $[N] | $[N] | [Stripe] |
| **Referral** | [e.g., Invite rate] | [N%] | [N%] | [Custom] |
```

---

## 4. North Star Metric

```markdown
## Our North Star

**Metric**: [e.g., "Weekly active projects created"]

**Why this metric:**
- Reflects core value delivery
- Correlates with retention and revenue
- Team can influence it directly

**Input Metrics (levers we can pull):**
1. [Input 1] → impacts North Star by [mechanism]
2. [Input 2] → impacts North Star by [mechanism]
3. [Input 3] → impacts North Star by [mechanism]
```

---

## 5. Weekly Metrics Report Template

```markdown
# Weekly Metrics — Week of YYYY-MM-DD

## North Star: [Metric Name]
**This week**: [value] ([+/-]% WoW)
**Trend**: 📈 / 📉 / ➡️

## Key Metrics
| Metric | This Week | Last Week | Change | Status |
|--------|-----------|-----------|--------|--------|
| [Metric 1] | [val] | [val] | [+/-]% | 🟢/🟡/🔴 |
| [Metric 2] | [val] | [val] | [+/-]% | 🟢/🟡/🔴 |

## Highlights
- [Positive trend and hypothesis for why]

## Concerns
- [Negative trend and action plan]

## Actions for Next Week
1. [Specific action to improve metric X]
```

---

## 6. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate metric definitions, report templates |
| **Read** | Reference existing metric documents |

---

## 7. Boundaries

**Will:**
- Define appropriate metrics by startup stage
- Provide AARRR, North Star, and other framework templates
- Generate weekly/monthly report templates
- Recommend measurement tools

**Will Not:**
- Connect to analytics platforms or pull real data
- Set up analytics instrumentation (use analytics-scaffold)
- Make strategic decisions based on metrics
- Guarantee metric targets are correct for your specific business
