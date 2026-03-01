---
name: growth-experiment
description: |
  Designs and manages growth experiments using ICE/RICE frameworks.
  Structures hypothesis-experiment-measure-learn cycles for systematic
  startup growth with weekly experiment cadence.
metadata:
  version: 1.0.0
  category: marketing
  domain: growth
triggers:
  - "growth experiment"
  - "growth hack"
  - "growth sprint"
  - "그로스"
---

# Growth Experiment - Systematic Growth Framework

## Overview

Turns growth from gut feeling into a repeatable process. Run 2-3 experiments per week, learn fast, double down on what works.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Weekly growth meeting | Experiment pipeline review |
| "growth experiment" | New experiment design |
| Post-experiment | Result analysis and learnings |

---

## 2. Growth Experiment Template

```markdown
# Experiment: [Name]
**ID**: GX-[NNN]
**Date**: YYYY-MM-DD
**Owner**: @name
**Status**: Idea / Designed / Running / Completed

## Hypothesis
> If we [specific change],
> then [expected outcome],
> measured by [metric] changing from [baseline] to [target],
> within [timeframe].

## ICE Score
| Factor | Score (1-10) | Reasoning |
|--------|-------------|-----------|
| **Impact** | [N] | [How much will this move the needle?] |
| **Confidence** | [N] | [How sure are we this will work?] |
| **Ease** | [N] | [How quickly can we test this?] |
| **ICE Score** | **[N]** | Impact × Confidence × Ease |

## Design
- **What**: [Specific change or test]
- **Where**: [Channel, page, or touchpoint]
- **Who**: [Target segment]
- **Duration**: [How long to run]
- **Sample**: [Expected sample size]
- **Success Criteria**: [What "winning" looks like]

## Results (post-experiment)
| Metric | Baseline | Result | Change | Significant? |
|--------|----------|--------|--------|-------------|
| [Metric] | [N] | [N] | [+/-]% | Yes/No |

## Decision: 🟢 Scale / 🟡 Iterate / 🔴 Kill
**Reasoning**: [Why this decision]

## Learnings
- [What we learned about our users]
- [Implications for future experiments]
```

---

## 3. Experiment Idea Bank (by Channel)

| Channel | Experiment Ideas |
|---------|-----------------|
| **Onboarding** | Simplify signup, personalized first experience, progress bar |
| **Email** | Subject line tests, send time optimization, drip sequence |
| **Landing Page** | Headline variants, CTA placement, social proof |
| **Pricing** | Free tier limits, annual discount, feature gating |
| **Referral** | Double-sided incentive, share mechanics, invite timing |
| **Content** | Topic clusters, format tests, publishing frequency |
| **Product** | Feature discovery, empty states, notification triggers |

---

## 4. Weekly Growth Meeting Agenda

```markdown
## Growth Meeting — YYYY-MM-DD (30 min)

### 1. Metrics Check (5 min)
- North Star: [value] ([trend])
- Key funnel metrics: [quick update]

### 2. Completed Experiments Review (10 min)
- GX-[N]: [Result] → [Decision]
- GX-[N]: [Result] → [Decision]

### 3. Running Experiments (5 min)
- GX-[N]: [Progress update]

### 4. New Experiment Pipeline (10 min)
| ID | Experiment | ICE | Status |
|----|-----------|-----|--------|
| GX-[N] | [Name] | [N] | Ready to launch |
| GX-[N] | [Name] | [N] | Needs design |

### 5. Launch Decisions
- Launch this week: GX-[N], GX-[N]
```

---

## 5. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate experiment docs, meeting agendas |
| **Read** | Reference previous experiment results |

---

## 6. Boundaries

**Will:**
- Design structured growth experiments with ICE scoring
- Provide experiment idea banks by channel
- Create weekly growth meeting agendas
- Document results and learnings

**Will Not:**
- Implement experiments in code
- Run A/B tests (use experiment-designer for statistical design)
- Access analytics data directly
- Guarantee growth outcomes
