#!/bin/bash +x
wget https://raw.githubusercontent.com/mevan-karu/pom_version_property_finder/master/src/version_property_finder.py
echo ""
echo "=========================================================="
echo "    PR_LINK: $PR_LINK"

USER=$(echo $PR_LINK | awk -F'/' '{print $4}')
REPO=$(echo $PR_LINK | awk -F'/' '{print $5}')
PULL_NUMBER=$(echo $PR_LINK | awk -F'/' '{print $7}')
PR_LINK=${PR_LINK%/}
echo "Trimmed $PR_LINK"

# ::set-output name={name}::{value}

echo "    USER: $USER"
echo "    REPO: $REPO"
echo "    PULL_NUMBER: $PULL_NUMBER"
echo "::set-output name=REPON::$REPO"
echo "=========================================================="
