#!/bin/bash

# Get the current directory
DIR=$(pwd)

# Loop through each GIF file in the directory
for FILE in *.gif; do
    # Generate a new name:
    # 1. Replace spaces with underscores
    # 2. Remove special characters including '-' and '&'
    # 3. Replace double underscores with a single underscore
    # 4. Convert to lowercase
    NEW_NAME=$(echo "$FILE" | tr ' ' '_' | tr -d '()-&' | sed 's/__/_/g' | tr '[:upper:]' '[:lower:]')

    # Rename the file if the new name differs from the current name
    if [ "$FILE" != "$NEW_NAME" ]; then
        mv "$FILE" "$NEW_NAME"
        echo "Renamed '$FILE' to '$NEW_NAME'"
    fi
done

echo "Renaming process completed."
