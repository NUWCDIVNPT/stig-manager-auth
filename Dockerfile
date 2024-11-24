FROM quay.io/keycloak/keycloak:26.0.6

COPY import_realm.json /opt/keycloak/data/import/import_realm.json

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=Pa55w0rd

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev", "--import-realm"]