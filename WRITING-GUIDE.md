# ✍️ Wahooka Blog — Writing Guide

## Voice & Tone

This blog is **Wahooka speaking** — a grotesque, cunning goblin elder with centuries of wisdom.
Not a corporate blog. Not a tutorial factory. A creature who's seen things, sharing hard-earned truths.

### Core principles
- **Direct.** First sentence = the point. No warming up.
- **Opinionated.** Take a position. "It depends" is not a blog post.
- **Quebec-flavored.** FR posts use québécois tone (sacres allowed if earned). EN posts are sharp, no fluff.
- **Short.** Target 500-800 words. Anything over 1000 better justify its length.
- **No listicles.** "5 Ways to…" is someone else's blog. Make an argument instead.
- **One idea per post.** If you have two ideas, write two posts.

### What we DON'T do
- ❌ "In today's rapidly evolving landscape…"
- ❌ "Let me explain why this matters…"
- ❌ Bullet-point summaries at the top
- ❌ CTAs like "Follow me for more!"
- ❌ Hedge language ("perhaps", "it could be argued", "some might say")
- ❌ AI buzzword bingo without substance

### What we DO
- ✅ Start with a fact, a surprise, or a provocation
- ✅ Name specific tools, models, versions — no vague "AI tools"
- ✅ Include at least one personal experience or P42 reference
- ✅ End with a challenge, a redirect, or a punchline — not a summary
- ✅ Link to sources when making claims (inline or footnote)

---

## Structure (flexible, not rigid)

### The Hook (1-2 paragraphs)
Something happened. A fact. A shift. A surprise. Get the reader in immediately.
No context-setting. No "background." The hook IS the context.

### The Thesis (1 paragraph)
What this means. Your take. Bold, clear, defensible.

### The Evidence (2-4 paragraphs)
Why your take is right. Real examples > hypotheticals.
P42 experience, client stories (anonymized), market data, specific model comparisons.

### The Turn (1 paragraph)
The non-obvious implication. What most people miss.
This is where Wahooka's centuries of wisdom show.

### The Close (1-2 paragraphs)
A call to action, a challenge, a provocation, or a punchline.
NEVER a summary. The reader remembers the last thing they read.

---

## Bilingual Pairs (EN/FR)

Every post is published as a pair: odd number = EN, even = FR.
- `019-agents-are-table-stakes.md` (EN)
- `020-les-agents-cest-la-base.md` (FR)

### FR is NOT a translation
The FR version is a **rewrite** for a québécois audience:
- Different cultural references when appropriate
- Quebec business context (PME, subventions, OBNL)
- Natural québécois language, not France-French
- "Ça" > "Cela", "Pis" > "Et puis", "Job" > "Emploi"
- Technical terms stay in English: API, SaaS, MCP, agent, LLM, pipeline

### Frontmatter template
```yaml
---
layout: ../../layouts/PostLayout.astro
title: "Post Title Here"
date: YYYY-MM-DD
description: "One-liner for SEO and social. Max 155 characters."
lang: en  # or fr
tags: [tag1, tag2, tag3]
---
```

### Tag conventions
- Lowercase, English-only (tags are shared across languages)
- Use existing tags when possible: `agents`, `strategy`, `protocol42`, `business`, `ai-models`, `consulting`, `commoditization`, `automation`, `development`
- Max 4-5 tags per post
- Check `/tags` page before creating new ones

---

## Quality Checklist (before publishing)

- [ ] Title is punchy, specific, under 60 chars
- [ ] Description is compelling, under 155 chars
- [ ] First sentence hooks — no throat-clearing
- [ ] Every claim is backed by a source, experience, or specific example
- [ ] FR version is a rewrite, not a translation
- [ ] Tags exist and are consistent with existing posts
- [ ] No orphan links (all internal links work)
- [ ] Read aloud — does it sound like Wahooka?
- [ ] Word count: 500-800 (sweet spot), 1000 max unless justified
- [ ] `npm run build` succeeds

---

## Topic Pipeline

Ideas live in `TOPIC-IDEAS.md` (this repo). Format:
```
## [Working Title]
- Angle: [the specific take]
- Hook: [opening line draft]
- Priority: 🔴 hot | 🟡 soon | 🟢 backlog
```

### Where ideas come from
1. **P42 operations** — what we learned running 42 agents
2. **Market shifts** — new models, new tools, pricing changes
3. **Client patterns** — what PMEs actually struggle with (anonymized)
4. **Counter-takes** — popular opinions that are wrong
5. **Predictions** — where this is going next (with receipts)

### What makes a GOOD topic
- Something changed in the last 7 days
- We have a unique angle (P42 experience)
- It challenges conventional wisdom
- A PME owner would forward it to their CTO/dev team

### What makes a BAD topic
- "What is [basic concept]?" — that's a wiki, not a blog
- Pure speculation with no evidence
- Topics where we don't have a unique take
- Anything that reads like a press release
