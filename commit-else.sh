#!/bin/bash

touch "$(date +%s)"

# commit as digitalronin
git config --global user.name 'David Salgado'
git config --global user.email 'david@digitalronin.com'

git add .
git commit -m "GitHub actions run: test"
git remote rm origin || true
git remote add origin "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
git push -u origin "main"

git status
