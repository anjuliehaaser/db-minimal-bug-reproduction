#!/bin/bash

# Check if environment variables are set
if [ -z "$VERCEL_ORG_ID" ] || [ -z "$VERCEL_PROJECT_ID" ]; then
  echo "Error: Missing environment variable. Please ensure that VERCEL_ORG_ID and VERCEL_PROJECT_ID are set."
  exit 1
fi

# Create .vercel directory if it doesn't exist
mkdir -p .vercel

# Generate JSON using jq and save it to .vercel/repo.json
jq -n --arg VERCEL_ORG_ID "$VERCEL_ORG_ID" --arg VERCEL_PROJECT_ID "$VERCEL_PROJECT_ID" \
  '{
    "orgId": $VERCEL_ORG_ID,
    "remoteName": "origin",
    "projects": [
      {
        "id": $VERCEL_PROJECT_ID,
        "name": "dealbuilder-minimal-bug-reproduction",
        "directory": "apps/web"
      }
    ]
  }' > .vercel/repo.json

echo "JSON file created successfully: .vercel/repo.json"
