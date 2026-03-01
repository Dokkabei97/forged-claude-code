---
name: analytics-scaffold
description: "Generates event tracking code for GA4, Mixpanel, and Amplitude from event specifications"
category: product
complexity: intermediate
mcp-servers: []
personas: []
---

# /analytics-scaffold - Event Tracking Code Generator

## Triggers
- Setting up product analytics for a new feature
- Standardizing event tracking across the codebase
- Migrating between analytics providers

## Usage
```
/analytics-scaffold [event spec file or description]
/analytics-scaffold --provider mixpanel
/analytics-scaffold --provider ga4
/analytics-scaffold --provider amplitude
```

## Behavioral Flow

### Phase 1: Define Event Spec
```markdown
## Event Specification

| Event Name | Trigger | Properties |
|-----------|---------|------------|
| page_viewed | Page load | page_name, referrer |
| signup_started | Click signup CTA | source, plan_type |
| signup_completed | Account created | method (email/google/github) |
| feature_used | Feature interaction | feature_name, duration_ms |
| upgrade_clicked | Click upgrade | current_plan, target_plan |
```

### Phase 2: Generate Tracking Code

**Analytics Wrapper (provider-agnostic):**
```typescript
// lib/analytics.ts
type EventName = 'page_viewed' | 'signup_started' | 'signup_completed'
  | 'feature_used' | 'upgrade_clicked'

type EventProperties = {
  page_viewed: { page_name: string; referrer?: string }
  signup_started: { source: string; plan_type?: string }
  signup_completed: { method: 'email' | 'google' | 'github' }
  feature_used: { feature_name: string; duration_ms?: number }
  upgrade_clicked: { current_plan: string; target_plan: string }
}

export function track<T extends EventName>(
  event: T,
  properties: EventProperties[T]
): void {
  // Provider-specific implementation
  if (typeof window !== 'undefined') {
    mixpanel?.track(event, properties)
    // or: gtag('event', event, properties)
    // or: amplitude.track(event, properties)
  }
}

export function identify(userId: string, traits?: Record<string, any>): void {
  mixpanel?.identify(userId)
  mixpanel?.people.set(traits)
}
```

**Usage in Components:**
```typescript
import { track } from '@/lib/analytics'

// In signup form
track('signup_started', { source: 'hero_cta', plan_type: 'free' })

// After successful signup
track('signup_completed', { method: 'google' })
```

### Phase 3: Output

```markdown
## Generated Files
- `lib/analytics.ts` — Type-safe analytics wrapper
- `lib/analytics.test.ts` — Tests for tracking calls
- `docs/event-catalog.md` — Event documentation

## Integration Checklist
- [ ] Install SDK: `npm install mixpanel-browser`
- [ ] Add project token to `.env`
- [ ] Initialize in app layout
- [ ] Verify events in provider dashboard
- [ ] Set up key funnels/dashboards
```

## Tool Coordination
- **Write**: Generate analytics code and documentation
- **Read**: Analyze existing tracking code
- **Grep**: Find existing track/analytics calls

## Boundaries

**Will:**
- Generate type-safe event tracking code
- Support GA4, Mixpanel, Amplitude
- Create event specification documentation
- Provide provider-agnostic wrapper pattern

**Will Not:**
- Set up analytics accounts or dashboards
- Implement server-side tracking
- Configure data pipelines
- Analyze actual analytics data
