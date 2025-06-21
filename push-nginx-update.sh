#!/bin/bash

echo "🌐 NGINX Config Git Updater"
read -p "Enter commit message: " msg

git add .
git commit -m "$msg"

branch=$(git branch --show-current)
git push origin "$branch"

echo "✅ NGINX config updated and pushed!"
