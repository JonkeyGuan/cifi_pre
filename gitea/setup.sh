#!/bin/bash

DOMAIN=$(oc cluster-info | grep Kubernetes | awk -F "api." '{print $2}' | awk -F ":" '{print $1}')

NS=$(oc project | awk -F "\"" '{print $2}')

oc new-app -f gitea-persistent-template.yaml \
--param=HOSTNAME=gitea-${NS}.apps.${DOMAIN} 
