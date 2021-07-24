#!/bin/bash

oc new-project sealed-secrets

oc apply -f controller.yaml -n sealed-secrets

