---
name: email-sequence
description: |
  Designs automated email drip campaigns for onboarding, nurturing,
  win-back, and upsell sequences. Includes subject lines, copy,
  timing, and A/B test variations.
metadata:
  version: 1.0.0
  category: marketing
  domain: email
triggers:
  - "email sequence"
  - "drip campaign"
  - "onboarding email"
  - "email marketing"
  - "nurture sequence"
---

# Email Sequence - Drip Campaign Designer

## Overview

Designs email sequences that convert signups into active users and active users into paying customers. Email is still the highest-ROI marketing channel.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Setting up onboarding emails | Onboarding sequence template |
| "email sequence", "drip campaign" | Interactive sequence builder |
| Reducing churn | Win-back sequence template |

---

## 2. Sequence Types

### Onboarding Sequence (5-7 emails, 14 days)
```
Day 0: Welcome + Quick Start (immediate after signup)
Day 1: Core Feature #1 (the "aha moment" trigger)
Day 3: Core Feature #2 (deepen engagement)
Day 5: Success Story (social proof)
Day 7: "Need Help?" (support + resources)
Day 10: Advanced Tip (power user features)
Day 14: Feedback Ask (NPS or survey)
```

### Nurture Sequence (for leads not yet converted)
```
Week 1: Educational content (no pitch)
Week 2: Problem awareness (relate to their pain)
Week 3: Solution comparison (how category works)
Week 4: Your approach (soft product introduction)
Week 5: Case study (proof it works)
Week 6: Offer (free trial, demo, discount)
```

### Win-Back Sequence (for inactive users)
```
Day 30 inactive: "We miss you" + what's new
Day 45 inactive: "Here's what you're missing" + value reminder
Day 60 inactive: "Last chance" + special offer
Day 90 inactive: "Should we close your account?" (triggers loss aversion)
```

### Upsell Sequence (free → paid)
```
After N uses: Usage limit approaching
After activation: Feature comparison (free vs paid)
After value milestone: "You've achieved X, unlock more with Pro"
End of trial: Trial ending + conversion offer
```

---

## 3. Email Template

```markdown
## Email [N]: [Internal Name]

**Send**: [Trigger / Timing]
**Subject**: [Subject Line A]
**Subject B**: [A/B Test Variant]
**Preheader**: [Preview text, 40-100 chars]

---

Hi {{first_name}},

[Opening — personal, relevant, short]

[Body — one key message, 3-5 short paragraphs max]

[CTA — single, clear call to action]

{{cta_button: "Button Text" → URL}}

[Closing — warm, brief]

[Signature]
[Name, Role]
[Company]

---

**Metrics to Track:**
- Open rate target: >30%
- Click rate target: >5%
- Unsubscribe threshold: <0.5%
```

---

## 4. Subject Line Formulas

| Pattern | Example |
|---------|---------|
| **Question** | "Still struggling with [pain point]?" |
| **How-to** | "How to [achieve outcome] in [timeframe]" |
| **Number** | "[N] ways to [benefit]" |
| **Curiosity** | "The [counterintuitive thing] about [topic]" |
| **Personal** | "{{first_name}}, quick question" |
| **Urgency** | "Your [thing] expires in [time]" |
| **Social proof** | "How [Company] achieved [result]" |

**Rules:**
- Keep under 50 characters (mobile cutoff)
- Avoid spam triggers (FREE, URGENT, !!!, ALL CAPS)
- Always A/B test subject lines
- Preheader complements, doesn't repeat subject

---

## 5. Timing Best Practices

| Email Type | Best Days | Best Time |
|-----------|-----------|-----------|
| B2B | Tue-Thu | 8-10 AM |
| B2C | Any day | 10 AM or 8 PM |
| Transactional | Immediate | N/A |
| Newsletter | Consistent day | Consistent time |

---

## 6. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate email sequence documents |
| **Read** | Reference brand voice, personas |

---

## 7. Boundaries

**Will:**
- Design complete email sequences with copy and timing
- Include subject line A/B test variants
- Provide metric targets for each email
- Cover onboarding, nurture, win-back, upsell patterns

**Will Not:**
- Send emails or connect to ESPs (Mailchimp, SendGrid, etc.)
- Design HTML email templates (visual design)
- Build automation workflows in specific tools
- Guarantee deliverability or open rates
