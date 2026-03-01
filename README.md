# forged-claude-code ⚒️

**Claude Code plugin collection for founding and running startups.**

While [hardened-claude-code](https://github.com/Dokkabei97/hardened-claude-code) is a shield for enterprise-scale systems, **forged-claude-code** is a sword — tools forged for building from zero to one.

---

## What Is This?

A curated set of **agents, skills, commands, and hooks** for [Claude Code](https://docs.anthropic.com/en/docs/claude-code) that covers the entire startup lifecycle: from incorporation to fundraising, from MVP to growth, from hiring to operations.

```
53 plugins across 4 C-level domains
├── 9 Agents    — autonomous analysis & review
├── 29 Skills   — knowledge & templates
├── 14 Commands — action-oriented workflows
└── 1 Hook      — automated safeguards
```

## Quick Start

```bash
# Clone the repository
git clone https://github.com/Dokkabei97/forged-claude-code.git

# Copy plugins to your project's .claude directory
cp -r forged-claude-code/agents/ your-project/.claude/agents/
cp -r forged-claude-code/skills/ your-project/.claude/skills/
cp -r forged-claude-code/commands/ your-project/.claude/commands/

# Or symlink for easier updates
ln -s $(pwd)/forged-claude-code/agents/ your-project/.claude/agents
```

## Plugin Map

### CTO — Technology & Infrastructure (14 plugins)

| Plugin | Type | Phase | Description |
|--------|------|-------|-------------|
| `tech-stack-advisor` | Agent | 1 | Recommends optimal tech stacks based on requirements, team, and budget |
| `security-audit` | Agent | 2 | OWASP Top 10 vulnerability scanning and dependency CVE detection |
| `cost-optimizer` | Agent | 3 | Cloud infrastructure cost analysis and right-sizing recommendations |
| `code-review-guide` | Agent | 3 | PR code review for bugs, performance, readability, and test coverage |
| `mvp-scaffold` | Skill | 1 | Full project scaffolding (Next.js, FastAPI, Spring Boot) with auth, DB, CI/CD |
| `deploy-pipeline` | Skill | 2 | GitHub Actions / GitLab CI pipeline generation |
| `db-schema-designer` | Skill | 2 | ERD generation, migration scripts, and index strategy from domain models |
| `test-generator` | Skill | 2 | Auto-generates unit and integration tests from existing code |
| `ai-integration` | Skill | 2 | LLM API integration (OpenAI, Anthropic, Google) with streaming and RAG |
| `infra-as-code` | Skill | 3 | Terraform/Pulumi templates for AWS/GCP/Azure |
| `monitoring-setup` | Skill | 3 | APM, logging, and alerting configuration (Sentry, Datadog, CloudWatch) |
| `api-first-design` | Skill | 3 | OpenAPI/GraphQL schema-first design with stub generation |
| `rapid-prototype` | Command | 2 | Generates working prototypes (API + UI) from feature descriptions |
| `tech-debt-tracker` | Command | 3 | Scans for TODO/FIXME, complexity, outdated deps, and suppressed warnings |

### CPO — Product Management (12 plugins)

| Plugin | Type | Phase | Description |
|--------|------|-------|-------------|
| `ux-reviewer` | Agent | 2 | Nielsen's 10 heuristics evaluation and WCAG accessibility checks |
| `feedback-analyzer` | Agent | 3 | Classifies user feedback by theme, sentiment, and urgency |
| `prd-writer` | Skill | 1 | Lightweight PRD templates with hypothesis, metrics, and scope |
| `scope-cutter` | Skill | 1 | MVP scoping — separates must-haves from nice-to-haves |
| `user-interview-guide` | Skill | 2 | Discovery, validation, and usability interview scripts |
| `metrics-tracker` | Skill | 2 | AARRR pirate metrics and North Star Metric frameworks by stage |
| `experiment-designer` | Skill | 3 | A/B test design with sample size calculation and result interpretation |
| `user-story-gen` | Command | 1 | Generates INVEST-compliant user stories with acceptance criteria |
| `feature-prioritizer` | Command | 2 | RICE/ICE/MoSCoW scoring with visual priority tiers |
| `roadmap-builder` | Command | 3 | Now-Next-Later roadmaps with Mermaid Gantt visualization |
| `analytics-scaffold` | Command | 3 | Type-safe event tracking code for GA4/Mixpanel/Amplitude |
| `release-noter` | Command | 3 | Git-based release notes with audience-specific tone (users/team/investors) |

### COO — Operations & Process (13 plugins)

| Plugin | Type | Phase | Description |
|--------|------|-------|-------------|
| `legal-checklist` | Skill | 1 | Stage-specific legal checklists (incorporation, launch, fundraising) |
| `meeting-notes` | Skill | 1 | Structured templates for standup, sprint, board, and 1:1 meetings |
| `okr-builder` | Skill | 2 | OKR creation with outcome-focused Key Results and scoring |
| `sop-writer` | Skill | 2 | Standard Operating Procedure documentation with checklists |
| `retrospective-guide` | Skill | 3 | Sprint retro formats (KPT, 4Ls, Sailboat) with action tracking |
| `fundraising-prep` | Skill | 3 | Data room setup, pitch deck outline, and investor FAQ preparation |
| `budget-planner` | Skill | 3 | Departmental budgets with variance tracking and use-of-funds templates |
| `risk-register` | Skill | 3 | Risk assessment with impact/probability matrices and mitigation plans |
| `postmortem-writer` | Skill | 3 | Blameless postmortem templates with 5 Whys and action items |
| `decision-log` | Command | 1 | ADR-style decision records with context, options, and rationale |
| `runway-calculator` | Command | 2 | Cash runway calculation with multi-scenario projections |
| `privacy-policy-generator` | Command | 2 | GDPR and Korean privacy law compliant policy drafts |
| `unit-economics` | Command | 3 | LTV, CAC, LTV/CAC ratio, and payback period calculator |

### CMO — Marketing & Growth (13 plugins)

| Plugin | Type | Phase | Description |
|--------|------|-------|-------------|
| `content-writer` | Agent | 2 | SEO-optimized blog posts, case studies, and white papers |
| `seo-optimizer` | Agent | 2 | On-page SEO audit, keyword strategy, and content scoring |
| `funnel-analyzer` | Agent | 3 | AARRR funnel diagnosis with bottleneck identification |
| `brand-voice` | Skill | 1 | Brand personality, tone guidelines, and messaging frameworks |
| `landing-page-gen` | Skill | 2 | Conversion-optimized landing page code (React + Tailwind) |
| `email-sequence` | Skill | 2 | Drip campaign design for onboarding, nurture, win-back, upsell |
| `growth-experiment` | Skill | 3 | ICE-scored growth experiments with weekly cadence templates |
| `community-builder` | Skill | 3 | Discord/Slack community setup, engagement mechanics, growth playbooks |
| `referral-program` | Skill | 3 | Referral incentive design, viral coefficient, and anti-fraud rules |
| `pitch-deck` | Skill | 3 | Investor/partner/sales pitch deck storylines (slide-by-slide) |
| `value-proposition` | Command | 1 | Value Proposition Canvas and Jobs-to-be-Done analysis |
| `content-repurpose` | Command | 2 | Transforms one piece into Twitter thread, LinkedIn, newsletter, video |
| `social-post-gen` | Command | 2 | Platform-optimized posts for Twitter/X, LinkedIn, Instagram, TikTok |

### Hook

| Plugin | Event | Description |
|--------|-------|-------------|
| `secret-scanner` | PreToolUse | Blocks git commits containing hardcoded secrets (API keys, tokens, passwords) |

## Implementation Phases

### Phase 1: Foundation (Week 1-2) — 11 plugins
> Survival toolkit for Day 1. Set direction, start building, stay legal.

### Phase 2: Build & Launch (Month 1-3) — 20 plugins
> Build the MVP, launch, acquire first users, establish processes.

### Phase 3: Growth (Month 3-6) — 22 plugins
> Scale infrastructure, optimize funnel, raise funding, systematize operations.

## Directory Structure

```
forged-claude-code/
├── agents/              # 9 autonomous analysis agents
├── commands/            # 14 action-oriented slash commands
├── skills/              # 29 knowledge & template skills
│   ├── cto/             #   8 technology & infrastructure
│   ├── cpo/             #   5 product management
│   ├── coo/             #   9 operations & process
│   └── cmo/             #   7 marketing & growth
├── hooks/               # 1 automated safeguard
│   └── hooks.json
├── mcp/                 # MCP server configurations
├── output-styles/       # Output style customizations
├── scripts/             # Setup and utility scripts
├── README.md            # This file
└── README-KR.md         # Korean version
```

## Comparison: hardened vs forged

| | hardened-claude-code | forged-claude-code |
|---|---|---|
| **Metaphor** | Shield (방패) | Sword (검) |
| **Target** | Enterprise engineering teams | Startup founders & operators |
| **Focus** | Code quality, architecture, testing | Business operations, growth, product |
| **Plugins** | 20 (code-centric) | 53 (full business stack) |
| **Domains** | Engineering only | CTO + CPO + COO + CMO |
| **Stage** | Maintaining large systems | Building from scratch |

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feat/new-plugin`)
3. Follow existing conventions (YAML frontmatter, phased workflow, boundaries section)
4. Submit a Pull Request

### Plugin Conventions

- **Agents** (`agents/*.md`): YAML frontmatter with `name`, `description`, `tools`
- **Skills** (`skills/{role}/{name}/SKILL.md`): YAML frontmatter with `name`, `description`, `metadata`
- **Commands** (`commands/*.md`): YAML frontmatter with `name`, `description`, `category`, `complexity`
- **Hooks** (`hooks/hooks.json`): Standard Claude Code hook format

## License

MIT
