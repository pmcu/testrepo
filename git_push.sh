#!/bin/bash
# git_push.sh - Automate git init and push to remote

# Usage: ./git_push.sh <remote-url> [branch-name]

set -e

REMOTE_URL="$1"
BRANCH="${2:-main}"

if [ -z "$REMOTE_URL" ]; then
    echo "Usage: $0 <remote-url> [branch-name]"
    exit 1
fi

git init
git add .
git commit -m "Initial commit"
git branch -M "$BRANCH"
git remote add origin "$REMOTE_URL"
git push -u origin "$BRANCH"

echo "✅ Pushed to $REMOTE_URL on branch '$BRANCH'"

