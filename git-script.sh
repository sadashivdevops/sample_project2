#!/bin/bash

# Get the list of all branches
branches=$(git branch -r | grep -v '\->' | sed 's/origin\///')

# Loop through each branch
for branch in $branches; do
    # Create a file with the branch name
    touch "${branch}.txt"

    # Commit the file in the same branch
    git add "${branch}.txt"
    git commit -m "Add file for branch ${branch}"

    # Push the changes to the remote repository
    git push origin "${branch}"
done



