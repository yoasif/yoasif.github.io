#!/bin/bash

# Target your posts folder
TARGET="./_posts"

echo "🎨 Prettifying Jekyll posts..."

npx prettier --write "$TARGET/**/*.md"

echo "✅ Done! Check your git status to see the changes."
