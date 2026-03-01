---
name: user-interview-guide
description: |
  Guides user interview design, execution, and analysis. Provides question
  templates for discovery, validation, and usability interviews with
  structured insight extraction frameworks.
metadata:
  version: 1.0.0
  category: product
  domain: user-research
triggers:
  - "user interview"
  - "customer interview"
  - "user research"
  - "사용자 인터뷰"
---

# User Interview Guide - Structured User Research

## Overview

Helps startups conduct effective user interviews — the #1 tool for understanding customers. Bad interviews confirm your bias; good interviews reveal what you don't know.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Pre-build validation | Discovery interview template |
| Feature validation | Validation interview template |
| Usability testing | Usability test script |

---

## 2. Interview Types & Templates

### Discovery Interview (문제 발견)
> **Goal**: Understand the problem space before building

```markdown
## Interview Script: Discovery

**Intro (2 min):**
"Thanks for your time. I'm trying to understand how you [domain activity].
There are no right or wrong answers — I'm learning from your experience."

**Context (5 min):**
1. Tell me about your role and what you do day-to-day.
2. How does [topic] fit into your work?

**Problem Exploration (15 min):**
3. Walk me through the last time you [relevant activity].
4. What was the hardest part about that?
5. How do you handle [specific challenge] today?
6. What have you tried to solve this? What happened?
7. How often does this come up? (daily/weekly/monthly)

**Impact (5 min):**
8. What does this problem cost you? (time/money/frustration)
9. If you could wave a magic wand, what would change?

**Wrap-up (3 min):**
10. Is there anything I should have asked but didn't?
11. Who else should I talk to about this?
```

**Key Rules:**
- Ask about **past behavior**, not hypothetical futures
- Never pitch your solution during discovery
- "Tell me more about that" is your best follow-up
- Silence is powerful — let them think

### Validation Interview (솔루션 검증)
> **Goal**: Test whether your solution addresses real needs

```markdown
## Interview Script: Validation

**Context (3 min):**
1. Remind me — how do you currently handle [problem]?
2. Has anything changed since we last spoke?

**Solution Presentation (5 min):**
[Show prototype/mockup/description]
"Here's something we're exploring. I'd love your honest reaction."

**Reaction (15 min):**
3. What's your first impression?
4. What would you use this for? (Don't suggest use cases)
5. What's confusing or unclear?
6. What's missing that you'd need?
7. Would this replace anything you currently use?
8. How much would you expect to pay for this? / Would you pay $X?

**Commitment Test (5 min):**
9. Would you be willing to try this for a week?
10. Can I follow up with you when it's ready?
```

### Usability Test (사용성 테스트)
> **Goal**: Observe users completing tasks with your product

```markdown
## Usability Test Script

**Setup:**
"I'm going to ask you to complete some tasks. Think out loud —
tell me what you're looking at, what you expect, what confuses you.
If something is hard, it's the product's fault, not yours."

**Tasks:**
1. [Task 1]: "Try to [specific action]" — Observe, don't help
2. [Task 2]: "Now try to [specific action]" — Note where they hesitate
3. [Task 3]: "Find [specific information]" — Track time to completion

**For each task, record:**
- Completed? (yes/no/with help)
- Time taken
- Errors or wrong paths
- Verbal reactions
- Satisfaction (1-5)
```

---

## 3. Insight Extraction

```markdown
## Interview Analysis: [Date] [Participant]

### Key Quotes
- "[Exact quote]" — Context: [situation]

### Observed Behaviors
- [What they actually do, not what they say]

### Pain Points (severity 1-5)
| Pain | Severity | Frequency | Current Workaround |
|------|----------|-----------|-------------------|
| [Pain] | [1-5] | [Daily/Weekly] | [How they cope] |

### Surprises (things we didn't expect)
- [Unexpected finding]

### Implications for Product
- [What this means for our roadmap]
```

---

## 4. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate interview scripts, analysis docs |
| **Read** | Reference existing research |

---

## 5. Boundaries

**Will:**
- Generate interview scripts for discovery, validation, usability
- Provide analysis frameworks for extracting insights
- Recommend interview best practices
- Help synthesize findings across multiple interviews

**Will Not:**
- Conduct interviews (you must talk to real humans)
- Replace statistically significant quantitative research
- Guarantee insights are representative (5 interviews ≠ market truth)
- Generate fake user quotes or personas without real data
