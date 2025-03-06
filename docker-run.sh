#!/bin/bash
docker container rm stig-manager-auth --force
docker run -p 8080:8080 stig-manager-auth:${1:-dev-latest}
docker logs -f stig-manager-auth