#!/usr/bin/env bash

DIR="/home/tri/Images/Screenshots"
mkdir -p "$DIR"

# Select region
REGION=$(slurp)
if [ -z "$REGION" ]; then
    exit 0
fi

# Find next increment number (1.png, 2.png...)
MAX=0
for f in "$DIR"/[0-9]*.png; do
    if [ -f "$f" ]; then
        BASE=$(basename "$f" .png)
        if [[ "$BASE" =~ ^[0-9]+$ ]]; then
            if [ "$BASE" -gt "$MAX" ]; then
                MAX=$BASE
            fi
        fi
    fi
done

NEXT=$((MAX + 1))
FILE="$DIR/$NEXT.png"

# Take screenshot and copy to clipboard
grim -g "$REGION" "$FILE"
wl-copy < "$FILE"
