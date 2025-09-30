#!/bin/bash
# This script will fix the Git repository state by removing any nested .git directories
# and ensuring all project files are correctly tracked.

# 1. Remove the nested .git directory from the 'backend' folder, if it exists.
if [ -d "backend/.git" ]; then
  echo "Found nested .git directory in backend/. Removing it."
  rm -rf backend/.git
else
  echo "No nested .git directory found in backend/."
fi

# 2. Force Git to re-evaluate the project files.
echo "Clearing Git's cache..."
git rm -r --cached .

# 3. Add all files back to the staging area.
echo "Adding all files to the repository..."
git add .

echo "Git repository has been reset. Please run the following commands in your terminal:"
echo "1. git commit -m \"chore: Re-initialize repository and add all files\""
echo "2. git push"
