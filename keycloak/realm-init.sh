#!/bin/bash
/opt/jboss/keycloak/bin/kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user "$KEYCLOAK_USER" --password "$KEYCLOAK_PASSWORD"
/opt/jboss/keycloak/bin/kcadm.sh create realms -f /home/jboss/realm.json