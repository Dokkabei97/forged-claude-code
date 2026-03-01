---
name: prd-writer
description: |
  Lightweight PRD (Product Requirements Document) writing guide for startups.
  Provides structured templates covering problem definition, hypothesis, success metrics,
  scope, and edge cases. Designed to be lean enough for fast iteration while
  comprehensive enough to align engineering and design teams.
metadata:
  version: 1.0.0
  category: product
  domain: documentation
triggers:
  - "write PRD"
  - "create PRD"
  - "product requirements"
  - "feature spec"
  - "write spec"
---

# PRD Writer - Lightweight Product Requirements Document

## Overview

Creates startup-appropriate PRDs — structured enough to align teams, lean enough to not slow you down. A good PRD answers "what and why", not "how".

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| New feature planning | Generate full PRD template |
| "write PRD", "feature spec" | Guided PRD creation workflow |
| Before sprint planning | Quick PRD for prioritized features |

---

## 2. PRD Template

```markdown
# PRD: [Feature Name]

> **Status**: Draft | In Review | Approved | In Development
> **Author**: [Name]
> **Date**: [YYYY-MM-DD]
> **Stakeholders**: [Names/Roles]

---

## 1. Problem Statement
[1-2 paragraphs. What problem are we solving? Who has this problem? How do they solve it today?]

**Evidence:**
- [User interview quote / data point / support ticket pattern]
- [Market research / competitor analysis finding]

## 2. Hypothesis
> If we [build X], then [target users] will [achieve Y],
> which we'll measure by [metric Z].

## 3. Success Metrics

| Metric | Current | Target | Measurement Method |
|--------|---------|--------|--------------------|
| Primary KPI | N/A or baseline | [target] | [how to measure] |
| Secondary KPI | N/A or baseline | [target] | [how to measure] |
| Guardrail Metric | [baseline] | [should not decrease] | [how to measure] |

## 4. Scope

### In Scope (MVP)
- [ ] [Core feature 1 — essential for value delivery]
- [ ] [Core feature 2 — essential for value delivery]
- [ ] [Core feature 3 — essential for value delivery]

### Out of Scope (Future)
- [Nice-to-have 1 — why deferred]
- [Nice-to-have 2 — why deferred]

### Non-Goals
- [What this feature explicitly will NOT do]

## 5. User Stories

### Primary Flow
> As a [user type], I want to [action], so that [benefit].

**Acceptance Criteria:**
- Given [context], when [action], then [result]
- Given [context], when [action], then [result]

### Secondary Flows
[Additional user stories as needed]

## 6. Design Considerations
- [UX principle or constraint]
- [Accessibility requirement]
- [Mobile/responsive considerations]

## 7. Technical Considerations
- [API changes needed]
- [Database schema impact]
- [Third-party integrations]
- [Performance requirements]

## 8. Edge Cases & Risks

| Edge Case | Expected Behavior |
|-----------|-------------------|
| [Edge case 1] | [How system should handle it] |
| [Edge case 2] | [How system should handle it] |

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| [Risk 1] | H/M/L | H/M/L | [Plan] |

## 9. Timeline
- **Target Start**: [Date]
- **Target Ship**: [Date]
- **Estimated Effort**: [S/M/L or story points]

## 10. Open Questions
- [ ] [Question that needs answering before development]
- [ ] [Question that needs answering before development]
```

---

## 3. Writing Guidance

### Problem Statement Tips
- Lead with the **user's pain**, not your solution idea
- Include at least one piece of evidence (data, quote, observation)
- Avoid solutioning in the problem statement

### Hypothesis Tips
- Use the format: If/Then/Measured-by
- Be specific enough that the hypothesis is **falsifiable**
- One hypothesis per PRD (not a wishlist)

### Scope Tips
- Apply the "Would users pay for this alone?" test for MVP items
- Everything else goes to Out of Scope
- Non-Goals prevent scope creep ("this is NOT a...")

### Metric Tips
- Primary KPI: The ONE number this feature should move
- Guardrail: Existing metric that should NOT get worse
- Set targets BEFORE building, not after

---

## 4. PRD Complexity Levels

| Level | When | Sections Required |
|-------|------|-------------------|
| **Light** (1-pager) | Small feature, <1 week effort | Problem, Hypothesis, Scope, Stories |
| **Standard** (2-3 pages) | Medium feature, 1-4 weeks | All sections |
| **Detailed** | Major initiative, cross-team | All sections + appendices |

---

## 5. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate PRD document |
| **Read** | Reference existing PRDs for consistency |
| **Grep** | Search codebase for related features |
| **Glob** | Find existing specs and documentation |

---

## 6. Boundaries

**Will:**
- Generate structured PRD templates at appropriate detail level
- Guide users through each section with prompts and tips
- Ensure hypothesis is falsifiable and metrics are measurable
- Maintain consistent format across PRDs

**Will Not:**
- Make product decisions for you (present options, not conclusions)
- Write technical implementation details (that's engineering's job)
- Replace user research with assumptions
- Generate PRDs without understanding the problem first
