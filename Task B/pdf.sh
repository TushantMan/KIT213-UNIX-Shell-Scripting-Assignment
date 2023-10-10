#!/bin/sh

# Script name
SCRIPT_NAME=$(basename "$0")

# Temporary file to store the list of PDF files in the previous display
TMP_FILE="/tmp/$SCRIPT_NAME.tmp"

# Infinite loop to monitor the creation and removal of PDF files
while true; do

    # Get the list of PDF files in the current directory
    current_pdf_files=$(ls *.pdf *.PDF)

    # If the temporary file does not exist, create it
    if [ ! -f "$TMP_FILE" ]; then
        touch "$TMP_FILE"
    fi

    # Compare the current list of PDF files with the list of PDF files in the temporary file
    diff=$(comm -23 "$TMP_FILE" "$current_pdf_files")

    # If there are any differences, display a list of the files created or removed
    if [ -n "$diff" ]; then
        echo "The following pdf file(s) have been created in the last 3 seconds:"
        echo "$diff" | grep -v '^\s*$' | grep -E '^(.*).pdf$' | sort
        echo "The following pdf file(s) have been removed in the last 3 seconds:"
        echo "$diff" | grep -v '^\s*$' | grep -E '^(.*).pdf$' | sort -r
    else
        echo "No pdf files have been created or removed in the last 3 seconds."
    fi

    # Update the temporary file with the current list of PDF files
    echo "$current_pdf_files" > "$TMP_FILE"

    # Sleep for 3 seconds
    sleep 3
done