#!/bin/bash

docker exec -it ${1:-stig-manager-auth} /opt/keycloak/bin/kc.sh export --dir /tmp --realm stigman --users realm_file

docker cp ${1:-stig-manager-auth}:/tmp/stigman-realm.json .

