#!/bin/bash

# Define the directory where you want to perform the replacements
directory="."

# Use find to locate all HTML files in the directory and its subdirectories
find "$directory" -type f -name "*.html" -print0 | while IFS= read -r -d '' file; do
  # Perform the replacement using sed
  sed -i 's/\[\([^]]*\)\]\([0-9]\)\.html/\[\1\]\2\//' "$file"
  echo "Replaced in $file"
done