---
name: content-repurpose
description: "Transforms one piece of content into multiple formats for different channels (Twitter thread, LinkedIn post, newsletter, short-form script)"
category: marketing
complexity: basic
mcp-servers: []
personas: []
---

# /content-repurpose - Content Multi-Format Converter

## Triggers
- When a blog post needs to be shared across channels
- When maximizing content ROI from a single piece
- When creating channel-specific variations

## Usage
```
/content-repurpose [content file or URL]
/content-repurpose blog/my-post.md
/content-repurpose --format twitter blog/my-post.md
/content-repurpose --format all blog/my-post.md
```

## Behavioral Flow

### Phase 1: Source Analysis
Read and analyze the source content:
```
1. Identify core message (1 sentence)
2. Extract key points (3-5 bullets)
3. Find quotable lines
4. Identify data points / statistics
5. Determine target audience
```

### Phase 2: Generate Formats

**Twitter/X Thread (5-10 tweets):**
```
Tweet 1: Hook (curiosity gap or bold statement)
Tweet 2-8: Key points (one idea per tweet)
Tweet 9: Summary / takeaway
Tweet 10: CTA + link to full content

Rules:
- Each tweet < 280 chars
- Use line breaks for readability
- Include 1-2 relevant hashtags on last tweet only
- Start thread with a hook, not "Thread 🧵"
```

**LinkedIn Post:**
```
[Hook — first 2 lines visible before "see more"]

[3-5 key insights with line breaks between each]

[Personal take or lesson learned]

[CTA — question to drive engagement]

[3-5 relevant hashtags]

Rules:
- First 2 lines are CRITICAL (appear before fold)
- 1,300 chars optimal (max 3,000)
- Personal tone works best
- End with a question to boost comments
```

**Newsletter Section:**
```
## [Catchy Section Title]

[2-3 sentence summary of the key insight]

**Key takeaway**: [1 sentence]

[Read the full post →](link)

Rules:
- Scannable format
- Tease the value, don't reproduce the whole post
- Clear CTA to read full content
```

**Short-Form Video Script (60 seconds):**
```
[0-5s] HOOK: [Attention-grabbing opening line]
[5-15s] PROBLEM: [Relatable pain point]
[15-45s] INSIGHT: [2-3 key points from content]
[45-55s] TAKEAWAY: [Main lesson]
[55-60s] CTA: [Follow for more / Link in bio]

Rules:
- Front-load the hook (first 3 seconds decide)
- Speak conversationally
- One idea per section
- End with clear CTA
```

### Phase 3: Output All Formats

```markdown
# Content Repurpose: [Original Title]

**Source**: [file path or URL]
**Core Message**: [1 sentence]

---

## Twitter/X Thread
[Full thread]

## LinkedIn Post
[Full post]

## Newsletter Snippet
[Newsletter section]

## Short-Form Script
[Video script]

---

## Posting Schedule Suggestion
| Day | Platform | Format | Best Time |
|-----|----------|--------|-----------|
| Day 0 | Blog | Original post | AM |
| Day 0 | Twitter/X | Thread | 12-1 PM |
| Day 1 | LinkedIn | Post | 8-9 AM |
| Day 2 | Newsletter | Snippet | Tuesday AM |
| Day 3 | TikTok/Reels | Short-form | 6-8 PM |
```

## Tool Coordination
- **Read**: Read source content file
- **Write**: Generate repurposed content document
- **WebSearch**: Reference trending formats and hooks

## Boundaries

**Will:**
- Transform any content into Twitter, LinkedIn, newsletter, video formats
- Adapt tone and length for each platform
- Preserve core message across formats
- Suggest posting schedule

**Will Not:**
- Post content to social media
- Create visual assets (thumbnails, graphics)
- Record or edit video
- Manage social media accounts
