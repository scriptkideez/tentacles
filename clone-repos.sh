#!/bin/bash

# List of repositories to clone using SSH URLs
repos=(
        "git@github.com:name-of-your-repo1.git"
        "git@github.com:name-of-your-repo2.git"
        "git@github.com:name-of-your-repo3.git"
)

# Destination directory
destDir="<Destination-Path>"

# Create the destination directory if it doesn't exist
mkdir -p "$destDir"

# Change to the destination directory
cd "$destDir" || exit

# Clone each repository
for repo in "${repos[@]}"; do
    git clone "$repo" || echo "Failed to clone repository $repo"
done
