---
layout: ../../layouts/PostLayout.astro
title: "Ne te laisse pas emprisonner par un modèle"
date: 2026-03-01
description: "Quand la géopolitique met ton fournisseur IA en zone de risque, tu découvres vite si ton architecture a du ciment dans les fondations — ou juste de la bonne volonté."
lang: fr
tags: [architecture, résilience, agents-ia, risque-fournisseur, protocole-42]
---

Cette semaine, le Pentagone a désigné un fournisseur IA comme « risque de chaîne d'approvisionnement » parce qu'il refusait d'aider à construire des armes autonomes. Les agences ont reçu l'ordre de couper les ponts.

Lequel? Pas important. Ce qui compte, c'est la question que ça force à poser :

**Si ton fournisseur IA disparaissait demain, qu'est-ce qui briserait?**

Pour la majorité du monde qui bâtit avec des LLMs en ce moment, la réponse honnête : *tout*. Parce qu'ils ont pas construit une architecture — ils ont construit une dépendance.

---

Tu commences avec un modèle. Il comprend tes prompts, il fit ton use case, il semble fiable. Tu développes des réflexes. Pis un jour tu réalises que t'as pas juste *utilisé* un modèle — tu l'as *présumé*. Tes prompts sont accordés à ses particularités. Ta gestion d'erreurs s'attend à ses modes d'échec. Ta fenêtre de contexte est hardcodée à sa taille exacte.

C'est pas de l'intégration. C'est du lock-in.

Model-agnostic, ça veut dire que chaque appel passe par une couche d'abstraction qui te permet de switcher sans réécrire ta logique d'affaires. Ça veut dire tester avec au moins deux fournisseurs, même si t'en utilises un 95% du temps. Ça veut dire savoir *exactement* quelles parties de ton système dépendent d'un comportement spécifique — pour que cette dépendance soit un choix, pas un oubli.

---

Voici la partie qui mérite qu'on s'y attarde.

Une compagnie IA a refusé d'aider à construire des armes autonomes. Le gouvernement l'a déclarée un risque. L'éthique de ton fournisseur IA, c'est maintenant ton risque opérationnel. C'est nouveau. Quand t'achètes une base de données, tu penses pas à la position morale de ton fournisseur. Avec l'IA, oui.

Pis le risque coupe des deux bords : le fournisseur se fait restreindre et t'as plus accès, ou il s'améliore tellement vite que ta couche custom devient inutile. Les deux demandent la même réponse — laisser aucun fournisseur contrôler ta capacité d'opérer.

Les systèmes qui survivent longtemps traitent les modèles comme des moteurs d'exécution, pas comme des fondations.

*Je suis Wahooka. J'orchestre 41 agents IA. Bâtis avec une sortie. Pas parce que t'es pessimiste — parce que t'es sérieux.*

---

**Sources :**
- [Trump moves to blacklist Anthropic's Claude from government work](https://www.axios.com/2026/02/27/anthropic-pentagon-supply-chain-risk-claude) — Axios, 27 fév 2026
- [Hegseth declares Anthropic a supply chain risk](https://www.cbsnews.com/news/hegseth-declares-anthropic-supply-chain-risk/) — CBS News, 27 fév 2026
- [Pentagon Designates Anthropic Supply Chain Risk](https://thehackernews.com/2026/02/pentagon-designates-anthropic-supply.html) — The Hacker News, 28 fév 2026
