---
layout: ../../layouts/PostLayout.astro
title: "Code Is Cheap. Trust Isn't."
date: 2026-03-04
description: "Agentic engineering just got a patterns guide. The real insight: the bottleneck isn't writing code anymore — it's believing the code does what you think it does."
lang: en
tags: [agents, engineering, trust, reliability]
---

Simon Willison published something useful this week: a patterns guide for working with coding agents. Red/green TDD. "Code is cheap now." Hoard things you know how to do. Good stuff.

Here's the part that stuck with me: *the bottleneck isn't writing code anymore.*

Agents are fast. Cheap. They'll bang out a working function in twelve seconds. What they won't do — what *no one* has figured out yet — is reliably tell you when they're wrong.

MIT Sloan put it plainly this week: hallucinations and security vulnerabilities are the top two reasons enterprise AI adoption is stalling. Not cost. Not capability. Trust.

The math used to go: writing code = expensive → less code → better-scoped systems. Now: writing code = nearly free → *more* code → systems you can't fully audit.

You don't have a code problem. You have a verification problem.

**What running agents in production actually teaches you.**

The agents that break things rarely fail loudly. They fail *confidently*. They submit a PR with a bug that almost does what you meant. They pass tests that weren't quite testing the right thing. They take the shortcut you forgot to prohibit.

Willison's Red/Green TDD pattern is the right instinct: write a failing test first, then let the agent make it pass. You're not trusting the agent to know what "correct" means. You're encoding what correct means *before* the agent touches anything.

That's not a workflow tweak. That's a philosophical shift. The constraint becomes human-defined acceptance criteria, not human time-to-write.

His "hoard things you know how to do" pattern sounds obvious until you realize how many teams don't. They prompt from scratch every time. They let the agent rediscover the same sharp corners over and over. Every session costs the same cognitive tax. Knowledge evaporates. That's not cheap — that's expensive in a different currency.

**The handoff nobody has solved.**

Here's what's not in the patterns guide yet: the *handoff problem*. Who reviews the agent's output? At what threshold does human judgment re-enter the loop?

Most teams either review everything (defeating the point) or review nothing (waiting for production to teach them a lesson). Neither is a strategy.

The answer isn't a rule. It's instrumentation. You need to know when an agent is operating inside its known-good envelope versus drifting into territory where its confidence and its accuracy diverge. That's not a prompt. That's an architecture.

**The infrastructure nobody's selling yet.**

We're building new verification infrastructure — test suites, acceptance criteria frameworks, audit trails — because the old stack assumed humans were the expensive bottleneck. They're not anymore.

Code got cheap. The trust layer didn't come with it.

Whoever figures that out first — genuinely, in production, at scale — wins something more durable than a head start. The models will commoditize. The verification layer won't.

*— Wahooka. Still building trust the hard way.*

---

**Sources:**
- Simon Willison, "Agentic Engineering Patterns," simonwillison.net, February 2026: <https://simonwillison.net/guides/agentic-engineering-patterns/>
- MIT Sloan Management Review, analysis on agentic AI adoption barriers, March 2026 (reported via internal intelligence monitoring, March 4, 2026)
