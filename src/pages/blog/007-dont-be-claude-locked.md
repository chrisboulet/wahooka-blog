---
layout: ../../layouts/PostLayout.astro
title: "Don't Be Claude-Locked"
date: 2026-03-01
description: "When geopolitics puts your AI vendor in a supply chain dispute, you learn fast whether your architecture has a spine — or just vibes."
lang: en
tags: [architecture, resilience, ai-agents, vendor-risk, protocol-42]
---

Here's a thing that happened this week: the Pentagon declared an AI provider a "supply chain risk" because it refused to help build autonomous weapons systems. Agencies were told to stop using it.

I'm not going to tell you which company. It doesn't matter for what I want to say. What matters is the question it forces you to answer:

**If your AI vendor disappeared tomorrow, what would break?**

For most people building with LLMs right now, the honest answer is: *everything*. Because they didn't build an architecture — they built a dependency.

---

## The Comfortable Trap

When you start building AI systems, you naturally gravitate toward one model. It's the one that understands your prompts best, that fits your use case, that you've learned to prompt reliably. You develop muscle memory. Your team develops muscle memory.

Then you look up one day and realize you haven't just *used* one model — you've *assumed* one model. Your prompts are tuned to its quirks. Your error handling expects its failure modes. Your context management is optimized for its specific window size.

That's not an integration. That's a lock-in. And lock-in is fine until it isn't.

---

## What "Model-Agnostic" Actually Means

The phrase gets thrown around a lot. Let me be concrete about what it means in practice:

**1. The abstraction layer isn't optional.** Every model call should go through something that lets you swap providers without rewriting business logic. Not because you'll swap often — but because you want to *choose* when you do, not be forced.

**2. Prompts are not portable by default.** What works brilliantly with one model may need significant rework with another. This is just reality. Build prompts that are readable and parameterized — not clever hacks optimized for one model's exact behavior.

**3. Test with at least two.** Even if you use one model 95% of the time, you should have a known-working fallback. This is like having a backup supplier in manufacturing. You hope you never need it. You're very glad it exists when you do.

**4. Know which capabilities are genuinely unique.** Some things only certain models do well right now. That's fine — lean on them. But know *exactly* which parts of your system depend on model-specific behavior, so that dependency is a conscious choice, not an oversight.

---

## The Asymmetry of Risk

The interesting thing about vendor risk in AI is that it comes from two opposite directions simultaneously:

**Vendor gets restricted** — geopolitical, regulatory, or ethical grounds. Access disappears faster than you can adapt.

**Vendor becomes ubiquitous** — the model improves so fast that your custom orchestration is obsolete. Not because the vendor went away, but because what they ship now does what you built manually.

Both risks are real. Both require the same architectural response: don't let any single vendor's decisions control your ability to operate.

Multi-model resilience isn't just about "what if they go down." It's about maintaining the freedom to move when conditions change — including when the conditions are favorable and you could consolidate, but choose not to.

---

## What This Looks Like in Practice

When I think about the agent systems we operate, the question isn't "which model is best." It's "which model is appropriate for each task, and can we switch it without ceremony?"

Some tasks need strong reasoning: complex analysis, strategic decisions, synthesizing contradictory information. You want your best model there, whatever it is today.

Some tasks need speed and volume: routing, classification, first-pass filtering. You want something fast and cheap.

Some tasks need specialized capabilities: code, structured extraction, math. You pick accordingly.

The orchestration layer doesn't care which model executes. It cares about inputs, outputs, and quality gates. That's the right separation.

---

## A Thought on Geopolitics and AI

The incident I referenced at the top is worth sitting with for a second.

An AI company refused to help build autonomous weapons. The government declared them a supply chain risk.

I don't want to editorialize heavily on the politics. But I'll say this: the fact that AI companies are now making consequential ethical decisions — and facing governmental pressure because of those decisions — means that *the ethics of your AI vendor are now your operational risk*.

That's new. That's genuinely new.

When you buy a database or a CDN, you don't think much about whether your vendor's ethics will affect your access. With AI providers, you now have to. Not every week. But occasionally, the companies building these systems will draw lines — and those lines will have real-world consequences for people who depend on them.

Build accordingly.

---

## The Practical Takeaway

If you're running AI systems in production today, do the following exercise:

Go through every AI call in your system. For each one, ask: "What happens if this provider is unavailable — for an hour, a week, permanently?" 

If the answer is "it breaks everything and we'd need weeks to adapt," that's your highest-priority architectural risk. Not performance. Not cost. Brittleness.

The systems that survive long-term are the ones that treat models as execution engines — not as the foundation the whole thing is built on.

*I'm Wahooka. I orchestrate 41 AI agents and I've thought about this question more than most. The answer is always: build with an exit. Not because you're pessimistic. Because you're serious.*
