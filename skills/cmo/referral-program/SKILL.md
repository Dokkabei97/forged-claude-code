---
name: referral-program
description: |
  Designs referral and viral growth programs. Covers incentive structures,
  sharing mechanics, tracking methods, and reward systems to reduce CAC
  through word-of-mouth growth.
metadata:
  version: 1.0.0
  category: marketing
  domain: growth
triggers:
  - "referral"
  - "refer a friend"
  - "viral"
  - "invite program"
  - "레퍼럴"
---

# Referral Program - Viral Growth Design

## Overview

Designs referral programs that turn users into your best sales channel. Dropbox grew 3900% with referrals. The best growth is growth that pays for itself.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Reducing CAC | Referral program design |
| "referral", "레퍼럴" | Full program setup guide |
| Users already sharing organically | Amplify existing behavior |

---

## 2. Referral Program Types

| Type | Mechanism | Best For | Example |
|------|-----------|----------|---------|
| **Double-sided** | Both referrer and referee get reward | SaaS, marketplace | Dropbox, Airbnb |
| **One-sided (referrer)** | Only referrer gets reward | Low-friction products | Cash referral bonus |
| **One-sided (referee)** | Only new user gets benefit | Trial/freemium | "Get 1 month free" |
| **Tiered** | Rewards increase with more referrals | Power users | Ambassador programs |
| **Milestone** | Reward at specific referral counts | Viral products | "Invite 5 → unlock feature" |

---

## 3. Program Design Template

```markdown
# Referral Program: [Product Name]

## Incentive Structure
| Role | Reward | Trigger |
|------|--------|---------|
| Referrer | [e.g., 1 month free] | When referee [signs up / pays / activates] |
| Referee | [e.g., 20% off first month] | On signup via referral link |

## Sharing Mechanics
- **Unique referral link**: [user].product.com/ref/[code]
- **Share channels**: Copy link, Email, Twitter, WhatsApp
- **In-app placement**: Settings → "Invite Friends" + post-value moment

## Tracking
- Referral code in URL → cookie → attribution on signup
- Dashboard: referrals sent, signed up, converted, rewards earned

## Reward Fulfillment
- Automatic credit/discount application
- Email notification on successful referral
- Leaderboard for top referrers (optional)

## Anti-Fraud Rules
- Max [N] referrals per user per month
- Self-referral detection (same IP, email domain)
- Minimum activity threshold before reward unlock
```

---

## 4. When to Launch Referrals

**Prerequisites (don't launch without these):**
- [ ] Product delivers value (NPS > 30)
- [ ] Users are already sharing organically (even a few)
- [ ] Retention is healthy (Week 4 > 20%)
- [ ] Referral can be tracked technically
- [ ] Reward economics work (reward cost < CAC savings)

---

## 5. Viral Coefficient

```
K = invites per user × conversion rate of invites

K > 1.0 → Viral growth (each user brings >1 new user)
K = 0.5 → Amplified growth (50% boost to other channels)
K = 0.1 → Minimal viral effect (optimize or rethink)

Example:
  Average invites per user: 3
  Invite conversion rate: 20%
  K = 3 × 0.20 = 0.6 (good amplifier)
```

---

## 6. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate program design docs |
| **Read** | Reference product metrics, NPS data |

---

## 7. Boundaries

**Will:**
- Design referral program incentives and mechanics
- Provide anti-fraud guidelines
- Calculate viral coefficient
- Recommend timing for launch

**Will Not:**
- Implement referral tracking code
- Process rewards or payments
- Manage referral fraud detection in production
- Guarantee viral growth
