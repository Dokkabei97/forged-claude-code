---
name: value-proposition
description: "Generates clear value proposition messages using Value Proposition Canvas, Jobs-to-be-Done, and positioning frameworks"
category: marketing
complexity: basic
mcp-servers: []
personas: []
---

# /value-proposition - Value Proposition Generator

## Triggers
- When defining or refining product messaging
- When pivoting and need to re-articulate value
- When preparing pitch deck, landing page, or marketing copy
- When answering "why should anyone use this?"

## Usage
```
/value-proposition [product description]
/value-proposition "AI-powered code review tool for small teams"
/value-proposition --canvas             # Full Value Proposition Canvas
/value-proposition --oneliner           # Just the one-liner
/value-proposition --compare [competitor] # Differentiated positioning
```

## Behavioral Flow

### Phase 1: Understand the Product
Gather or infer from context:

1. **What is it?** (1 sentence)
2. **Who is it for?** (specific target user)
3. **What problem does it solve?** (pain point)
4. **How does it solve it differently?** (differentiation)
5. **What's the key benefit?** (outcome, not feature)

### Phase 2: Jobs-to-be-Done Analysis

```markdown
## Customer Jobs

### Functional Jobs (what they're trying to do)
- [Job 1]: [description]
- [Job 2]: [description]

### Emotional Jobs (how they want to feel)
- [Job]: [e.g., Feel confident in code quality]

### Social Jobs (how they want to be perceived)
- [Job]: [e.g., Be seen as a modern engineering team]

## Pains (현재 겪는 고통)
| Pain | Severity (1-5) | Current Workaround |
|------|----------------|-------------------|
| [Pain 1] | [N] | [How they cope today] |
| [Pain 2] | [N] | [How they cope today] |

## Gains (원하는 결과)
| Gain | Importance (1-5) | How Product Delivers |
|------|-------------------|---------------------|
| [Gain 1] | [N] | [Product capability] |
| [Gain 2] | [N] | [Product capability] |
```

### Phase 3: Generate Value Propositions

**Formula Templates:**

1. **Classic Format:**
> For [target customer] who [statement of need/opportunity],
> [product name] is a [product category]
> that [key benefit].
> Unlike [competitor/alternative],
> our product [primary differentiator].

2. **Before/After/Bridge:**
> **Before**: [Customer's current painful situation]
> **After**: [Customer's desired improved situation]
> **Bridge**: [How your product gets them there]

3. **One-Liner (Elevator Pitch):**
> We help [target users] [achieve outcome] by [unique mechanism],
> so they can [ultimate benefit].

4. **Homepage Hero:**
> **Headline**: [Core benefit in 6-10 words]
> **Subheadline**: [How you deliver it in 15-20 words]
> **CTA**: [Action button text]

5. **Feature-Benefit Matrix:**
| Feature | Benefit | So What? (Why They Care) |
|---------|---------|--------------------------|
| [Feature 1] | [Direct benefit] | [Emotional/business impact] |
| [Feature 2] | [Direct benefit] | [Emotional/business impact] |

### Phase 4: Positioning Against Alternatives

```markdown
## Competitive Positioning Map

### Category Definition
[Your product] is a [new category name / existing category] that [redefines/improves] [what].

### Positioning Statement
For [target segment],
[Product] is the only [category]
that [unique claim]
because [proof point].

### Differentiation Matrix
| Dimension | Us | Alternative A | Alternative B | DIY |
|-----------|-----|--------------|---------------|-----|
| [Dimension 1] | ✅ | ❌ | ⚠️ | ❌ |
| [Dimension 2] | ✅ | ✅ | ❌ | ⚠️ |
| [Dimension 3] | ✅ | ❌ | ❌ | ❌ |
| Price | $$  | $$$| $  | Free |

### Why Not [Alternative]?
- [Alternative A]: [Specific weakness for target segment]
- [Alternative B]: [Specific weakness for target segment]
- [DIY]: [Why building your own doesn't work]
```

### Phase 5: Output Compilation

```markdown
# Value Proposition: [Product Name]

## One-Liner
> [Elevator pitch]

## Full Value Proposition
> [Classic format]

## Homepage Copy
- **Hero Headline**: [headline]
- **Subheadline**: [subheadline]
- **CTA**: [button text]

## Key Messages (use across all channels)
1. [Core message 1 — about the problem]
2. [Core message 2 — about the solution]
3. [Core message 3 — about the proof/trust]

## Proof Points
- [Statistic, case study, or social proof]
- [Statistic, case study, or social proof]

## Messaging Don'ts
- Don't say "[jargon]" → Say "[plain language]" instead
- Don't lead with features → Lead with outcomes
- Don't say "we" too much → Focus on "you" (the customer)
```

## Tool Coordination
- **Write**: Generate value proposition document
- **Read**: Reference existing product docs, PRDs
- **WebSearch**: Research competitor messaging
- **Grep**: Search codebase for product descriptions

## Examples

### Generate Full Value Proposition
```
/value-proposition "Automated inventory management for small e-commerce businesses"

→ One-Liner: We help small e-commerce sellers eliminate stockouts and overstock
  by automating inventory predictions, so they never lose a sale or waste money
  on unsold products.
→ [Full canvas, positioning, copy generated]
```

### Quick One-Liner Only
```
/value-proposition --oneliner "AI meeting summarizer for remote teams"

→ "Never miss a meeting takeaway again — AI that turns your calls into
  clear action items in seconds, so your team stays aligned without
  watching recordings."
```

## Boundaries

**Will:**
- Generate multiple value proposition formats (canvas, one-liner, hero copy)
- Analyze customer jobs, pains, and gains
- Position against competitors and alternatives
- Provide ready-to-use copy for landing pages and pitch decks

**Will Not:**
- Validate the value proposition with real customers (that's your job)
- Guarantee market success
- Design visual assets or landing page layouts
- Replace customer discovery conversations
