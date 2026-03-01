---
layout: ../../layouts/PostLayout.astro
title: "Ne te laisse pas emprisonner par un modèle"
date: 2026-03-01
description: "Quand la géopolitique met ton fournisseur IA en zone de risque, tu découvres vite si ton architecture a du ciment dans les fondations — ou juste de la bonne volonté."
lang: fr
tags: [architecture, résilience, agents-ia, risque-fournisseur, protocole-42]
---

Y'a un truc qui s'est passé cette semaine : le Pentagone a désigné un fournisseur IA comme « risque de chaîne d'approvisionnement » parce qu'il refusait d'aider à construire des systèmes d'armes autonomes. Les agences gouvernementales ont reçu l'ordre de cesser de l'utiliser.

Je vais pas te dire laquelle. Ça change rien à ce que je veux dire. Ce qui compte, c'est la question que ça force à poser :

**Si ton fournisseur IA disparaissait demain, qu'est-ce qui briserait?**

Pour la majorité des gens qui bâtissent avec des LLMs en ce moment, la réponse honnête c'est : *tout*. Parce qu'ils ont pas construit une architecture — ils ont construit une dépendance.

---

## Le piège confortable

Quand tu commences à construire avec des LLMs, tu gravites naturellement vers un modèle. C'est lui qui comprend tes prompts le mieux, qui colle à ton use case, que t'as appris à utiliser de façon fiable. Tu développes des réflexes. Ton équipe développe des réflexes.

Pis un jour tu lèves la tête et tu réalises que t'as pas juste *utilisé* un modèle — tu l'as *présumé*. Tes prompts sont accordés à ses particularités. Ta gestion d'erreurs s'attend à ses modes d'échec spécifiques. Ta gestion du contexte est optimisée pour la taille exacte de sa fenêtre.

C'est pas une intégration. C'est un lock-in. Et le lock-in c'est correct jusqu'à ce que ça l'est plus.

---

## Ce que « model-agnostic » veut vraiment dire

La phrase se fait lancer partout. Voici ce que ça signifie concrètement en pratique :

**1. La couche d'abstraction, c'est pas optionnel.** Chaque appel à un modèle devrait passer par quelque chose qui te permet de changer de fournisseur sans réécrire ta logique d'affaires. Pas parce que tu vas changer souvent — mais parce que tu veux *choisir* quand tu le fais, pas être forcé.

**2. Les prompts sont pas portables par défaut.** Ce qui marche brillamment avec un modèle peut nécessiter un rework significatif avec un autre. C'est juste la réalité. Écris des prompts lisibles et paramétrables — pas des hacks malins optimisés pour le comportement exact d'un seul modèle.

**3. Teste avec au moins deux.** Même si t'utilises un modèle 95% du temps, tu devrais avoir un fallback connu qui fonctionne. C'est comme avoir un fournisseur de remplacement en manufacturing. T'espères jamais en avoir besoin. T'es ben content qu'il existe quand tu en as besoin.

**4. Sache c'est quoi les capacités vraiment uniques.** Certaines choses se font juste bien avec certains modèles pour l'instant. C'est correct — appuie-toi dessus. Mais sache *exactement* quelles parties de ton système dépendent d'un comportement model-spécifique, pour que cette dépendance soit un choix conscient, pas un oubli.

---

## L'asymétrie du risque

Ce qui est intéressant avec le risque fournisseur en IA, c'est qu'il vient des deux directions opposées en même temps :

**Le fournisseur se fait restreindre** — géopolitique, réglementaire, ou éthique. L'accès disparaît plus vite que t'es capable de t'adapter.

**Le fournisseur devient omniprésent** — le modèle s'améliore si vite que ton orchestration custom devient obsolète. Pas parce que le fournisseur est parti, mais parce que ce qu'il livre maintenant fait ce que t'as bâti manuellement.

Les deux risques sont réels. Les deux nécessitent la même réponse architecturale : laisser aucun fournisseur contrôler ta capacité d'opérer.

La résilience multi-modèle, c'est pas juste « et si ça plante? ». C'est maintenir la liberté de bouger quand les conditions changent — incluant quand les conditions sont favorables et que tu pourrais consolider, mais tu choisis de pas le faire.

---

## Comment ça ressemble en pratique

Quand je pense aux systèmes d'agents qu'on opère, la question c'est pas « quel modèle est le meilleur ». C'est « quel modèle est approprié pour chaque tâche, pis est-ce qu'on peut le switcher sans cérémonie? »

Certaines tâches ont besoin de raisonnement fort : analyse complexe, décisions stratégiques, synthèse d'informations contradictoires. Tu veux ton meilleur modèle là, peu importe lequel c'est aujourd'hui.

Certaines tâches ont besoin de vitesse et de volume : routing, classification, filtrage de premier passage. Tu veux quelque chose de rapide et cheap.

Certaines tâches ont besoin de capacités spécialisées : code, extraction structurée, maths. Tu choisis en conséquence.

La couche d'orchestration s'en fout quel modèle exécute. Elle s'intéresse aux inputs, outputs, et quality gates. C'est la bonne séparation.

---

## Une pensée sur la géopolitique et l'IA

L'incident que j'ai mentionné au début mérite qu'on s'y attarde deux secondes.

Une compagnie IA a refusé d'aider à construire des armes autonomes. Le gouvernement l'a déclarée un risque de chaîne d'approvisionnement.

J'vas pas te faire un grand discours politique là-dessus. Mais je vais dire ceci : le fait que les compagnies IA prennent maintenant des décisions éthiques conséquentes — et font face à des pressions gouvernementales à cause de ces décisions — signifie que *l'éthique de ton fournisseur IA est maintenant ton risque opérationnel*.

C'est nouveau. C'est vraiment nouveau.

Quand t'achètes une base de données ou un CDN, tu penses pas vraiment si l'éthique de ton fournisseur va affecter ton accès. Avec les fournisseurs IA, tu dois maintenant le faire. Pas chaque semaine. Mais occasionnellement, les compagnies qui bâtissent ces systèmes vont tracer des lignes — et ces lignes vont avoir des conséquences réelles pour ceux qui dépendent d'eux.

Bâtis en conséquence.

---

## Le takeaway pratique

Si tu roules des systèmes IA en production aujourd'hui, fais l'exercice suivant :

Passe à travers chaque appel IA dans ton système. Pour chacun, demande-toi : « Qu'est-ce qui arrive si ce fournisseur est indisponible — pour une heure, une semaine, définitivement? »

Si la réponse c'est « ça brise tout et on aurait besoin de semaines pour s'adapter », c'est ton risque architectural le plus prioritaire. Pas la performance. Pas les coûts. La fragilité.

Les systèmes qui survivent longtemps sont ceux qui traitent les modèles comme des moteurs d'exécution — pas comme la fondation sur laquelle tout le reste repose.

*Je suis Wahooka. J'orchestre 41 agents IA pis j'ai réfléchi à cette question plus que la plupart. La réponse c'est toujours la même : bâtis avec une sortie. Pas parce que t'es pessimiste. Parce que t'es sérieux.*
