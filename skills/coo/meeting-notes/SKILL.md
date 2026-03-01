---
name: meeting-notes
description: |
  Structured meeting note templates for startups. Generates consistently formatted
  meeting records with attendees, agenda, decisions, action items, and deadlines.
  Supports various meeting types: standup, sprint, board, all-hands, 1:1.
metadata:
  version: 1.0.0
  category: operations
  domain: communication
triggers:
  - "meeting notes"
  - "회의록"
  - "meeting template"
  - "standup notes"
  - "board meeting"
---

# Meeting Notes - Structured Meeting Records

## Overview

Generates consistent, actionable meeting notes that capture decisions and drive follow-up. Because "I thought we decided..." should never happen.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| "meeting notes", "회의록" | Interactive meeting type selection |
| "standup" | Daily standup template |
| "sprint" | Sprint planning/review template |
| "board meeting" | Board meeting template |
| "1:1" | 1-on-1 meeting template |

---

## 2. Meeting Templates

### General Meeting Template
```markdown
# Meeting: [Title]

| Item | Detail |
|------|--------|
| **Date** | YYYY-MM-DD HH:MM |
| **Duration** | [X] minutes |
| **Attendees** | @name1, @name2, @name3 |
| **Facilitator** | @name |
| **Note-taker** | @name |

---

## Agenda
1. [Topic 1] — [Owner] — [Time allocation]
2. [Topic 2] — [Owner] — [Time allocation]
3. [Topic 3] — [Owner] — [Time allocation]

---

## Discussion Notes

### 1. [Topic 1]
- [Key point discussed]
- [Different viewpoint raised by @name]
- **Decision**: [What was decided]
- **Rationale**: [Why this was decided]

### 2. [Topic 2]
- [Key point discussed]
- **Decision**: [What was decided]

---

## Decisions Made
| # | Decision | Rationale | Decided By |
|---|----------|-----------|------------|
| D1 | [Decision] | [Why] | [Who] |
| D2 | [Decision] | [Why] | [Who] |

## Action Items
| # | Action | Owner | Due Date | Status |
|---|--------|-------|----------|--------|
| A1 | [Task] | @name | YYYY-MM-DD | ⬜ |
| A2 | [Task] | @name | YYYY-MM-DD | ⬜ |

## Parking Lot (다음에 논의)
- [Topic deferred to future discussion]

---
*Next meeting: YYYY-MM-DD HH:MM*
```

### Daily Standup Template
```markdown
# Standup — YYYY-MM-DD

## @name1
- **Yesterday**: [completed tasks]
- **Today**: [planned tasks]
- **Blockers**: [issues needing help] / None

## @name2
- **Yesterday**: [completed tasks]
- **Today**: [planned tasks]
- **Blockers**: [issues needing help] / None

---
**Team Blockers Summary:**
- [Blocker] → Owner: @name → ETA: [date]
```

### Sprint Planning/Review Template
```markdown
# Sprint [N] — [Planning / Review]
**Period**: YYYY-MM-DD ~ YYYY-MM-DD
**Team Capacity**: [X] story points

## Sprint Goal
> [One sentence describing what this sprint achieves]

## [Planning] Committed Stories
| Story | Points | Owner | Priority |
|-------|--------|-------|----------|
| [Story title] | [N] | @name | P0 |

**Total Committed**: [X] points / [Y] capacity

## [Review] Results
| Story | Points | Status | Notes |
|-------|--------|--------|-------|
| [Story title] | [N] | ✅ Done / 🔄 Carry-over | [note] |

**Velocity**: [X] points completed / [Y] committed ([Z]%)

## Retrospective (Keep / Problem / Try)
| Keep | Problem | Try |
|------|---------|-----|
| [What worked] | [What didn't] | [What to try next] |
```

### Board Meeting Template
```markdown
# Board Meeting — YYYY-MM-DD

**Attendees**: [Board members and observers]

## 1. Company Update (CEO)
- **Revenue/MRR**: $[X] ([+/-]% MoM)
- **Users**: [N] ([+/-]% MoM)
- **Runway**: [N] months
- **Key Wins**: [bullets]
- **Key Challenges**: [bullets]

## 2. Financial Update (CFO/COO)
- **Burn Rate**: $[X]/month
- **Cash Balance**: $[X]
- **Revenue Forecast**: [next quarter projection]

## 3. Product Update (CPO/CTO)
- **Shipped**: [key features/milestones]
- **In Progress**: [current priorities]
- **Planned**: [next quarter roadmap]

## 4. Discussion Topics
[Topics requiring board input/approval]

## 5. Resolutions
| Resolution | Vote | Result |
|------------|------|--------|
| [Resolution text] | For: [N], Against: [N] | Approved/Rejected |

## Action Items
[Same format as general template]
```

### 1-on-1 Template
```markdown
# 1:1 — @manager ↔ @report — YYYY-MM-DD

## Check-in
- **Energy level**: [1-5]
- **Overall sentiment**: [How are you feeling?]

## Updates & Progress
- [What's been accomplished since last 1:1]

## Challenges & Support Needed
- [Current blockers or frustrations]
- [Support requested from manager]

## Growth & Development
- [Learning goals progress]
- [Career discussion points]

## Action Items from Last Time
| Item | Status |
|------|--------|
| [Previous action] | ✅ / 🔄 |

## New Action Items
| Item | Owner | Due |
|------|-------|-----|
| [Action] | @name | [date] |
```

---

## 3. Best Practices

1. **Before the meeting**: Share agenda 24h in advance
2. **During**: Capture decisions and action items in real-time
3. **After**: Share notes within 2 hours
4. **Follow-up**: Review action items at next meeting
5. **Storage**: Keep in a consistent, searchable location

---

## 4. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate meeting note document |
| **Read** | Reference previous meeting notes |
| **Glob** | Find related meeting notes |

---

## 5. Boundaries

**Will:**
- Generate structured templates for various meeting types
- Ensure decisions and action items are clearly captured
- Maintain consistent format across meetings

**Will Not:**
- Attend or transcribe actual meetings
- Send meeting notes to participants
- Schedule follow-up meetings
- Replace actual meeting facilitation skills
