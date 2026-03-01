---
name: api-first-design
description: |
  Designs API-first with OpenAPI/GraphQL schemas, then generates server
  stubs and client SDKs. Enables parallel frontend/backend development
  for small teams.
metadata:
  version: 1.0.0
  category: development
  domain: api-design
triggers:
  - "API design"
  - "OpenAPI"
  - "GraphQL schema"
  - "API first"
  - "API contract"
---

# API First Design - Contract-Driven Development

## Overview

Design the API contract first, then build frontend and backend in parallel. Small teams move faster when everyone agrees on the interface upfront.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Starting new API | Full API design workflow |
| "OpenAPI", "API design" | Schema generation |
| Frontend/backend need to work in parallel | Contract-first setup |

---

## 2. Design Workflow

### Step 1: Define Resources
From domain description, identify:
- **Nouns** → Resources (User, Post, Order)
- **Verbs** → Operations (create, list, update, delete)
- **Relationships** → Nested routes or query params

### Step 2: Generate OpenAPI Spec
```yaml
openapi: 3.1.0
info:
  title: My App API
  version: 1.0.0
paths:
  /api/v1/users:
    get:
      summary: List users
      parameters:
        - name: page
          in: query
          schema: { type: integer, default: 1 }
        - name: limit
          in: query
          schema: { type: integer, default: 20, maximum: 100 }
      responses:
        '200':
          description: User list
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    type: array
                    items: { $ref: '#/components/schemas/User' }
                  pagination:
                    $ref: '#/components/schemas/Pagination'
    post:
      summary: Create user
      requestBody:
        required: true
        content:
          application/json:
            schema: { $ref: '#/components/schemas/CreateUser' }
      responses:
        '201':
          description: Created
components:
  schemas:
    User:
      type: object
      properties:
        id: { type: string, format: uuid }
        email: { type: string, format: email }
        name: { type: string }
        createdAt: { type: string, format: date-time }
    CreateUser:
      type: object
      required: [email, name]
      properties:
        email: { type: string, format: email }
        name: { type: string, minLength: 1, maxLength: 100 }
```

### Step 3: API Design Rules
- **Use plural nouns**: `/users` not `/user`
- **Version your API**: `/api/v1/`
- **Consistent error format**: `{ error: { code, message, details } }`
- **Pagination**: cursor-based for large sets, offset for small
- **Filtering**: `?status=active&sort=-createdAt`

---

## 3. REST vs GraphQL Decision

| Factor | REST | GraphQL |
|--------|------|---------|
| Multiple clients with different needs | ❌ Over/under-fetching | ✅ Client-driven queries |
| Simple CRUD | ✅ Standard patterns | ❌ Overkill |
| Caching | ✅ HTTP caching built-in | ⚠️ Requires effort |
| Team size < 5 | ✅ Simpler to learn | ❌ Learning curve |
| **Startup default** | **✅ Start here** | Consider at scale |

---

## 4. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate OpenAPI/GraphQL schemas |
| **Read** | Analyze existing API code |
| **Bash** | Generate stubs (`npx openapi-generator-cli generate`) |

---

## 5. Boundaries

**Will:**
- Design RESTful APIs with OpenAPI specs
- Design GraphQL schemas
- Generate server stubs and client types
- Apply API design best practices

**Will Not:**
- Implement business logic behind endpoints
- Set up API gateways or rate limiting infrastructure
- Handle authentication design (use security-audit)
- Load test APIs
