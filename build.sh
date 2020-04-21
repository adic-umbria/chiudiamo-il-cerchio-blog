#! /bin/bash

# Config:
# Update `API_VERSION` when values are going to change
API_SLUG="api"
API_VERSION="0"

# Clear 'public' folder
if [[ -d "public" ]]
then
    rm -r public/
fi

# Build Hugo and create API endpoints
hugo
mkdir -p public/$API_SLUG/v$API_VERSION/pages
cp public/tags/in-app/index.json public/$API_SLUG/v$API_VERSION/pages/
