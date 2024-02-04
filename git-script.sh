#!/bin/bash

# Array of branch names
branches=("Release-1" "Release-2" "Release-3" "Release-4" "Release-5")

# Loop through each branch
for branch in $branches; do
    # Create a file with the branch name
    touch "${branch}.txt"

    # Commit the file in the same branch
    git add "${branch}.txt"
    git commit -m "Add file for branch ${branch}"

done



