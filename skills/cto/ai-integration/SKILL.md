---
name: ai-integration
description: |
  Generates LLM API integration code for OpenAI, Anthropic, and Google.
  Includes prompt engineering patterns, streaming responses, error handling,
  cost estimation, and RAG pipeline setup.
metadata:
  version: 1.0.0
  category: development
  domain: ai-ml
triggers:
  - "AI integration"
  - "LLM API"
  - "add AI feature"
  - "OpenAI"
  - "Anthropic"
  - "RAG"
---

# AI Integration - LLM API Integration Guide

## Overview

Generates production-ready LLM API integration code. From basic chat completion to RAG pipelines, with cost tracking and error handling.

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| Adding AI/LLM features | Full integration setup |
| "OpenAI", "Anthropic", "RAG" | Provider-specific integration |
| AI feature architecture | Pattern recommendation |

---

## 2. Provider Quick Start

### OpenAI (TypeScript)
```typescript
import OpenAI from 'openai'

const openai = new OpenAI({ apiKey: process.env.OPENAI_API_KEY })

async function chat(prompt: string): Promise<string> {
  const response = await openai.chat.completions.create({
    model: 'gpt-4o',
    messages: [{ role: 'user', content: prompt }],
    max_tokens: 1000,
  })
  return response.choices[0].message.content ?? ''
}
```

### Anthropic (TypeScript)
```typescript
import Anthropic from '@anthropic-ai/sdk'

const anthropic = new Anthropic({ apiKey: process.env.ANTHROPIC_API_KEY })

async function chat(prompt: string): Promise<string> {
  const response = await anthropic.messages.create({
    model: 'claude-sonnet-4-20250514',
    max_tokens: 1024,
    messages: [{ role: 'user', content: prompt }],
  })
  return response.content[0].type === 'text' ? response.content[0].text : ''
}
```

### Streaming Response (Next.js)
```typescript
// app/api/chat/route.ts
import { streamText } from 'ai'
import { openai } from '@ai-sdk/openai'

export async function POST(req: Request) {
  const { messages } = await req.json()
  const result = streamText({
    model: openai('gpt-4o'),
    messages,
  })
  return result.toDataStreamResponse()
}
```

---

## 3. Common Patterns

### Structured Output
```typescript
import { z } from 'zod'

const schema = z.object({
  sentiment: z.enum(['positive', 'negative', 'neutral']),
  confidence: z.number().min(0).max(1),
  summary: z.string(),
})

const response = await openai.chat.completions.create({
  model: 'gpt-4o',
  messages: [{ role: 'user', content: text }],
  response_format: { type: 'json_object' },
})
const result = schema.parse(JSON.parse(response.choices[0].message.content!))
```

### RAG Pipeline (Simplified)
```
1. Document ingestion → chunk → embed → store in vector DB
2. Query → embed query → similarity search → retrieve chunks
3. Augment prompt with retrieved context → generate response
```

### Error Handling & Retry
```typescript
async function callWithRetry<T>(
  fn: () => Promise<T>,
  maxRetries = 3,
  baseDelay = 1000
): Promise<T> {
  for (let i = 0; i <= maxRetries; i++) {
    try {
      return await fn()
    } catch (error: any) {
      if (i === maxRetries) throw error
      if (error.status === 429 || error.status >= 500) {
        await new Promise(r => setTimeout(r, baseDelay * Math.pow(2, i)))
        continue
      }
      throw error // Don't retry client errors
    }
  }
  throw new Error('Unreachable')
}
```

---

## 4. Cost Estimation

| Model | Input (1K tokens) | Output (1K tokens) |
|-------|-------------------|---------------------|
| GPT-4o | $0.0025 | $0.01 |
| GPT-4o-mini | $0.00015 | $0.0006 |
| Claude Sonnet | $0.003 | $0.015 |
| Claude Haiku | $0.0008 | $0.004 |

**Rule of thumb**: Start with cheaper models, upgrade only when quality demands it.

---

## 5. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate integration code |
| **Read** | Analyze existing codebase |
| **Bash** | Install SDKs (`npm install openai`) |

---

## 6. Boundaries

**Will:**
- Generate LLM API integration code for major providers
- Include streaming, structured output, and error handling patterns
- Provide cost estimation and model selection guidance
- Set up basic RAG pipeline structure

**Will Not:**
- Train or fine-tune models
- Set up vector databases (mention options, don't configure)
- Build full AI products (provides building blocks)
- Guarantee prompt quality (use prompt-engineer agent)
