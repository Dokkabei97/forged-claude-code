---
name: user-story-gen
description: "Generates INVEST-compliant user stories with acceptance criteria from PRD or feature descriptions"
category: product
complexity: basic
mcp-servers: []
personas: []
---

# /user-story-gen - User Story Generator

## Triggers
- When a PRD or feature description needs to be broken into implementable stories
- When planning sprint backlog items
- When acceptance criteria need to be formalized

## Usage
```
/user-story-gen [feature description or PRD path]
/user-story-gen --from prd.md
/user-story-gen "Users can upload profile photos"
```

## Behavioral Flow

### Phase 1: Input Analysis
Analyze the input to understand the feature scope.

**If file path provided:**
```
Read the PRD/spec file
Extract: Problem statement, scope items, user flows
```

**If text description provided:**
```
Parse the feature description
Identify: User types, actions, goals
```

### Phase 2: Identify User Types
Extract all distinct user types/personas from the input:
```
- Primary user (the main beneficiary)
- Secondary users (admin, support, etc.)
- System actors (scheduled jobs, webhooks, etc.)
```

### Phase 3: Generate User Stories

For each scope item, generate stories following INVEST principles:

| Principle | Check |
|-----------|-------|
| **I**ndependent | Can be developed without other stories |
| **N**egotiable | Not a contract, details can change |
| **V**aluable | Delivers value to user or business |
| **E**stimable | Team can estimate effort |
| **S**mall | Fits in one sprint (ideally 1-3 days) |
| **T**estable | Clear pass/fail criteria |

**Story Format:**
```markdown
### [STORY-ID] [Short Title]

> As a **[user type]**,
> I want to **[action/capability]**,
> so that **[benefit/value]**.

**Acceptance Criteria:**
- [ ] Given [precondition], when [action], then [expected result]
- [ ] Given [precondition], when [action], then [expected result]
- [ ] Given [edge case], when [action], then [expected result]

**Notes:**
- [Implementation hints or constraints]
- [Dependencies on other stories]

**Size:** S / M / L
**Priority:** P0 (must) / P1 (should) / P2 (could)
```

### Phase 4: Story Splitting
If a story is too large (estimated > 3 days), split it using these patterns:

| Pattern | Example |
|---------|---------|
| **By workflow step** | Create → Read → Update → Delete |
| **By user type** | Admin view vs User view |
| **By data variation** | Text input → File upload → Rich media |
| **By platform** | Web → Mobile → API |
| **By business rule** | Happy path → Error handling → Edge cases |
| **By operation** | Basic CRUD → Search/Filter → Bulk operations |

### Phase 5: Output Generation
Generate the complete story set:

```markdown
# User Stories: [Feature Name]

> Generated from: [source]
> Date: [YYYY-MM-DD]
> Total stories: [N] (P0: [n], P1: [n], P2: [n])
> Estimated total effort: [S/M/L]

---

## Epic: [Feature Name]

### P0 — Must Have
[stories...]

### P1 — Should Have
[stories...]

### P2 — Could Have
[stories...]

---

## Dependency Map
- STORY-1 → STORY-3 (STORY-1 must be done first)
- STORY-2 ↔ STORY-4 (can be parallel)

## Open Questions
- [ ] [Question that affects story details]
```

## Tool Coordination
- **Read**: Read PRD/spec files
- **Write**: Generate user story document
- **Grep**: Search for related existing features in codebase

## Examples

### From Text Description
```
/user-story-gen "Users can create and manage their team workspaces"

Output:
### WS-001 Create Workspace
> As a **registered user**, I want to **create a new workspace**,
> so that **my team has a dedicated space to collaborate**.

Acceptance Criteria:
- [ ] Given I'm logged in, when I click "New Workspace", then I see a creation form
- [ ] Given I submit the form with a valid name, when I click "Create", then the workspace is created
- [ ] Given a workspace name already exists, when I submit, then I see an error message

### WS-002 Invite Team Members
...
```

### From PRD File
```
/user-story-gen --from docs/prd-payments.md

# Reads PRD, extracts scope items, generates stories for each
```

## Boundaries

**Will:**
- Generate INVEST-compliant user stories with clear acceptance criteria
- Split large stories into smaller, independent pieces
- Identify dependencies between stories
- Prioritize stories (P0/P1/P2)

**Will Not:**
- Estimate story points (team-specific velocity needed)
- Assign stories to individuals
- Generate technical implementation details
- Create stories for features explicitly marked "out of scope" in PRD
