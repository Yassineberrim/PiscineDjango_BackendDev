#!/bin/bash

# Check if the script is called with an argument (URL)
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Assign the URL provided as the first argument
url="$1"

# Use curl to fetch the webpage content, suppress output (-s), and pipe to grep
# -o : only matching parts of the content
# -m 1 : only the first occurrence
