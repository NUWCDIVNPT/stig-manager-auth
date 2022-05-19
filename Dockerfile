FROM jboss/keycloak:16.1.1
ENV DB_VENDOR H2
ENV KEYCLOAK_USER admin
ENV KEYCLOAK_PASSWORD Pa55w0rd
ENV KEYCLOAK_IMPORT /tmp/import_realm.json
COPY import_realm.json /tmp/import_realm.json
