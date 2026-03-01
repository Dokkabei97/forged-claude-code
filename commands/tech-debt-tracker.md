---
name: tech-debt-tracker
description: "Scans codebase for technical debt indicators (TODO/FIXME, high complexity, duplication, outdated deps) and generates prioritized reports"
category: development
complexity: basic
mcp-servers: []
personas: []
---

# /tech-debt-tracker - Technical Debt Scanner

## Triggers
- Periodic codebase health check
- Before sprint planning to assess debt paydown
- After rapid development phase to understand accumulated debt

## Usage
```
/tech-debt-tracker
/tech-debt-tracker --path src/
/tech-debt-tracker --severity high
```

## Behavioral Flow

### Phase 1: Scan Codebase
```
Grep: "TODO|FIXME|HACK|WORKAROUND|XXX|TEMP" → Code markers
Grep: "eslint-disable|noqa|noinspection|@suppress" → Suppressed warnings
Grep: "any" in TypeScript files → Type safety gaps
Glob: package.json, requirements.txt → Check dependency age
```

### Phase 2: Categorize Debt

| Category | Detection Method |
|----------|-----------------|
| **Code Markers** | TODO/FIXME/HACK comments |
| **Suppressed Warnings** | eslint-disable, noqa, etc. |
| **Type Safety** | `any` types, missing types |
| **Outdated Deps** | `npm outdated` / `pip list --outdated` |
| **Dead Code** | Unused exports, unreachable code |
| **Duplication** | Similar code blocks |
| **Complexity** | Functions > 50 lines, deep nesting |

### Phase 3: Generate Report

```markdown
# Tech Debt Report — YYYY-MM-DD

## Summary
| Category | Count | Severity |
|----------|-------|----------|
| Code Markers | [N] | 🟡 |
| Suppressed Warnings | [N] | 🟠 |
| Outdated Dependencies | [N] | 🟠 |
| Type Safety Gaps | [N] | 🟡 |
| **Total Items** | **[N]** | |

## High Priority (Fix This Sprint)
| # | File | Issue | Category |
|---|------|-------|----------|
| 1 | `path:line` | [Description] | [Category] |

## Medium Priority (Fix This Month)
...

## Low Priority (Backlog)
...

## Trend
[Compared to last scan: improving / stable / worsening]

## Recommended Actions
1. [Most impactful debt to pay down]
2. [Second priority]
```

## Tool Coordination
- **Grep**: Search for debt markers and patterns
- **Glob**: Find files to scan
- **Bash**: Run `npm outdated`, `pip list --outdated`
- **Write**: Generate report

## Boundaries

**Will:**
- Scan for common technical debt indicators
- Categorize and prioritize findings
- Track debt trends over time
- Suggest which debt to pay down first

**Will Not:**
- Fix the debt automatically
- Measure code coverage (use test-generator)
- Perform architecture review (use arch-reviewer)
- Judge product decisions as "debt"
