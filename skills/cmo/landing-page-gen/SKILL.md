---
name: landing-page-gen
description: |
  Designs and generates conversion-optimized landing pages with Hero,
  benefits, social proof, CTA, and FAQ sections. Outputs HTML/React
  code with Tailwind CSS styling.
metadata:
  version: 1.0.0
  category: marketing
  domain: conversion
triggers:
  - "landing page"
  - "랜딩 페이지"
  - "launch page"
  - "product hunt"
  - "waitlist page"
---

# Landing Page Generator - Conversion-Optimized Pages

## Overview

Generates landing pages that convert visitors into users. Every section has a job — no decorative filler.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Product launch / Product Hunt | Full landing page generation |
| "landing page", "waitlist" | Interactive page builder |
| A/B test variant needed | Alternative section variants |

---

## 2. Landing Page Structure

### Must-Have Sections (in order)

```
1. Hero (Above the fold)
   ├── Headline (6-12 words, core benefit)
   ├── Subheadline (1-2 sentences, how)
   ├── CTA Button (action verb, specific)
   └── Social proof snippet (user count, logos, rating)

2. Problem Statement
   └── "You know this pain..." (empathy-driven)

3. Solution / How It Works
   ├── 3-step process or feature highlights
   └── Screenshot / Demo GIF

4. Benefits (not features)
   ├── Benefit 1 + icon
   ├── Benefit 2 + icon
   └── Benefit 3 + icon

5. Social Proof
   ├── Testimonials (with photo, name, title)
   ├── Customer logos
   └── Stats (users, uptime, satisfaction)

6. Pricing (if applicable)
   └── Simple tiers (Free / Pro / Enterprise)

7. FAQ
   └── 5-7 common objections answered

8. Final CTA
   ├── Repeat headline
   └── CTA button (same as hero)
```

---

## 3. Copywriting Formulas

### Hero Headline Patterns
```
- [Verb] [desired outcome] without [pain point]
  → "Ship features faster without breaking things"

- The [category] that [key differentiator]
  → "The analytics tool that respects user privacy"

- [Outcome] in [timeframe]
  → "Beautiful docs in 5 minutes"

- Stop [pain]. Start [gain].
  → "Stop guessing. Start knowing."
```

### CTA Button Patterns
```
✅ Good: "Start Free Trial" / "Get Started Free" / "Try It Now"
❌ Bad: "Submit" / "Click Here" / "Learn More"

Rule: [Action Verb] + [Value] + [Urgency hint]
→ "Start Building — Free Forever"
→ "Join 2,000+ Teams"
```

---

## 4. Technical Output

### React + Tailwind (default)
```tsx
export default function LandingPage() {
  return (
    <main className="min-h-screen">
      {/* Hero */}
      <section className="px-6 py-24 text-center">
        <h1 className="text-5xl font-bold tracking-tight">
          {headline}
        </h1>
        <p className="mt-6 text-xl text-gray-600 max-w-2xl mx-auto">
          {subheadline}
        </p>
        <a href="/signup" className="mt-8 inline-block px-8 py-4 bg-blue-600 text-white rounded-lg text-lg font-semibold hover:bg-blue-700">
          {cta}
        </a>
      </section>
      {/* ... more sections */}
    </main>
  )
}
```

### HTML (for static sites)
Static HTML with inline Tailwind classes, no build step required.

---

## 5. Conversion Checklist

```markdown
- [ ] Hero headline is benefit-focused (not feature-focused)
- [ ] CTA is above the fold
- [ ] Only ONE primary CTA per page (don't split attention)
- [ ] Social proof is visible early (above fold or just below)
- [ ] Page loads in < 3 seconds
- [ ] Mobile-responsive
- [ ] No navigation links that distract from CTA
- [ ] FAQ addresses top 3 objections
- [ ] Final CTA repeats at bottom
```

---

## 6. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate page code (React/HTML) |
| **Read** | Reference brand-voice, value-proposition |

---

## 7. Boundaries

**Will:**
- Generate complete landing page code (React/HTML + Tailwind)
- Apply conversion optimization best practices
- Include all essential sections with copy
- Provide mobile-responsive layouts
- Generate A/B test variants

**Will Not:**
- Design custom graphics or illustrations
- Set up hosting or deployment
- Create multi-page websites
- Implement payment processing
- Build complex interactive features
