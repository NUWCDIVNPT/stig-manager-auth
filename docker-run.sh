#!/bin/bash
docker container rm stig-manager-auth --force
docker run -d --name stig-manager-auth -p ${2:-8080}:8080 stig-manager-auth:${1:-dev}
docker logs -f stig-manager-auth