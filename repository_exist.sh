#!/bin/bash
check_repository(){
      read -p "Enter repository you want to clone: " repo

if [ -z "$repo" ]; then
    echo "❌ Error: Repository URL not provided."
    echo "Usage: clone_if_not_exists <repo_url>"
    exit 1
fi

repo_name=$(basename "$repo" .git)

if [ -d "$repo_name" ]; then
    echo "📁 The repository '$repo_name' already exists. Skipping clone."
else
    echo "🔄 Cloning '$repo' into '$repo_name'..."

    git clone "$repo" || {
        echo "❌ Failed to clone repository."
        exit 1
    }

    echo "✅ Clone completed."
fi  
}
