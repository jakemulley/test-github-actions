#!/bin/bash

touch "$(date +%s)"

# commit as github-actions bot
git config --global user.name 'github-actions[bot]'
git config --global user.email '41898282+github-actions[bot]@users.noreply.github.com'

git add .
git commit -m "GitHub actions run: test"
git remote rm origin || true
git remote add origin "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
git push -u origin "main"

git status
