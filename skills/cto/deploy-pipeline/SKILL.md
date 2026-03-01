---
name: deploy-pipeline
description: |
  Generates CI/CD pipeline configurations for GitHub Actions or GitLab CI.
  Includes test, build, staging, and production deployment stages with
  Docker and serverless options optimized for startup workflows.
metadata:
  version: 1.0.0
  category: development
  domain: devops
triggers:
  - "CI/CD"
  - "deploy pipeline"
  - "github actions"
  - "deployment"
  - "continuous deployment"
---

# Deploy Pipeline - CI/CD Pipeline Generator

## Overview

Generates production-ready CI/CD pipelines so startups can deploy multiple times a day with confidence. "If it hurts, do it more often."

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| New project needs CI/CD | Full pipeline generation |
| "github actions", "CI/CD" | Interactive pipeline builder |
| Adding staging/production environment | Environment-specific pipeline |

---

## 2. Pipeline Templates

### GitHub Actions — Next.js + Vercel
```yaml
# .github/workflows/ci.yml
name: CI/CD
on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  lint-and-test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: 20
          cache: 'npm'
      - run: npm ci
      - run: npm run lint
      - run: npm run type-check
      - run: npm test -- --coverage
      - uses: actions/upload-artifact@v4
        if: always()
        with:
          name: coverage
          path: coverage/

  deploy-preview:
    needs: lint-and-test
    if: github.event_name == 'pull_request'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: amondnet/vercel-action@v25
        with:
          vercel-token: ${{ secrets.VERCEL_TOKEN }}
          vercel-org-id: ${{ secrets.VERCEL_ORG_ID }}
          vercel-project-id: ${{ secrets.VERCEL_PROJECT_ID }}

  deploy-production:
    needs: lint-and-test
    if: github.ref == 'refs/heads/main'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: amondnet/vercel-action@v25
        with:
          vercel-token: ${{ secrets.VERCEL_TOKEN }}
          vercel-org-id: ${{ secrets.VERCEL_ORG_ID }}
          vercel-project-id: ${{ secrets.VERCEL_PROJECT_ID }}
          vercel-args: '--prod'
```

### GitHub Actions — Docker + AWS ECS
```yaml
# .github/workflows/deploy.yml
name: Build & Deploy
on:
  push:
    branches: [main]

env:
  ECR_REGISTRY: ${{ secrets.AWS_ACCOUNT_ID }}.dkr.ecr.${{ secrets.AWS_REGION }}.amazonaws.com
  IMAGE_NAME: app

jobs:
  build-and-push:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: aws-actions/configure-aws-credentials@v4
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: ${{ secrets.AWS_REGION }}
      - uses: aws-actions/amazon-ecr-login@v2
      - run: |
          docker build -t $ECR_REGISTRY/$IMAGE_NAME:${{ github.sha }} .
          docker push $ECR_REGISTRY/$IMAGE_NAME:${{ github.sha }}

  deploy:
    needs: build-and-push
    runs-on: ubuntu-latest
    steps:
      - uses: aws-actions/amazon-ecs-deploy-task-definition@v1
        with:
          task-definition: task-definition.json
          service: app-service
          cluster: app-cluster
```

### GitHub Actions — FastAPI + Railway
```yaml
name: CI/CD
on:
  push:
    branches: [main]
  pull_request:

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: '3.12'
          cache: 'pip'
      - run: pip install -e ".[test]"
      - run: pytest --cov=src --cov-report=xml
      - uses: codecov/codecov-action@v4

  deploy:
    needs: test
    if: github.ref == 'refs/heads/main'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: bervProject/railway-deploy@main
        with:
          railway_token: ${{ secrets.RAILWAY_TOKEN }}
          service: app
```

---

## 3. Pipeline Selection Guide

| Stack | Hosting | Template |
|-------|---------|----------|
| Next.js | Vercel | Vercel action (zero-config) |
| Next.js | AWS | Docker + ECS/Fargate |
| FastAPI | Railway | Railway deploy action |
| FastAPI | AWS | Docker + ECS |
| Spring Boot | AWS | Docker + ECS |
| Any | Docker host | Docker build + SSH deploy |

---

## 4. Essential Pipeline Stages

| Stage | Purpose | Required? |
|-------|---------|-----------|
| **Lint** | Code style enforcement | Yes |
| **Type Check** | Catch type errors | Yes (TS/Kotlin) |
| **Unit Test** | Business logic verification | Yes |
| **Build** | Compile/bundle | Yes |
| **Preview Deploy** | PR preview environments | Recommended |
| **Production Deploy** | Ship to users | Yes |
| **Smoke Test** | Post-deploy health check | Recommended |

---

## 5. Secrets Setup Checklist

```markdown
## Required Secrets (Settings → Secrets → Actions)
- [ ] VERCEL_TOKEN / RAILWAY_TOKEN / AWS credentials
- [ ] DATABASE_URL (for migration in CI)
- [ ] Any API keys needed for tests
- [ ] CODECOV_TOKEN (for coverage reports)
```

---

## 6. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate workflow YAML files |
| **Read** | Detect existing project stack |
| **Glob** | Check for existing CI configs |
| **Bash** | Validate YAML syntax |

---

## 7. Boundaries

**Will:**
- Generate CI/CD pipeline configs for major platforms
- Include all essential stages (lint, test, build, deploy)
- Provide secrets setup checklist
- Support PR preview deployments

**Will Not:**
- Set up cloud accounts or billing
- Configure DNS or SSL certificates
- Manage infrastructure (use infra-as-code skill)
- Set up monitoring (use monitoring-setup skill)
