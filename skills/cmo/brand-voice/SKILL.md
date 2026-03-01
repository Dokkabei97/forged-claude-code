---
name: brand-voice
description: |
  Defines and enforces brand voice guidelines for startups. Creates tone, style,
  messaging frameworks and provides consistency checks across all content.
  Ensures every piece of communication sounds like it comes from the same brand.
metadata:
  version: 1.0.0
  category: marketing
  domain: branding
triggers:
  - "brand voice"
  - "tone of voice"
  - "brand guidelines"
  - "writing style"
  - "brand identity"
---

# Brand Voice - Brand Voice & Messaging Guidelines

## Overview

Establishes a consistent brand voice that scales across team members, channels, and content types. Your brand voice is how customers recognize you — even without seeing your logo.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| New brand / rebrand | Full voice definition workflow |
| "brand voice", "tone guide" | Interactive brand voice builder |
| Content review request | Voice consistency check |
| New team member writing content | Brand voice onboarding |

---

## 2. Brand Voice Definition Framework

### Step 1: Brand Personality
Choose 3-5 adjectives that define your brand personality:

**Personality Spectrum:**
```
Formal ←————————→ Casual
Serious ←————————→ Playful
Reserved ←————————→ Bold
Complex ←————————→ Simple
Traditional ←————————→ Innovative
```

**Output:**
```markdown
## Brand Personality
Our brand is: **[Adj 1]**, **[Adj 2]**, **[Adj 3]**
We are NOT: **[Anti-adj 1]**, **[Anti-adj 2]**, **[Anti-adj 3]**
```

### Step 2: Voice Attributes
For each personality trait, define how it manifests in writing:

```markdown
## Voice Attributes

### [Attribute 1, e.g., "Confident"]
- **Do**: State things clearly. Use active voice. Make bold claims backed by data.
- **Don't**: Hedge with "maybe", "possibly", "we think". Use passive voice.
- **Example ✅**: "Our engine processes 10M events per second."
- **Example ❌**: "We believe our engine might be able to handle quite a lot of events."

### [Attribute 2, e.g., "Friendly"]
- **Do**: Use conversational language. Address reader as "you". Use contractions.
- **Don't**: Use jargon without explanation. Sound like a legal document.
- **Example ✅**: "You'll be up and running in 5 minutes."
- **Example ❌**: "The platform initialization process requires approximately 300 seconds."

### [Attribute 3, e.g., "Clear"]
- **Do**: Short sentences. One idea per paragraph. Plain language.
- **Don't**: Nest multiple clauses. Use acronyms without definition.
- **Example ✅**: "Connect your data. Get insights. Ship faster."
- **Example ❌**: "By leveraging our synergistic data integration capabilities..."
```

### Step 3: Tone Variations by Context

```markdown
## Tone Variations

| Context | Tone Adjustment | Example |
|---------|----------------|---------|
| **Marketing** | Enthusiastic, aspirational | "Build the future of [X]" |
| **Product UI** | Helpful, concise | "Your file has been saved" |
| **Error messages** | Empathetic, solution-focused | "Something went wrong. Try refreshing, or contact us." |
| **Documentation** | Clear, instructional | "Step 1: Install the package" |
| **Social media** | Conversational, witty | "Your CI pipeline called. It wants attention." |
| **Customer support** | Warm, patient | "I understand the frustration. Let's fix this together." |
| **Investor comms** | Professional, data-driven | "MRR grew 40% MoM to $120K" |
| **Internal** | Direct, transparent | "We missed our target. Here's why and what we're doing." |
```

### Step 4: Messaging Framework

```markdown
## Core Messages

### Tagline
> [5-8 words that capture brand essence]

### Mission Statement
> We [action] for [audience] by [method], so that [outcome].

### Elevator Pitch (30 seconds)
> [Problem]. [Solution]. [Differentiator]. [Proof point].

### Boilerplate (for press releases, about pages)
> [Company name] is a [category] that helps [target users] [achieve outcome].
> Founded in [year], the company [key achievement or traction].
> [Company name] is backed by [investors] and serves [customer count/type].

## Key Messages by Audience

### For Users
- Pain: [Their biggest frustration]
- Promise: [What we deliver]
- Proof: [Why they should believe us]

### For Investors
- Market: [Size and opportunity]
- Traction: [Key metrics]
- Moat: [Competitive advantage]

### For Partners
- Value: [What we bring to the partnership]
- Reach: [Our audience/distribution]
```

---

## 3. Voice Consistency Checklist

When reviewing content for voice consistency:

```markdown
## Voice Check
- [ ] Does it sound like us? (matches personality attributes)
- [ ] Would a competitor say the exact same thing? (if yes, too generic)
- [ ] Is the tone appropriate for the context? (marketing vs support vs docs)
- [ ] Are we talking about the customer, not ourselves? ("you" > "we")
- [ ] Is it free of banned words/phrases?
- [ ] Would a new team member understand it without context?
```

---

## 4. Word List

```markdown
## Preferred Language

### Use → Instead Of
| Use ✅ | Instead Of ❌ | Why |
|--------|-------------|-----|
| Simple | Easy | "Easy" can feel dismissive |
| Help | Enable/Empower | More direct |
| Build | Leverage/Utilize | Less corporate |
| Fast | Performant | More human |
| Team | Organization | More personal |

### Banned Words
- "Synergy", "Leverage", "Utilize" (corporate speak)
- "Disruptive", "Revolutionary" (overused startup clichés)
- "Best-in-class", "World-class" (empty superlatives)
- "Simply", "Just" (can feel dismissive of complexity)
```

---

## 5. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate brand voice document |
| **Read** | Review content for voice consistency |
| **Grep** | Search for banned words in content |

---

## 6. Boundaries

**Will:**
- Define brand personality, voice attributes, and tone variations
- Create messaging frameworks (tagline, elevator pitch, boilerplate)
- Provide word lists (preferred language, banned words)
- Check content for voice consistency

**Will Not:**
- Design visual brand identity (logo, colors, typography)
- Create full marketing campaigns
- Replace professional brand strategists for major rebrands
- Generate content in place of content-writer agent
