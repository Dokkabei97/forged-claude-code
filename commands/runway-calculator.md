---
name: runway-calculator
description: "Calculates startup runway from cash, burn rate, and revenue projections with scenario analysis"
category: operations
complexity: basic
mcp-servers: []
personas: []
---

# /runway-calculator - Startup Runway Calculator

## Triggers
- When assessing how long the company can survive
- Before fundraising to understand urgency
- When making budget decisions (hire vs defer)
- Monthly financial health check

## Usage
```
/runway-calculator
/runway-calculator --cash 500000 --burn 50000 --revenue 10000
/runway-calculator --scenario                  # Multi-scenario analysis
```

## Behavioral Flow

### Phase 1: Input Collection
Gather financial data (prompt user or accept parameters):

```
Required:
  - Cash on hand: $[amount]
  - Monthly burn rate: $[amount] (total expenses)
  - Monthly revenue: $[amount] (if any)

Optional:
  - Revenue growth rate: [%] per month
  - Expected funding: $[amount] in [N] months
  - Planned hires: [N] people × $[cost] starting [month]
```

### Phase 2: Calculate Base Runway

```
Net Burn = Monthly Burn - Monthly Revenue
Runway (months) = Cash / Net Burn

Example:
  Cash: $500,000
  Burn: $50,000/month
  Revenue: $10,000/month
  Net Burn: $40,000/month
  Runway: 12.5 months
```

### Phase 3: Scenario Analysis

```markdown
# Runway Analysis — YYYY-MM-DD

## Current Position
| Metric | Value |
|--------|-------|
| Cash on Hand | $[N] |
| Monthly Burn | $[N] |
| Monthly Revenue | $[N] |
| Net Burn | $[N] |
| **Runway** | **[N] months ([date])** |

## Scenario Comparison

| Scenario | Runway | Cash-Out Date | Key Assumption |
|----------|--------|---------------|----------------|
| 🟢 **Optimistic** | [N] mo | [date] | Revenue grows [X]% MoM |
| 🟡 **Base Case** | [N] mo | [date] | Current trajectory |
| 🔴 **Pessimistic** | [N] mo | [date] | Revenue drops [X]%, burn +[Y]% |
| 💀 **Zero Revenue** | [N] mo | [date] | All revenue stops |

## Monthly Projection

| Month | Revenue | Burn | Net Burn | Cash Balance |
|-------|---------|------|----------|--------------|
| [M1] | $[N] | $[N] | $[N] | $[N] |
| [M2] | $[N] | $[N] | $[N] | $[N] |
| ... | ... | ... | ... | ... |
| [MN] | $[N] | $[N] | $[N] | $0 ← ⚠️ |

## Decision Framework

### If Runway < 6 months:
🔴 **URGENT** — Start fundraising NOW or cut costs
- Fundraising typically takes 3-6 months
- Options: raise, cut burn, accelerate revenue

### If Runway 6-12 months:
🟡 **PLAN** — Begin fundraising prep
- Build investor pipeline
- Hit key milestones for better valuation
- Consider bridge round if needed

### If Runway > 12 months:
🟢 **COMFORTABLE** — Focus on growth
- Invest in growth initiatives
- Don't get complacent (burn discipline)

## Cost Reduction Levers
| Action | Monthly Savings | Impact |
|--------|----------------|--------|
| [e.g., Defer hire #3] | $[N] | +[N] months runway |
| [e.g., Switch to cheaper cloud] | $[N] | +[N] months runway |
| [e.g., Reduce marketing spend] | $[N] | +[N] months runway |
```

## Tool Coordination
- **Write**: Generate runway report

## Examples

### Basic Calculation
```
/runway-calculator --cash 300000 --burn 30000 --revenue 5000

→ Net Burn: $25,000/month
  Runway: 12.0 months (March 2027)
  Status: 🟢 Comfortable
```

### Scenario Analysis
```
/runway-calculator --scenario

→ Prompts for cash, burn, revenue, growth rate
→ Generates 4-scenario comparison
→ Monthly projection table
→ Decision framework recommendation
```

## Boundaries

**Will:**
- Calculate runway from financial inputs
- Generate multi-scenario projections
- Provide decision framework based on runway length
- Suggest cost reduction levers

**Will Not:**
- Access real bank accounts or financial systems
- Provide investment advice
- Guarantee projection accuracy (garbage in, garbage out)
- Replace a CFO or financial advisor
