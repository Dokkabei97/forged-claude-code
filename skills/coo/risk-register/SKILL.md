---
name: risk-register
description: |
  Creates and maintains risk registers with impact/probability matrices,
  mitigation plans, and risk owner assignments for startup operations.
metadata:
  version: 1.0.0
  category: operations
  domain: risk-management
triggers:
  - "risk"
  - "리스크"
  - "risk assessment"
  - "risk register"
---

# Risk Register - Startup Risk Management

## Overview

Identifies, assesses, and tracks risks before they become crises. Startups that manage risk proactively survive longer.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Quarterly review | Full risk assessment |
| "risk", "리스크" | Risk register creation/update |
| Major decision | Decision-specific risk analysis |
| Incident occurred | Add to risk register with lessons |

---

## 2. Risk Register Template

```markdown
# Risk Register — [Date]

| ID | Risk | Category | Probability | Impact | Score | Owner | Status |
|----|------|----------|-------------|--------|-------|-------|--------|
| R1 | [Description] | [Cat] | H/M/L | H/M/L | [N] | @name | Open |
| R2 | [Description] | [Cat] | H/M/L | H/M/L | [N] | @name | Mitigated |

## Risk Detail: R1 — [Risk Name]
- **Description**: [What could go wrong]
- **Trigger**: [What would cause this to happen]
- **Probability**: High (>70%) / Medium (30-70%) / Low (<30%)
- **Impact**: High (existential) / Medium (significant) / Low (manageable)
- **Mitigation Plan**: [What we're doing to reduce probability/impact]
- **Contingency Plan**: [What we'll do IF it happens]
- **Owner**: @[name]
- **Review Date**: [When to reassess]
```

---

## 3. Common Startup Risks

| Category | Risk | Typical Probability |
|----------|------|-------------------|
| **Financial** | Runway runs out before next raise | High |
| **Financial** | Key customer churns | Medium |
| **Technical** | Major security breach | Low but catastrophic |
| **Technical** | Key infrastructure failure | Medium |
| **People** | Co-founder departure | Medium |
| **People** | Key engineer leaves | Medium |
| **Market** | Competitor launches similar product | High |
| **Market** | Market shifts (regulation, trends) | Medium |
| **Legal** | IP dispute | Low |
| **Legal** | Compliance violation | Medium |
| **Operational** | Vendor/partner dependency fails | Medium |

---

## 4. Risk Matrix

```
Impact →     Low        Medium       High
Probability
  High     | 🟡 Medium | 🟠 High   | 🔴 Critical |
  Medium   | 🟢 Low    | 🟡 Medium | 🟠 High     |
  Low      | 🟢 Low    | 🟢 Low    | 🟡 Medium   |
```

**Scoring**: H=3, M=2, L=1 → Score = Probability × Impact (1-9)

---

## 5. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate risk register |
| **Read** | Reference previous risk assessments |

---

## 6. Boundaries

**Will:**
- Create structured risk registers
- Assess probability and impact
- Suggest mitigation and contingency plans
- Track risk status over time

**Will Not:**
- Predict the future with certainty
- Make risk acceptance decisions for you
- Provide insurance or legal advice
- Replace professional risk consultants for regulated industries
