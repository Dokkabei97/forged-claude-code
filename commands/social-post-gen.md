---
name: social-post-gen
description: "Generates platform-optimized social media posts for Twitter/X, LinkedIn, Instagram, and TikTok with hashtags and format variations"
category: marketing
complexity: basic
mcp-servers: []
personas: []
---

# /social-post-gen - Social Media Post Generator

## Triggers
- When announcing features, launches, or milestones
- When creating regular social media content
- When adapting content for different platforms

## Usage
```
/social-post-gen [topic or announcement]
/social-post-gen "We just launched v2.0 with AI features"
/social-post-gen --platform twitter [topic]
/social-post-gen --platform linkedin [topic]
/social-post-gen --platform all [topic]
/social-post-gen --type launch|tip|milestone|engagement
```

## Behavioral Flow

### Phase 1: Context Analysis
```
1. Identify post type (launch / tip / milestone / engagement / thought leadership)
2. Determine target audience
3. Reference brand voice guidelines (if available)
4. Identify key message and CTA
```

### Phase 2: Platform-Specific Generation

**Twitter/X:**
```
Format: Single tweet or thread
Length: < 280 chars per tweet
Style: Conversational, punchy, witty
Elements: Hook in first line, line breaks, optional emoji
Hashtags: 1-2 max, at end
Media: Suggest screenshot/GIF

Template:
[Hook — bold claim or question]

[Supporting point]

[Social proof or data point]

[CTA]

#hashtag1 #hashtag2
```

**LinkedIn:**
```
Format: Long-form post
Length: 1,300 chars optimal
Style: Professional but personal, storytelling
Elements: Strong first 2 lines (before fold), line breaks between paragraphs
Hashtags: 3-5 at end

Template:
[First line — hook that stops scrolling]
[Second line — continuation or surprise]

[Story or insight — 3-5 short paragraphs]

[Lesson or takeaway]

[Question to drive comments]

#hashtag1 #hashtag2 #hashtag3
```

**Instagram (Caption):**
```
Format: Caption with suggested visual description
Length: First 125 chars most important (preview)
Style: Authentic, visual-first
Elements: Emoji-friendly, call to save/share
Hashtags: 20-30 in first comment (not caption)

Template:
[Hook — first line that appears in feed]

[Story or value — 3-4 short paragraphs]

[CTA — "Save this for later" / "Tag someone who needs this"]

.
.
.
[Hashtags in separate block or first comment]
```

**TikTok (Script Outline):**
```
Format: 15-60 second script
Style: Casual, trend-aware, fast-paced
Elements: Hook in first 3 seconds, text overlay suggestions

[0-3s] HOOK: [Attention grab — text on screen]
[3-15s] CONTEXT: [Problem or setup]
[15-45s] VALUE: [Tip, reveal, or demonstration]
[45-60s] CTA: [Follow, comment, link in bio]

Suggested text overlays:
- [Text 1]
- [Text 2]
Suggested sound/trend: [If applicable]
```

### Phase 3: Output

```markdown
# Social Posts: [Topic]

## Twitter/X
[Post content]

## LinkedIn
[Post content]

## Instagram
**Suggested Visual**: [Description of image/carousel]
**Caption**: [Caption content]
**First Comment Hashtags**: [hashtags]

## TikTok
**Script**: [Script content]
**Visual Notes**: [What to show on screen]

---

## Posting Schedule
| Platform | Best Time | Frequency |
|----------|-----------|-----------|
| Twitter/X | 12-1 PM weekdays | 1-3x daily |
| LinkedIn | 8-10 AM Tue-Thu | 3-5x weekly |
| Instagram | 11 AM or 7 PM | 3-7x weekly |
| TikTok | 6-10 PM | 1-3x daily |
```

## Tool Coordination
- **Read**: Reference brand voice, previous posts
- **Write**: Generate post document
- **WebSearch**: Research trending topics/hashtags

## Boundaries

**Will:**
- Generate platform-optimized posts with correct formats and lengths
- Include relevant hashtags and posting time suggestions
- Adapt tone for each platform's culture
- Provide visual/media suggestions

**Will Not:**
- Post to social media accounts
- Create images, videos, or graphics
- Schedule posts in social media tools
- Guarantee engagement or virality
- Buy ads or manage paid social
