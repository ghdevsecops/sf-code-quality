#!/bin/bash
# Get list of Staged file names (only Apex Class, Apex Triggers and LWC) and save it in code-scan/diff-files.txt file
git diff --name-only --cached --diff-filter=d 'force-app/main/default/classes/*.cls' 'force-app/main/default/lwc/*.js' 'force-app/main/default/triggers/*.trigger' > code-scan/diff-files.txt
# Check if code-scan/diff-files.txt file is created or not
if [ -f "code-scan/diff-files.txt" ]; then
    # Store diff-files.txt path in diffFile string"
    diffFile="code-scan/diff-files.txt"
    # Store each line of diff-files.txt in diffFileList string
    diffFileList=""
   # Loop each line of diff-files.txt and append to diffFileList string
    while IFS= read -r line; do
        if [ -n "$diffFileList" ]; then
            diffFileList+=","
        fi
        diffFileList+="$line"
    done < "$diffFile"
    # Check if diffFileList string is empty else run code scan command
    if [  -z "$diffFileList" ]; then
        echo "Error: Can't run Code Scan as there are no staged ApexClass/ApexTriggers/LWC files"
    else
        sfdx scanner:run --engine pmd,eslint --format html --outfile code-scan/code-scan-report.html --target "$diffFileList"
        # Check if code-scan/code-scan-report.html file is created or not
        if [ -f "code-scan/code-scan-report.html" ]; then
            start code-scan/code-scan-report.html
        else
            echo "Error:  Code Scan Report (code-scan-report.html) is not generated"
        fi
    fi
    # Delete 'diff-files.txt' file in code-scan folder
    rm -rf code-scan/diff-files.txt
else
    echo "Error: Can't get the list of Staged files and save into diff-files.txt" 
fi