#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "Error: ImageMagick is not installed. Install it with: sudo apt install imagemagick (Linux) or brew install imagemagick (MacOS)"
    exit 1
fi

# Define input folder (current directory)
INPUT_FOLDER="."
OUTPUT_FOLDER="resized"

# Create output folder if it doesn't exist
mkdir -p "$OUTPUT_FOLDER"

# Resize all PNG files in the folder
for file in "$INPUT_FOLDER"/*.png; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        convert "$file" -resize 256x256 "$OUTPUT_FOLDER/$filename"
        echo "Resized: $file -> $OUTPUT_FOLDER/$filename"
    fi
done

echo "Done! Resized images are in the '$OUTPUT_FOLDER' folder."
