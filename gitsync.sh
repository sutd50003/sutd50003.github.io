#!/bin/bash

# Check if exactly two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Incorrect number of arguments."
    echo "Usage: ./gitsync.sh <file_to_add> \"<commit_message>\""
    exit 1
fi

FILE=$1
MESSAGE=$2

# Execute the git commands
echo "Adding $FILE..."
git add "$FILE"

echo "Committing with message: $MESSAGE..."
git commit -m "$MESSAGE"

echo "Pushing to remote..."
git push

echo "Done!"
