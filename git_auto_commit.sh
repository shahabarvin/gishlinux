#!/bin/bash

# Prompt for commit message
read -p "Enter commit message (or press Enter for default): " commitMessage

# Check if the commitMessage is empty
if [ -z "$commitMessage" ]; then
    commitMessage="Auto-commit on $(date +'%Y-%m-%d_%H-%M-%S')"
fi

git add .
git commit -m "$commitMessage"
git push
