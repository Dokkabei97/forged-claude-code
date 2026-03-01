---
name: monitoring-setup
description: |
  Configures application monitoring, log collection, and alerting.
  Generates setup for Datadog, Grafana+Prometheus, CloudWatch,
  and Sentry with startup-appropriate thresholds.
metadata:
  version: 1.0.0
  category: development
  domain: observability
triggers:
  - "monitoring"
  - "alerting"
  - "observability"
  - "APM"
  - "logging"
---

# Monitoring Setup - Observability Configuration

## Overview

Sets up the "detect before users complain" system. Minimum viable monitoring that grows with your startup.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Post-launch monitoring setup | Full observability stack |
| "monitoring", "alerting" | Tool-specific configuration |
| First production incident | Retroactive monitoring gaps |

---

## 2. Monitoring Stack by Budget

| Budget | Stack | Monthly Cost |
|--------|-------|-------------|
| **$0** | Sentry (free) + UptimeRobot + CloudWatch basic | $0 |
| **$0-50** | Sentry + Grafana Cloud (free) + Better Uptime | $0-50 |
| **$50-500** | Datadog (Pro) or Grafana Cloud (Pro) | $50-500 |

---

## 3. Essential Alerts (Day 1)

```markdown
## Must-Have Alerts

| Alert | Condition | Channel | Priority |
|-------|-----------|---------|----------|
| **Site Down** | Health check fails 3x | Slack + PagerDuty | P0 |
| **Error Rate Spike** | >5% 5xx in 5 min | Slack | P1 |
| **Slow Response** | p95 > 2s for 5 min | Slack | P2 |
| **DB Connections** | >80% pool used | Slack | P1 |
| **Disk Space** | >85% used | Slack | P2 |
| **Memory** | >90% for 10 min | Slack | P1 |
| **SSL Expiry** | <14 days to expiry | Email | P2 |
```

---

## 4. Quick Setup: Sentry (Error Tracking)

```typescript
// Next.js — sentry.client.config.ts
import * as Sentry from "@sentry/nextjs"

Sentry.init({
  dsn: process.env.NEXT_PUBLIC_SENTRY_DSN,
  tracesSampleRate: 0.1,      // 10% of transactions
  replaysSessionSampleRate: 0, // Save cost, enable when needed
  environment: process.env.NODE_ENV,
})
```

```python
# FastAPI — main.py
import sentry_sdk
from sentry_sdk.integrations.fastapi import FastApiIntegration

sentry_sdk.init(
    dsn=os.getenv("SENTRY_DSN"),
    traces_sample_rate=0.1,
    environment=os.getenv("ENVIRONMENT", "production"),
    integrations=[FastApiIntegration()],
)
```

---

## 5. Health Check Endpoint

```typescript
// app/api/health/route.ts
export async function GET() {
  const checks = {
    status: 'ok',
    timestamp: new Date().toISOString(),
    uptime: process.uptime(),
    checks: {
      database: await checkDB(),
      redis: await checkRedis(),
    }
  }
  const allHealthy = Object.values(checks.checks).every(c => c === 'ok')
  return Response.json(checks, { status: allHealthy ? 200 : 503 })
}
```

---

## 6. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate config files, health endpoints |
| **Read** | Analyze existing monitoring setup |
| **Bash** | Install SDKs (`npm install @sentry/nextjs`) |

---

## 7. Boundaries

**Will:**
- Generate monitoring configurations for major platforms
- Set up error tracking (Sentry), uptime monitoring, basic APM
- Define alert thresholds appropriate for startups
- Create health check endpoints

**Will Not:**
- Create cloud provider accounts
- Set up PagerDuty/OpsGenie on-call rotations
- Build custom dashboards (recommend tools instead)
- Monitor business metrics (use metrics-tracker)
