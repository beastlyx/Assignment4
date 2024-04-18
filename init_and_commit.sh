#!/bin/bash

# Assuming you have a list of directories in a file called dirs.txt
while read directory; do
  echo "Operating in $directory"
  cd "$directory"                # Change to the directory
  git init                       # Initialize Git repository
  git add .                      # Add all files in the directory
  git commit -m "Initial commit" # Commit with a message
  cd -                           # Return to the original directory
done < dirs.txt
