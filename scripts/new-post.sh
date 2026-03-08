#!/bin/bash
# new-post.sh — Scaffold a new bilingual blog post pair
# Usage: ./scripts/new-post.sh "english-slug" "English Title" "Titre Français" "EN description" "FR description" "tag1,tag2,tag3"

set -euo pipefail

BLOG_DIR="src/pages/blog"

if [ $# -lt 3 ]; then
  echo "Usage: $0 \"slug\" \"EN Title\" \"FR Title\" [\"EN desc\"] [\"FR desc\"] [\"tag1,tag2\"]"
  echo "Example: $0 \"context-engineering-moat\" \"The Context Engineering Moat\" \"Le fossé de l'ingénierie contextuelle\""
  exit 1
fi

SLUG="$1"
EN_TITLE="$2"
FR_TITLE="$3"
EN_DESC="${4:-$EN_TITLE}"
FR_DESC="${5:-$FR_TITLE}"
TAGS_RAW="${6:-strategy}"

# Convert comma-separated tags to YAML array
TAGS=$(echo "$TAGS_RAW" | sed 's/,/, /g')

# Find next number (highest existing + 1)
LAST=$(ls "$BLOG_DIR"/*.md 2>/dev/null | grep -oP '^\d+' | sort -n | tail -1 || echo "0")
LAST=$(ls "$BLOG_DIR"/*.md 2>/dev/null | sed 's|.*/||' | grep -oP '^\d+' | sort -n | tail -1 || echo "0")
LAST=$((10#$LAST))  # Remove leading zeros

# EN = odd, FR = even
if (( LAST % 2 == 0 )); then
  EN_NUM=$((LAST + 1))
else
  EN_NUM=$((LAST + 2))
fi
FR_NUM=$((EN_NUM + 1))

EN_PAD=$(printf "%03d" $EN_NUM)
FR_PAD=$(printf "%03d" $FR_NUM)

DATE=$(date +%Y-%m-%d)

EN_FILE="$BLOG_DIR/${EN_PAD}-${SLUG}.md"
FR_FILE="$BLOG_DIR/${FR_PAD}-${SLUG}-fr.md"

# Create EN post
cat > "$EN_FILE" << EOF
---
layout: ../../layouts/PostLayout.astro
title: "${EN_TITLE}"
date: ${DATE}
description: "${EN_DESC}"
lang: en
tags: [${TAGS}]
---

<!-- HOOK: Start with a fact, surprise, or provocation. No warming up. -->



<!-- THESIS: Your bold take in 1-2 sentences. -->



<!-- EVIDENCE: Real examples. P42 experience. Specifics. -->



<!-- TURN: The non-obvious implication. What most people miss. -->



<!-- CLOSE: Challenge, redirect, or punchline. Never a summary. -->

EOF

# Create FR post
cat > "$FR_FILE" << EOF
---
layout: ../../layouts/PostLayout.astro
title: "${FR_TITLE}"
date: ${DATE}
description: "${FR_DESC}"
lang: fr
tags: [${TAGS}]
---

<!-- HOOK: Commencer avec un fait, une surprise, ou une provocation. -->



<!-- THÈSE: Ton take audacieux en 1-2 phrases. -->



<!-- PREUVES: Exemples réels. Expérience P42. Détails concrets. -->



<!-- TOURNANT: L'implication non-évidente. Ce que le monde manque. -->



<!-- CLOSE: Défi, redirection, ou punchline. Jamais un résumé. -->

EOF

echo "✅ Created:"
echo "   EN: $EN_FILE (#${EN_NUM})"
echo "   FR: $FR_FILE (#${FR_NUM})"
echo ""
echo "📝 Next steps:"
echo "   1. Write the EN post"
echo "   2. Rewrite (not translate!) the FR post"
echo "   3. Review against WRITING-GUIDE.md checklist"
echo "   4. npm run build && git add -A && git commit && git push"
