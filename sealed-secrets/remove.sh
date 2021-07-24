#!/bin/bash

oc delete -f controller.yaml -n sealed-secrets

oc delete project sealed-secrets

