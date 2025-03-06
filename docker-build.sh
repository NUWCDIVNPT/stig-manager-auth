#!/bin/bash

# Default to dev-latest if no tag provided
TAG=${1:-dev-latest}

# Determine which realm file to use based on the tag
if [[ $TAG == *"dev"* ]]
then
  REALM_FILE="import_realm_dev.json"
else
  REALM_FILE="import_realm.json"
fi

echo "Building with tag: $TAG and realm file: $REALM_FILE"

# Build the Docker image with the appropriate realm file
docker build --no-cache --build-arg REALM_FILE=$REALM_FILE --tag stig-manager-auth:$TAG .