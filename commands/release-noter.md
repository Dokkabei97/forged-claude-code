---
name: release-noter
description: "Generates user-friendly release notes from git commits and PRs with audience-specific tone adjustment (users, team, investors)"
category: product
complexity: basic
mcp-servers: []
personas: []
---

# /release-noter - Release Notes Generator

## Triggers
- After merging a release branch
- Before publishing a product update
- For investor/board update communications

## Usage
```
/release-noter
/release-noter --since v1.2.0
/release-noter --since 2026-02-01
/release-noter --audience users      # Customer-facing
/release-noter --audience internal    # Team-facing
/release-noter --audience investors   # Business-focused
```

## Behavioral Flow

### Phase 1: Collect Changes
```bash
git log --oneline --since="[date]" --no-merges
git log --oneline v1.2.0..HEAD --no-merges
```

### Phase 2: Categorize Changes

| Category | Icon | Git Patterns |
|----------|------|-------------|
| New Features | ✨ | feat:, add:, new: |
| Improvements | 🔧 | improve:, enhance:, update: |
| Bug Fixes | 🐛 | fix:, bugfix:, patch: |
| Performance | ⚡ | perf:, optimize: |
| Security | 🔒 | security:, vuln: |
| Breaking Changes | ⚠️ | BREAKING:, breaking: |

### Phase 3: Generate by Audience

**For Users (customer-facing):**
```markdown
# What's New in v1.3.0

## ✨ New Features
- **[Feature Name]**: [Benefit-focused description in plain language]
- **[Feature Name]**: [What users can now do]

## 🔧 Improvements
- [Improvement in user-friendly terms]

## 🐛 Bug Fixes
- Fixed an issue where [user-visible problem]

## ⚠️ Breaking Changes
- [What changed and what users need to do]
```

**For Internal Team:**
```markdown
# Release v1.3.0 — YYYY-MM-DD

## Summary
[N] features, [N] improvements, [N] bug fixes

## Changes
| Type | Description | PR | Author |
|------|------------|-----|--------|
| feat | [Technical description] | #123 | @dev |

## Migration Notes
- [Database changes]
- [Config changes]
- [Dependency updates]
```

**For Investors:**
```markdown
# Product Update — [Month Year]

## Key Highlights
- Shipped [N] features that [business impact]
- [Metric] improved by [X]%
- [Customer/user milestone]

## What We Built
1. **[Feature]** — [Business value, not technical detail]

## What's Next
- [Upcoming priority with business rationale]
```

## Tool Coordination
- **Bash**: Git log, git diff --stat
- **Read**: PR descriptions for context
- **Write**: Generate release notes document

## Boundaries

**Will:**
- Parse git history and categorize changes
- Generate audience-appropriate release notes
- Translate technical changes to user-friendly language
- Support multiple output formats

**Will Not:**
- Publish release notes to any platform
- Create git tags or GitHub releases
- Notify users of updates
- Write marketing copy beyond release notes
