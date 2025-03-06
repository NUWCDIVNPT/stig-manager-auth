#!/bin/bash

docker exec -it ${1:-stig-manager-auth} sh -c \
  "cp -rp /opt/keycloak/data/h2 /tmp ; \
  /opt/keycloak/bin/kc.sh export --dir /tmp --realm stigman --users realm_file --db dev-file --db-url 'jdbc:h2:file:/tmp/h2/keycloakdb;NON_KEYWORDS=VALUE'"
    
docker cp ${1:-stig-manager-auth}:/tmp/stigman-realm.json .

