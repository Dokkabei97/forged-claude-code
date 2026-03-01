---
name: feature-prioritizer
description: "Prioritizes features using RICE, ICE, MoSCoW, and weighted scoring frameworks with visual output"
category: product
complexity: basic
mcp-servers: []
personas: []
---

# /feature-prioritizer - Feature Priority Calculator

## Triggers
- When deciding what to build next from a backlog
- When stakeholders disagree on priorities
- When resources are limited and trade-offs are needed

## Usage
```
/feature-prioritizer [feature list or file path]
/feature-prioritizer --framework rice    # Use RICE scoring
/feature-prioritizer --framework ice     # Use ICE scoring
/feature-prioritizer --framework moscow  # Use MoSCoW classification
```

## Behavioral Flow

### Phase 1: Input Collection
Accept feature list as text or from file:
```
Features can be provided as:
- Inline text (one feature per line)
- Markdown file with feature descriptions
- Backlog file reference
```

### Phase 2: Framework Selection
If not specified, recommend based on context:

| Framework | Best For | Input Needed |
|-----------|----------|-------------|
| **RICE** | Data-driven teams, quantitative | Reach, Impact, Confidence, Effort |
| **ICE** | Quick prioritization, early stage | Impact, Confidence, Ease |
| **MoSCoW** | Scope definition, stakeholder alignment | Categorization |
| **Weighted** | Custom criteria, multi-stakeholder | Custom weights |

### Phase 3: Scoring

**RICE Scoring:**
```
RICE Score = (Reach × Impact × Confidence) / Effort

- Reach: How many users affected per quarter (number)
- Impact: How much impact per user (0.25/0.5/1/2/3)
- Confidence: How sure are we (100%/80%/50%)
- Effort: Person-months of work (number)
```

**ICE Scoring:**
```
ICE Score = Impact × Confidence × Ease (each 1-10)
```

### Phase 4: Output

```markdown
# Feature Prioritization — [Framework]
**Date**: YYYY-MM-DD

## Ranked Features

| Rank | Feature | Score | R | I | C | E | Recommendation |
|------|---------|-------|---|---|---|---|----------------|
| 1 | [Feature] | [N] | [N] | [N] | [N] | [N] | 🟢 Build Now |
| 2 | [Feature] | [N] | [N] | [N] | [N] | [N] | 🟢 Build Now |
| 3 | [Feature] | [N] | [N] | [N] | [N] | [N] | 🟡 Build Next |
| 4 | [Feature] | [N] | [N] | [N] | [N] | [N] | 🔴 Defer |

## Priority Tiers
### 🟢 Build Now (This Sprint/Month)
1. [Feature] — Score: [N] — [1-line why]

### 🟡 Build Next (Next Sprint/Month)
2. [Feature] — Score: [N] — [1-line why]

### 🔴 Defer (Backlog)
3. [Feature] — Score: [N] — [1-line why]

## Key Insights
- Highest ROI: [Feature] (high impact, low effort)
- Quick Win: [Feature] (moderate impact, very low effort)
- Big Bet: [Feature] (high impact, high effort)
- Reconsider: [Feature] (low impact, high effort)
```

## Tool Coordination
- **Read**: Read feature list from file
- **Write**: Generate prioritization report

## Examples

### RICE Prioritization
```
/feature-prioritizer --framework rice
Features:
- User search with filters
- Email notification system
- Dark mode
- API rate limiting
- Onboarding tutorial

→ Scores each feature, ranks by RICE score, recommends build order
```

## Boundaries

**Will:**
- Score features using RICE, ICE, MoSCoW, or weighted frameworks
- Provide ranked output with tier recommendations
- Identify quick wins and high-ROI features
- Generate shareable prioritization reports

**Will Not:**
- Make the final priority decision (provides data, you decide)
- Estimate effort in absolute terms (relative scoring only)
- Replace stakeholder discussions with a formula
- Account for strategic considerations beyond the framework
