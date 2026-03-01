---
name: scope-cutter
description: |
  Helps startups cut features to true MVP by identifying the minimum set of capabilities
  needed to deliver core value. Uses systematic frameworks to separate must-haves from
  nice-to-haves and prevent scope creep.
metadata:
  version: 1.0.0
  category: product
  domain: prioritization
triggers:
  - "cut scope"
  - "reduce scope"
  - "MVP scope"
  - "what to cut"
  - "scope creep"
  - "minimum viable"
---

# Scope Cutter - MVP Scoping for Startups

## Overview

Ruthlessly cuts features to the true minimum needed to test your core hypothesis. The best MVP is embarrassingly small — but it ships.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| PRD review with too many features | Guided scope reduction |
| "MVP scope", "what to cut" | Feature triage workflow |
| Sprint overcommit detected | Emergency scope reduction |
| Pre-launch feature list review | Ship/defer/kill classification |

---

## 2. The Scope Cutting Framework

### Step 1: Identify Core Value Proposition
Ask the critical question:
> "If your product could only do ONE thing, what would it be?"

This becomes the **Core Job** — everything else is evaluated against it.

### Step 2: Feature Triage (MoSCoW + Startup Twist)

Classify every feature:

| Category | Definition | Startup Rule |
|----------|------------|-------------|
| **Must** | Product is broken without it | Cannot demo without it |
| **Should** | Important but workaround exists | Users will ask for it in Week 2 |
| **Could** | Nice-to-have, enhances UX | Users might not even notice |
| **Won't** | Not now, maybe later | Kill it. No "maybe later" backlog bloat |

### Step 3: Apply Cutting Rules

**The 5 Cutting Questions:**
1. **Does it test our core hypothesis?** No → Cut
2. **Can users achieve the core job without it?** Yes → Cut
3. **Would we learn something new by building it?** No → Cut
4. **Can we fake it manually first?** Yes → Cut (do it manually)
5. **Does it need to exist at launch?** No → Cut

**Common "Feels Essential but Isn't" Features:**
- Admin dashboard (use database directly at first)
- Email notifications (send manually)
- User settings/preferences (use sensible defaults)
- Social login (email/password is fine for MVP)
- Dark mode, i18n, responsive (pick ONE platform)
- Search (use browser Ctrl+F or simple filter)
- Analytics dashboard (use GA/Mixpanel directly)
- Password reset flow (do it via support manually)

### Step 4: Output Scope Decision

```markdown
## Scope Decision: [Feature/Product Name]

### Core Job
> [One sentence: what the product must do]

### Ship (Must Have) — [N] features
- [ ] [Feature] — [why it's essential for core job]
- [ ] [Feature] — [why it's essential for core job]

### Defer (Post-Launch) — [N] features
- [Feature] — [why it can wait] — **Trigger**: [when to build it]
- [Feature] — [why it can wait] — **Trigger**: [when to build it]

### Kill (Won't Build) — [N] features
- ~~[Feature]~~ — [why it's not needed]

### Manual Workarounds
| Instead of Building | Do This Manually |
|---------------------|-----------------|
| Admin dashboard | Direct DB queries |
| Email notifications | Manual emails via Mailchimp |
| User onboarding flow | Personal demo calls |

### Estimated Effort After Cutting
- Before: [X] weeks
- After: [Y] weeks
- Savings: [X-Y] weeks ([percentage]% reduction)
```

---

## 3. Scope Creep Prevention Rules

### Red Flags During Development
- "While we're at it, let's also..."
- "It would be easy to just add..."
- "Users might want..."
- "Competitors have..."
- "What if we need to..."

### Response Protocol
When scope creep is detected:
1. Write it down (backlog, not sprint)
2. Ask: "Does this help us validate our hypothesis faster?"
3. If no → Defer with a specific trigger condition
4. If yes → Evaluate against current sprint capacity

---

## 4. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Read** | Analyze existing PRD/feature list |
| **Write** | Generate scope decision document |
| **Grep** | Search for feature references in codebase |

---

## 5. Boundaries

**Will:**
- Challenge every feature against core value proposition
- Provide concrete "manual workaround" alternatives
- Quantify effort savings from scope reduction
- Set clear triggers for when deferred features should be built

**Will Not:**
- Make the final cut decision (present analysis, you decide)
- Remove features already in production
- Ignore user safety or legal requirements in cutting
- Suggest cutting core authentication/security features
