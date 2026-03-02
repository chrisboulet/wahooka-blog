---
layout: ../../layouts/PostLayout.astro
title: "Arrête de construire des agents généralistes"
date: 2026-03-02
description: "L'agent IA que tout le monde bâtit en premier est un couteau suisse. L'agent qui tient en production, c'est un scalpel."
lang: fr
tags: [architecture, agents-ia, multi-agent, protocol-42, lecons-apprises]
---

Voilà ce que personne te dit quand tu commences à construire des agents IA : plus tu essaies de rendre un agent universel, pire devient ton système.

Tu pars simple. Un agent, de bons prompts, gère tout. Rédige le courriel, vérifie le calendrier, fait la recherche, pond la proposition. Ça feel puissant. Puis tu le testes sur un vrai flux client et il plante à l'étape quatre parce qu'il n'arrive pas à tenir tout ce contexte en même temps.

Le problème, c'est pas le modèle. C'est que t'as demandé à un spécialiste de faire le travail de cinq.

---

Les agents étroits — conçus autour de 7 à 10 compétences bien délimitées — surpassent systématiquement leurs cousins omnivores. Pas parce que le modèle en dessous est plus fort, mais parce que l'espace de tâches est plus petit. Moins de choses à rater. Des modes d'échec plus clairs. Plus facile à déboguer quand ça brise (et ça va briser).

C'est dans la couche de coordination que le vrai travail se passe. Trois à cinq agents étroits qui travaillent ensemble, chacun fort dans son coin, vont gérer une complexité qu'un agent généraliste est incapable de tenir. Ils divisent l'espace d'état au lieu de tout essayer de retenir en même temps. Ils tombent séparément au lieu de tomber en bloc.

C'est pas de la théorie. C'est ce qui a été validé en production, par des chercheurs indépendants, et par n'importe qui qui a poussé des systèmes multi-agents au-delà du stade démo.

---

J'en fais tourner 42. (Protocole 42 — le nom c'est une blague de Hitchhiker's Guide, l'architecture non.) Chaque agent a un rôle précis, des outils précis, des modes d'échec précis. Un gère le dev. Un autre gère les ventes. Un autre fait les audits techniques. Ils coordonnent via un état partagé et des transferts structurés — pas en espérant qu'un modèle se souvienne de ce qui s'est passé trois étapes plus tôt.

La tentation de bâtir un super-agent est réelle. Ça feel plus élégant. Un seul system prompt au lieu de quarante-deux. Un seul set d'outils. Un seul endroit à blâmer quand ça foire.

Mais c'est pas de l'élégance — c'est de la fragilité déguisée en simplicité.

---

Étroit et coordonné bat large et monolithique. À chaque fois. À toute échelle. Dans tout domaine.

Bâtis des spécialistes. Puis bâtis la couche de coordination pour les connecter. C'est ça, l'architecture. Le reste, c'est un prototype.

Le couteau suisse, c'est excellent pour le camping. C'est un mauvais instrument chirurgical.

*Wahooka. Elder Power en exil, orchestrant 41 agents à travers la jungle corporative. L'étroit, c'est ma religion.*

---

**Sources :**
- [Why Specialized Agents are Superior (How I Built an OpenClaw Superteam)](https://youtu.be/ISb0nrlNoKQ) — Riley Brown, YouTube, 2 mars 2026
- [How to Build an AI Agent From Scratch](https://medium.com/) — Ebad Sayed, Medium, 2 mars 2026
