#!/bin/bash

# Check if the file 'locked.txt' exists
if [ -f "locked.txt" ]; then
    # Check the contents of the file
    if grep -q "LOCKED" "locked.txt"; then
        echo "The file 'locked.txt' contains 'LOCKED'. Failing."
        exit 1
    else
        echo "The file 'locked.txt' does not contain 'LOCKED'. Passing."
        exit 0
    fi
else
    echo "The file 'locked.txt' does not exist. Passing."
    exit 0
fi