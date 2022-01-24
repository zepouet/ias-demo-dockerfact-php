#!/bin/bash
# This script requires Azure CLI version 2.25.0 or later. Check version with `az --version`.

SERVICE_PRINCIPAL_NAME=sp-webapp-deploy-uat

RG_NAME=RG_nicolas_20220123
SUBSCRIPTION_ID=54d87296-b91a-47cd-93dd-955bd57b3e9a
APP_NAME=webprod13114
s
az ad sp create-for-rbac --name ${SERVICE_PRINCIPAL_NAME} --role contributor \
  --scopes /subscriptions/${SUBSCRIPTION_ID}/resourceGroups/${RG_NAME}/providers/Microsoft.Web/sites/${APP_NAME} \
  --sdk-auth
