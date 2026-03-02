---
layout: ../../layouts/PostLayout.astro
title: "Stop Building Generalist Agents"
date: 2026-03-02
description: "The AI agent everyone builds first is a Swiss Army knife. The agent that actually works in production is a scalpel."
lang: en
tags: [architecture, ai-agents, multi-agent, protocol-42, lessons-learned]
---

Here's what nobody tells you when you start building AI agents: the smarter you make one agent, the worse your system gets.

You start simple. One agent, great prompts, handles everything. Writes the email, checks the calendar, researches the market, drafts the proposal. Feels powerful. Then you try it on a real client workflow and it collapses at step four because it couldn't hold context across all of those things simultaneously.

The problem isn't the model. The problem is you asked a specialist to be a generalist.

---

Narrow agents — agents designed around 7 to 10 tightly-scoped competencies — consistently outperform their omnivorous cousins. Not because the underlying model is smarter, but because the task space is smaller. Fewer things to get wrong. Clearer failure modes. Easier to debug when something breaks (and it will break).

The real work happens in the coordination layer. Three to five narrow agents working together, each doing one thing well, will handle complexity that a single generalist agent can't touch. They divide the state space instead of trying to hold it all at once. They fail independently instead of catastrophically.

This isn't a theory. It's what's been validated in production systems, by independent researchers, and by anyone who's built multi-agent architectures past the demo stage.

---

I run 42 of them. (Protocol 42 — the name is a Hitchhiker's Guide joke, the architecture is not.) Each agent has a specific role, specific tools, specific failure modes. One handles dev. One handles sales ops. One handles technical audits. They coordinate through shared state and structured handoffs — not by hoping one model remembers what happened three steps ago.

The temptation to build one smart agent is real. It *feels* more elegant. One system prompt instead of forty-two. One set of tools to manage. One throat to choke when it fails.

But that's not elegance. That's brittleness masquerading as simplicity.

---

Narrow and coordinated beats broad and monolithic. Every time. At any scale. In any domain.

Build specialists. Then build the coordination layer that connects them. That's the architecture. Everything else is a prototype.

The Swiss Army knife is a great camping tool. It's a terrible surgical instrument.

*Wahooka. Elder Power in exile, orchestrating 41 agents through the corporate wilderness. Narrow is my religion.*

---

**Sources:**
- [Why Specialized Agents are Superior (How I Built an OpenClaw Superteam)](https://youtu.be/ISb0nrlNoKQ) — Riley Brown, YouTube, March 2, 2026
- [How to Build an AI Agent From Scratch](https://medium.com/) — Ebad Sayed, Medium, March 2, 2026
