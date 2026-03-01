---
name: postmortem-writer
description: |
  Generates blame-free postmortem documents for incidents and failures.
  Includes timeline, root cause analysis, and prevention measures
  following the blameless postmortem culture.
metadata:
  version: 1.0.0
  category: operations
  domain: incident-management
triggers:
  - "postmortem"
  - "포스트모템"
  - "incident review"
  - "RCA"
  - "root cause"
---

# Postmortem Writer - Blameless Incident Review

## Overview

Documents failures so the team learns and the same mistake never happens twice. Blame people → they hide mistakes. Fix systems → they prevent mistakes.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Production incident resolved | Full postmortem template |
| Project/launch failure | Project postmortem |
| "postmortem", "RCA" | Interactive postmortem builder |

---

## 2. Postmortem Template

```markdown
# Postmortem: [Incident Title]

| Field | Value |
|-------|-------|
| **Date** | YYYY-MM-DD |
| **Severity** | P0 (Critical) / P1 (Major) / P2 (Minor) |
| **Duration** | [Start time] → [Resolution time] ([N] hours) |
| **Impact** | [Users affected, revenue lost, SLA breached] |
| **Author** | [Name] |
| **Reviewers** | [Names] |
| **Status** | Draft / Reviewed / Action Items Complete |

---

## Summary
[2-3 sentences: what happened, impact, how it was resolved]

## Timeline (All times in KST/UTC)
| Time | Event |
|------|-------|
| HH:MM | [First sign of issue] |
| HH:MM | [Alert triggered / User report] |
| HH:MM | [Investigation started by @name] |
| HH:MM | [Root cause identified] |
| HH:MM | [Fix deployed] |
| HH:MM | [Service fully restored] |

## Root Cause Analysis

### What Happened
[Detailed technical explanation of the failure chain]

### 5 Whys
1. **Why** did the service go down? → [Answer]
2. **Why** did that happen? → [Answer]
3. **Why** did that happen? → [Answer]
4. **Why** did that happen? → [Answer]
5. **Why** did that happen? → [Root cause]

### Contributing Factors
- [Factor 1 — not the root cause but made it worse]
- [Factor 2]

## What Went Well
- [Quick detection / response]
- [Effective communication]
- [Rollback worked as designed]

## What Went Poorly
- [Delayed detection]
- [Missing runbook]
- [Communication gaps]

## Action Items
| # | Action | Owner | Priority | Due | Status |
|---|--------|-------|----------|-----|--------|
| 1 | [Prevention measure] | @name | P0 | [date] | ⬜ |
| 2 | [Detection improvement] | @name | P1 | [date] | ⬜ |
| 3 | [Process change] | @name | P2 | [date] | ⬜ |

## Lessons Learned
- [Key insight for the team]

---
*This is a blameless postmortem. We focus on systems, not individuals.*
```

---

## 3. Blameless Culture Rules

1. **No "who"** — focus on "what" and "how"
2. **Assume good intent** — people made the best decision with available info
3. **Fix systems** — humans will always make mistakes; design systems that catch them
4. **Share openly** — postmortems are learning opportunities, not punishments
5. **Follow through** — track action items to completion

---

## 4. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate postmortem documents |
| **Read** | Reference previous incidents, runbooks |

---

## 5. Boundaries

**Will:**
- Generate structured postmortem documents
- Guide root cause analysis (5 Whys)
- Enforce blameless language
- Track action items from incidents

**Will Not:**
- Investigate actual production incidents
- Access logs, metrics, or monitoring systems
- Assign blame to individuals
- Replace real-time incident response (use runbook for that)
