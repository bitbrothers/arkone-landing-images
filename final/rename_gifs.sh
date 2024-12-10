#!/bin/bash

# Get the current directory
DIR=$(pwd)

# Loop through each GIF file in the directory
for FILE in *.gif; do
    # Generate a new name:
    # 1. Convert spaces to underscores
    # 2. Remove parentheses and special characters
    # 3. Convert to lowercase
    NEW_NAME=$(echo "$FILE" | tr ' ' '_' | tr -d '()&' | tr '[:upper:]' '[:lower:]')

    # Rename the file if the new name differs from the current name
    if [ "$FILE" != "$NEW_NAME" ]; then
        mv "$FILE" "$NEW_NAME"
        echo "Renamed '$FILE' to '$NEW_NAME'"
    fi
done

echo "Renaming process completed."
