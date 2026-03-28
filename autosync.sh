#!/bin/bash

VAULT_PATH="/Users/jeonjinyong/Library/Mobile Documents/iCloud~md~obsidian/Documents/MyVault/my-blog"
QUARTZ_PATH="$HOME/Desktop/my-blog-site"

echo "👀 Watching for changes in $VAULT_PATH..."

fswatch -o "$VAULT_PATH" | while read change; do
  echo "📝 Change detected — syncing to GitHub..."
  cd "$QUARTZ_PATH"
  npx quartz sync
  echo "✅ Done! Blog updated."
done
