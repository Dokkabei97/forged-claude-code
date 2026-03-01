---
name: rapid-prototype
description: "Generates working prototype code (API + UI) from user story or feature description for quick demos and validation"
category: development
complexity: intermediate
mcp-servers: []
personas: []
---

# /rapid-prototype - Quick Prototype Generator

## Triggers
- When you need a working demo for investor presentations
- When validating a feature idea with real users before full implementation
- When building a proof-of-concept for technical feasibility

## Usage
```
/rapid-prototype [feature description]
/rapid-prototype "User can upload photos and get AI-generated captions"
/rapid-prototype --stack next       # Force Next.js stack
/rapid-prototype --stack fastapi    # Force FastAPI stack
/rapid-prototype --ui-only          # Frontend only (mock API)
/rapid-prototype --api-only         # API only (no UI)
```

## Behavioral Flow

### Phase 1: Feature Analysis
Parse the feature description to identify:
```
1. Core user action (what the user does)
2. Data entities (what data is involved)
3. External dependencies (APIs, services)
4. UI components needed
5. API endpoints needed
```

### Phase 2: Stack Selection
Auto-detect or use specified stack:

| Signal | Stack | Reason |
|--------|-------|--------|
| AI/ML feature | FastAPI + React | Python ML ecosystem |
| Form-heavy app | Next.js (App Router) | Server actions, form handling |
| Real-time feature | Next.js + WebSocket | Built-in API routes |
| Default | Next.js | Fastest full-stack prototype |

### Phase 3: Generate Prototype

**API Layer:**
```
1. Define data models (TypeScript types / Pydantic models)
2. Create API endpoints (route handlers / FastAPI endpoints)
3. Use in-memory storage or SQLite for MVP (no external DB setup)
4. Add mock data for demo scenarios
```

**UI Layer:**
```
1. Create page layout with Tailwind CSS
2. Build form/input components
3. Wire up API calls
4. Add loading/error states
5. Make it visually presentable (not beautiful, but demo-ready)
```

**Demo Data:**
```
1. Generate realistic seed data
2. Create happy-path demo script
3. Include edge cases for robustness impression
```

### Phase 4: Run & Verify
```bash
# Install dependencies
npm install  # or pip install -r requirements.txt

# Start development server
npm run dev  # or uvicorn main:app --reload

# Open in browser
open http://localhost:3000
```

### Phase 5: Output Summary
```markdown
## Prototype Ready

**Stack**: [selected stack]
**Files created**: [N] files
**Run**: `npm run dev` → http://localhost:3000

### Demo Script
1. [Step 1: What to show]
2. [Step 2: What to show]
3. [Step 3: What to show]

### Known Limitations (it's a prototype!)
- [ ] No authentication (hardcoded user)
- [ ] In-memory storage (data resets on restart)
- [ ] No error handling for edge cases
- [ ] No tests

### To Productionize
1. [Replace in-memory with real DB]
2. [Add authentication]
3. [Add proper error handling]
4. [Write tests]
```

## Tool Coordination
- **Write**: Generate source code files
- **Bash**: Install dependencies, run dev server
- **Read**: Check existing project structure
- **Glob**: Verify no file conflicts

## Examples

### Full-Stack Prototype
```
/rapid-prototype "Users can create polls, share them via link, and see real-time results"

→ Creates:
  src/app/page.tsx               (Poll list)
  src/app/poll/[id]/page.tsx     (Vote page)
  src/app/poll/new/page.tsx      (Create poll)
  src/app/api/polls/route.ts     (CRUD API)
  src/lib/store.ts               (In-memory store)
  src/components/PollCard.tsx     (Poll component)
```

### API-Only Prototype
```
/rapid-prototype --api-only "REST API for todo list with categories and priorities"

→ Creates FastAPI endpoints with OpenAPI docs
→ Run and test at http://localhost:8000/docs
```

## Boundaries

**Will:**
- Generate working, runnable prototype code
- Use simple storage (in-memory/SQLite) for zero-setup
- Include demo-ready mock data
- Provide demo script for presentations

**Will Not:**
- Build production-ready code (it's a prototype)
- Set up databases, auth services, or cloud infrastructure
- Write comprehensive tests
- Optimize for performance or security
- Deploy the prototype (just local development)
