---
name: okr-builder
description: |
  Builds OKR (Objectives and Key Results) frameworks for startups.
  Generates quarterly/annual OKRs with alignment across company,
  team, and individual levels following best practices.
metadata:
  version: 1.0.0
  category: operations
  domain: goal-setting
triggers:
  - "OKR"
  - "objectives"
  - "quarterly goals"
  - "goal setting"
---

# OKR Builder - Objectives and Key Results

## Overview

Creates well-structured OKRs that align teams around outcomes, not outputs. Good OKRs answer "where are we going?" (Objective) and "how do we know we're getting there?" (Key Results).

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Quarter planning | Full OKR creation workflow |
| "OKR", "quarterly goals" | Interactive OKR builder |
| Team alignment needed | Cross-team OKR cascade |

---

## 2. OKR Template

```markdown
# OKRs — [Q1/Q2/Q3/Q4] [Year]

## Company Level

### Objective 1: [Inspirational, qualitative goal]
> Owner: CEO | Confidence: [High/Medium/Low]

| # | Key Result | Baseline | Target | Current | Status |
|---|-----------|----------|--------|---------|--------|
| KR1 | [Measurable outcome] | [start] | [target] | [now] | 🟢🟡🔴 |
| KR2 | [Measurable outcome] | [start] | [target] | [now] | 🟢🟡🔴 |
| KR3 | [Measurable outcome] | [start] | [target] | [now] | 🟢🟡🔴 |

**Key Initiatives:**
- [Initiative that drives KR1]
- [Initiative that drives KR2]

---

### Objective 2: [Second company objective]
...
```

---

## 3. Writing Rules

### Objectives
- **Qualitative**: No numbers in objectives
- **Inspirational**: Should motivate the team
- **Time-bound**: Achievable within the quarter
- **3-5 per company**: More = less focus

| Good Objective | Bad Objective |
|----------------|---------------|
| "Become the go-to tool for indie hackers" | "Get 10K users" (that's a KR) |
| "Deliver a delightful onboarding experience" | "Improve onboarding" (too vague) |
| "Build a sustainable revenue engine" | "Make money" (not inspirational) |

### Key Results
- **Quantitative**: Must have a number
- **Outcome-based**: Measure results, not activities
- **2-5 per objective**: Focused
- **70% stretch**: Should be uncomfortable but not impossible

| Good Key Result | Bad Key Result |
|----------------|---------------|
| "Increase activation rate from 30% to 50%" | "Launch onboarding feature" (output, not outcome) |
| "Reduce churn from 8% to 4%" | "Talk to 20 customers" (activity) |
| "Achieve NPS of 50+" | "Send NPS survey" (activity) |

---

## 4. Startup OKR Examples

### Pre-PMF Stage
```
Objective: Validate that developers need our code review tool
  KR1: Conduct 30 user interviews with target persona
  KR2: Achieve 40%+ "very disappointed" on Sean Ellis test (n>50)
  KR3: Reach 200 weekly active users with <5% churn
```

### Post-PMF Stage
```
Objective: Build a repeatable customer acquisition engine
  KR1: Grow MRR from $10K to $30K
  KR2: Reduce CAC from $200 to $100
  KR3: Achieve LTV/CAC ratio of 3:1
```

### Scale Stage
```
Objective: Expand into the enterprise market
  KR1: Close 5 enterprise deals (>$50K ACV)
  KR2: Build SOC 2 compliance certification
  KR3: Reduce enterprise sales cycle from 90 to 60 days
```

---

## 5. Scoring & Review

```markdown
## OKR Review — End of [Quarter]

### Scoring Guide
| Score | Meaning |
|-------|---------|
| 1.0 | Fully achieved |
| 0.7 | Strong progress (sweet spot for stretch goals) |
| 0.4 | Some progress, significant gap |
| 0.0 | No meaningful progress |

### Results
| Objective | KR | Score | Reflection |
|-----------|-----|-------|------------|
| Obj 1 | KR1 | [0.X] | [What happened] |
| Obj 1 | KR2 | [0.X] | [What happened] |
| **Obj 1 Avg** | | **[0.X]** | |

### Learnings
- [What we learned about our goals]
- [What we'd do differently]
```

---

## 6. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate OKR documents |
| **Read** | Reference previous OKRs |

---

## 7. Boundaries

**Will:**
- Generate structured OKR templates by company stage
- Check OKRs against best practices (outcome vs output)
- Provide scoring and review frameworks
- Suggest alignment between company and team OKRs

**Will Not:**
- Set your OKRs for you (guide the process)
- Track OKR progress in real-time
- Replace strategy discussions
- Guarantee OKR quality without team input
