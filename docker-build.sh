#!/bin/bash

docker build --no-cache --tag stig-manager-auth:${1:-dev-latest} .