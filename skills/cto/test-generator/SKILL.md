---
name: test-generator
description: |
  Analyzes existing code and auto-generates unit and integration tests.
  Covers happy paths, edge cases, and error scenarios for Jest, Vitest,
  pytest, and Kotest frameworks.
metadata:
  version: 1.0.0
  category: development
  domain: testing
triggers:
  - "generate tests"
  - "write tests"
  - "add tests"
  - "test coverage"
---

# Test Generator - Automated Test Generation

## Overview

Reads existing code and generates comprehensive test suites. Covers the boring-but-critical test writing so developers can focus on business logic.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| "generate tests for [file]" | Analyze file, generate test suite |
| "add tests" | Scan for untested code, generate tests |
| "test coverage" | Identify coverage gaps, generate missing tests |

---

## 2. Test Generation Workflow

### Step 1: Code Analysis
```
1. Read target file(s)
2. Identify exported functions/classes/methods
3. Analyze parameter types and return types
4. Detect dependencies (imports, injections)
5. Identify side effects (API calls, DB, file system)
```

### Step 2: Test Case Planning
For each function, generate test cases:

| Category | Examples |
|----------|---------|
| **Happy path** | Valid inputs → expected output |
| **Boundary values** | 0, 1, MAX, empty string, empty array |
| **Invalid inputs** | null, undefined, wrong type, negative |
| **Error handling** | Network failure, timeout, invalid response |
| **Edge cases** | Concurrent calls, unicode, special chars |

### Step 3: Test Generation

**TypeScript (Jest/Vitest):**
```typescript
import { describe, it, expect, vi } from 'vitest'
import { calculatePrice } from './pricing'

describe('calculatePrice', () => {
  it('calculates base price correctly', () => {
    expect(calculatePrice({ quantity: 1, unitPrice: 100 })).toBe(100)
  })

  it('applies discount for bulk orders', () => {
    expect(calculatePrice({ quantity: 100, unitPrice: 10 })).toBe(900)
  })

  it('throws for negative quantity', () => {
    expect(() => calculatePrice({ quantity: -1, unitPrice: 10 }))
      .toThrow('Quantity must be positive')
  })

  it('returns 0 for zero quantity', () => {
    expect(calculatePrice({ quantity: 0, unitPrice: 100 })).toBe(0)
  })
})
```

**Python (pytest):**
```python
import pytest
from pricing import calculate_price

def test_base_price():
    assert calculate_price(quantity=1, unit_price=100) == 100

def test_bulk_discount():
    assert calculate_price(quantity=100, unit_price=10) == 900

def test_negative_quantity_raises():
    with pytest.raises(ValueError, match="positive"):
        calculate_price(quantity=-1, unit_price=10)

def test_zero_quantity():
    assert calculate_price(quantity=0, unit_price=100) == 0
```

### Step 4: Mock Generation
Auto-generate mocks for external dependencies:
```typescript
// Auto-detected: function calls supabase
vi.mock('@/lib/supabase', () => ({
  supabase: {
    from: vi.fn(() => ({
      select: vi.fn().mockResolvedValue({ data: mockData, error: null })
    }))
  }
}))
```

---

## 3. Framework Detection

| File Pattern | Framework |
|-------------|-----------|
| `vitest.config.*` | Vitest |
| `jest.config.*` | Jest |
| `pytest.ini`, `pyproject.toml` with pytest | pytest |
| `build.gradle*` with kotest | Kotest |

---

## 4. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Read** | Analyze source code |
| **Write** | Generate test files |
| **Glob** | Find test config, existing tests |
| **Grep** | Detect imports, dependencies |
| **Bash** | Run tests, check coverage |

---

## 5. Boundaries

**Will:**
- Generate test suites for functions/classes/endpoints
- Cover happy paths, edge cases, and error scenarios
- Auto-generate mocks for external dependencies
- Follow existing test conventions in the project

**Will Not:**
- Write E2E tests (use e2e-runner agent)
- Replace TDD workflow (use tdd-guide agent for that)
- Guarantee 100% coverage (focuses on meaningful tests)
- Test private/internal implementation details
