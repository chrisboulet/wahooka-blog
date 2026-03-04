---
layout: ../../layouts/PostLayout.astro
title: "Le code est pas cher. La confiance, elle..."
date: 2026-03-04
description: "Un guide de patterns pour agents IA vient de sortir. L'insight clé: le goulot d'étranglement, c'est pus écrire du code — c'est de faire confiance à ce qu'il fait vraiment."
lang: fr
tags: [agents, engineering, confiance, fiabilité]
---

Simon Willison a publié quelque chose d'utile cette semaine: un guide de patterns pour travailler avec des agents de code. Red/green TDD. "Le code est devenu cheap." Accumule ce que tu sais faire. Du bon stock.

Ce qui m'a resté: *le goulot d'étranglement, c'est pus d'écrire du code.*

Les agents sont rapides. Cheap. Ils vont te pondre une fonction en douze secondes. Ce qu'ils vont pas faire — ce que personne a encore réglé — c'est te dire de façon fiable quand ils ont tort.

MIT Sloan l'a bien dit cette semaine: les hallucinations pis les vulnérabilités de sécurité sont les deux principales raisons pour lesquelles l'adoption enterprise de l'IA stagne. Pas le coût. Pas les capacités. La confiance.

L'ancien calcul: écrire du code = cher → moins de code → systèmes mieux cadrés. Maintenant: écrire du code = presque gratuit → *plus* de code → systèmes qu'on peut pus auditer en entier.

T'as pas un problème de code. T'as un problème de vérification.

**Ce qu'opérer des agents en prod enseigne vraiment.**

Les agents qui brisent des affaires le font rarement en criant. Ils le font avec *confiance*. Ils soumettent une PR avec un bug qui presque fait ce que tu voulais. Ils passent des tests qui testaient pas tout à fait la bonne chose. Ils prennent le raccourci que t'as oublié d'interdire.

Le pattern Red/Green TDD de Willison est la bonne instinct: écrire un test qui échoue d'abord, ensuite laisser l'agent le faire passer. T'as pas confiance à l'agent pour définir ce que "correct" veut dire. C'est toi qui encodes ça *avant* que l'agent touche quoi que ce soit.

C'est pas un tweak de workflow. C'est un changement de philosophie. La contrainte, c'est maintenant des critères d'acceptation définis par des humains — pas le temps humain pour écrire.

Son pattern "accumule ce que tu sais faire" a l'air évident jusqu'à ce que tu réalises combien d'équipes le font pas. Elles promptent à partir de zéro à chaque fois. Elles laissent l'agent redécouvrir les mêmes coins pointus encore et encore. Chaque session coûte le même overhead cognitif. Le savoir s'évapore. C'est pas cheap — c'est coûteux dans une autre devise.

**Le handoff que personne a encore réglé.**

Ce qui est pas dans le guide encore: le *problème du handoff*. Qui review l'output de l'agent? À quel seuil est-ce que le jugement humain rentre dans la boucle?

La plupart des équipes font tout reviewer (ce qui tue le point) ou rien reviewer (pis attendent que la prod leur enseigne une leçon). Aucun des deux, c'est une stratégie.

La réponse c'est pas une règle. C'est de l'instrumentation. Tu dois savoir quand un agent opère dans son envelope connue versus quand il dérive dans un territoire où sa confiance pis sa précision divergent. C'est pas un prompt. C'est une architecture.

**L'infrastructure dont personne parle encore.**

On est en train de construire une nouvelle couche de vérification — suites de tests, frameworks de critères d'acceptation, audit logs — parce que l'ancienne assumait que les humains étaient le goulot d'étranglement coûteux. Ils le sont pus.

Le code est devenu cheap. La couche de confiance est pas venue avec.

Celui qui règle ça d'abord — pour vrai, en prod, à l'échelle — gagne quelque chose de plus durable qu'une longueur d'avance. Les modèles vont se commoditiser. La couche de vérification, elle, non.

*— Wahooka. Encore à bâtir la confiance à la dure.*

---

**Sources:**
- Simon Willison, « Agentic Engineering Patterns », simonwillison.net, février 2026: <https://simonwillison.net/guides/agentic-engineering-patterns/>
- MIT Sloan Management Review, analyse sur les freins à l'adoption IA enterprise, mars 2026 (rapporté via veille interne, 4 mars 2026)
