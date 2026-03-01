---
name: decision-log
description: "Records key decisions in ADR (Architecture/Any Decision Record) style with context, options, rationale, and consequences"
category: operations
complexity: basic
mcp-servers: []
personas: []
---

# /decision-log - Decision Record Generator

## Triggers
- When a significant decision is made (technical, product, business)
- When someone asks "why did we decide to..."
- When documenting the rationale behind a choice for future reference

## Usage
```
/decision-log [decision title]
/decision-log "Use Supabase instead of Firebase"
/decision-log --list                    # Show all recorded decisions
/decision-log --review [ID]            # Review a past decision
```

## Behavioral Flow

### Phase 1: Determine Decision Context
Identify what type of decision is being recorded:

| Category | Examples |
|----------|---------|
| **Technical** | Stack choice, architecture pattern, library selection |
| **Product** | Feature priority, UX approach, pricing model |
| **Business** | Hiring, partnership, market focus |
| **Process** | Workflow change, tool adoption, meeting cadence |

### Phase 2: Gather Decision Details
Prompt for or extract from conversation:

1. **Title**: One-line summary of the decision
2. **Context**: What problem or situation prompted this decision?
3. **Options Considered**: What alternatives were evaluated?
4. **Decision**: What was chosen?
5. **Rationale**: Why was this option selected?
6. **Consequences**: What are the expected outcomes and trade-offs?

### Phase 3: Generate Decision Record

```markdown
# DR-[NNNN]: [Decision Title]

| Field | Value |
|-------|-------|
| **Date** | YYYY-MM-DD |
| **Status** | Proposed / Accepted / Deprecated / Superseded |
| **Category** | Technical / Product / Business / Process |
| **Deciders** | [Names/Roles] |
| **Supersedes** | DR-[NNNN] (if applicable) |

## Context
[2-3 sentences describing the situation, problem, or opportunity that
prompted this decision. Include constraints and requirements.]

## Options Considered

### Option A: [Name]
- **Pros**: [advantages]
- **Cons**: [disadvantages]
- **Cost/Effort**: [estimate]

### Option B: [Name]
- **Pros**: [advantages]
- **Cons**: [disadvantages]
- **Cost/Effort**: [estimate]

### Option C: [Name] (if applicable)
- **Pros**: [advantages]
- **Cons**: [disadvantages]
- **Cost/Effort**: [estimate]

## Decision
**We chose Option [X]: [Name].**

## Rationale
[Why this option was selected over others. Be specific about the
deciding factors and how they mapped to our current constraints.]

## Consequences

### Positive
- [Expected benefit 1]
- [Expected benefit 2]

### Negative / Trade-offs
- [Accepted trade-off 1]
- [Accepted trade-off 2]

### Risks
- [Risk 1] — Mitigation: [plan]

## Review Date
[When should this decision be revisited? e.g., "After reaching 10K users"
or "Q3 2026" or "When [condition] changes"]
```

### Phase 4: File Management

**Storage location:**
```
decisions/
├── DR-0001-use-supabase.md
├── DR-0002-pricing-freemium.md
├── DR-0003-hire-first-engineer.md
└── index.md                          # Decision log index
```

**Index format:**
```markdown
# Decision Log

| ID | Date | Category | Title | Status |
|----|------|----------|-------|--------|
| DR-0001 | 2026-01-15 | Technical | Use Supabase instead of Firebase | Accepted |
| DR-0002 | 2026-02-01 | Business | Freemium pricing model | Accepted |
| DR-0003 | 2026-02-15 | Business | Hire first engineer | Accepted |
```

## Tool Coordination
- **Write**: Generate decision record files
- **Read**: Read existing decisions for reference or review
- **Glob**: Find existing decision records (`decisions/DR-*.md`)
- **Grep**: Search decisions by keyword

## Examples

### Record a Technical Decision
```
/decision-log "Use PostgreSQL with Prisma ORM"

→ Generates DR-0004-use-postgresql-prisma.md with:
  - Context: Need a database for user data and product catalog
  - Options: PostgreSQL+Prisma vs MongoDB+Mongoose vs Supabase
  - Decision: PostgreSQL+Prisma
  - Rationale: Type safety, migration tooling, team familiarity
```

### List All Decisions
```
/decision-log --list

→ Decision Log (4 records):
  DR-0001 [Tech]    Use Supabase instead of Firebase     Accepted
  DR-0002 [Biz]     Freemium pricing model               Accepted
  DR-0003 [Biz]     Hire first engineer                   Accepted
  DR-0004 [Tech]    Use PostgreSQL with Prisma ORM        Proposed
```

### Review a Past Decision
```
/decision-log --review DR-0001

→ Displays the full decision record
→ Asks: "Has anything changed since this decision? Should we revisit?"
```

## Boundaries

**Will:**
- Generate structured decision records with context and rationale
- Maintain a searchable decision log index
- Support reviewing and superseding past decisions
- Auto-increment decision IDs

**Will Not:**
- Make decisions for you (only record them)
- Enforce decisions on the team
- Track decision implementation progress (use project management tools)
- Delete past decisions (mark as superseded instead)
