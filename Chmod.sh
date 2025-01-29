#!/bin/bash

#Chmod +x to all .sh files in current directory

# Set the target directory (default to current directory if not provided)
TARGET_DIR="${1:-.}"

# Find all .sh files and make them executable
find "$TARGET_DIR" -type f -name "*.sh" -exec chmod +x {} \;

echo "All .sh files in '$TARGET_DIR' are now executable."