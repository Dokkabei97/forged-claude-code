---
name: mvp-scaffold
description: |
  Generates complete project scaffolding from tech stack selection to initial structure.
  Supports Next.js, FastAPI, Spring Boot and other major stacks with startup-optimized
  templates including auth, database, CI/CD, and deployment configuration.
metadata:
  version: 1.0.0
  category: development
  domain: project-setup
triggers:
  - "create new project"
  - "scaffold project"
  - "init project"
  - "start new app"
  - "mvp scaffold"
---

# MVP Scaffold - Startup Project Scaffolding

## Overview

Generates a complete, production-ready project skeleton optimized for startup speed. From zero to deployable in minutes, not days.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| New project creation | Full scaffolding with interactive stack selection |
| Adding a new service to monorepo | Service scaffolding within existing structure |
| "scaffold", "init", "bootstrap" keywords | Activate scaffolding workflow |

---

## 2. Supported Stacks

### Frontend
| Stack | Template | Best For |
|-------|----------|----------|
| **Next.js 15 (App Router)** | `next-startup` | Full-stack web app |
| **React + Vite** | `react-vite` | SPA / Dashboard |
| **React Native (Expo)** | `expo-startup` | Mobile-first product |

### Backend
| Stack | Template | Best For |
|-------|----------|----------|
| **Next.js API Routes** | (included in next-startup) | Simple API |
| **FastAPI** | `fastapi-startup` | Python / AI / Data |
| **Spring Boot (Kotlin)** | `spring-startup` | Enterprise B2B |
| **NestJS** | `nest-startup` | Complex Node.js API |

### Database
| Choice | Setup Included |
|--------|----------------|
| **Supabase (PostgreSQL)** | Auth + DB + Storage + Realtime |
| **Prisma + PostgreSQL** | ORM + migrations + seeding |
| **Drizzle + PostgreSQL** | Lightweight ORM + type-safe |
| **MongoDB Atlas** | Mongoose models + connection |

---

## 3. Scaffolding Flow

### Phase 1: Stack Selection
```
1. Ask product type (web/mobile/api/full-stack)
2. Ask backend preference (or recommend based on team skills)
3. Ask database preference (or recommend based on data model)
4. Ask auth method (Supabase Auth / Clerk / NextAuth)
5. Ask deployment target (Vercel / Railway / Docker)
```

### Phase 2: Project Generation

**Next.js Startup Template Structure:**
```
{project-name}/
├── src/
│   ├── app/
│   │   ├── layout.tsx          # Root layout with providers
│   │   ├── page.tsx            # Landing page
│   │   ├── (auth)/
│   │   │   ├── login/page.tsx
│   │   │   └── signup/page.tsx
│   │   ├── (dashboard)/
│   │   │   └── page.tsx
│   │   └── api/
│   │       └── health/route.ts # Health check endpoint
│   ├── components/
│   │   ├── ui/                 # shadcn/ui components
│   │   └── layout/
│   ├── lib/
│   │   ├── supabase.ts        # DB client
│   │   ├── utils.ts
│   │   └── constants.ts
│   └── types/
│       └── index.ts
├── prisma/                     # If Prisma selected
│   └── schema.prisma
├── public/
├── .env.example                # Environment template
├── .env.local                  # (gitignored)
├── .gitignore
├── package.json
├── tsconfig.json
├── tailwind.config.ts
├── next.config.ts
├── docker-compose.yml          # Local dev DB
├── Dockerfile                  # Production build
├── .github/
│   └── workflows/
│       └── ci.yml              # CI pipeline
├── CLAUDE.md                   # AI context
└── README.md
```

**FastAPI Startup Template Structure:**
```
{project-name}/
├── src/
│   ├── main.py                 # FastAPI app entry
│   ├── config.py               # Settings with pydantic
│   ├── api/
│   │   ├── __init__.py
│   │   ├── deps.py             # Dependencies
│   │   └── v1/
│   │       ├── __init__.py
│   │       └── endpoints/
│   ├── models/                 # SQLAlchemy models
│   ├── schemas/                # Pydantic schemas
│   ├── services/               # Business logic
│   └── core/
│       ├── security.py
│       └── database.py
├── tests/
├── alembic/                    # DB migrations
├── .env.example
├── pyproject.toml
├── Dockerfile
├── docker-compose.yml
├── .github/workflows/ci.yml
└── README.md
```

### Phase 3: Essential Configurations

**Always Include:**
- `.env.example` with all required env vars (no real values)
- `.gitignore` with comprehensive ignore patterns
- `docker-compose.yml` for local development
- GitHub Actions CI pipeline (lint + test + build)
- `CLAUDE.md` with project context for AI assistants
- Health check endpoint (`/api/health`)

### Phase 4: Post-Scaffold Checklist
```markdown
## Setup Checklist
- [ ] Copy .env.example to .env.local and fill in values
- [ ] Run `docker-compose up -d` for local DB
- [ ] Run `npm install` / `pip install -e .`
- [ ] Run `npm run dev` / `uvicorn src.main:app --reload`
- [ ] Verify health check: http://localhost:3000/api/health
- [ ] Make your first commit
```

---

## 4. Key Principles

1. **Start with Auth**: Every SaaS needs login. Include it from Day 1.
2. **Database Migrations**: Set up migration tooling immediately.
3. **CI from Start**: Even a simple lint+test pipeline prevents regressions.
4. **Environment Variables**: Never hardcode secrets. `.env.example` as contract.
5. **Docker for Dev**: Consistent local development across team.

---

## 5. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Bash** | `npx create-next-app`, `pip install`, `docker-compose` |
| **Write** | Generate config files, boilerplate code |
| **Read** | Check existing project files for conflicts |
| **Glob** | Verify generated structure |

---

## 6. Boundaries

**Will:**
- Generate complete project structure with all essential configurations
- Set up auth, database, CI/CD boilerplate
- Create .env.example with all required variables
- Provide post-scaffold setup instructions

**Will Not:**
- Deploy the project (use deploy-pipeline skill)
- Write business logic beyond boilerplate
- Choose the stack for you (use tech-stack-advisor agent)
- Set up monitoring or observability (Phase 2 concern)
