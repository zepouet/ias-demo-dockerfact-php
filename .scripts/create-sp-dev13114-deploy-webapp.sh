#!/bin/bash
# This script requires Azure CLI version 2.25.0 or later. Check version with `az --version`.

SERVICE_PRINCIPAL_NAME=sp-dev13114

RG_NAME=RG_nicolas_20220123
SUBSCRIPTION_ID=54d87296-b91a-47cd-93dd-955bd57b3e9a
APP_NAME=webdev13114
REGISTRY=regdev13114

#az ad sp create-for-rbac --name ${SERVICE_PRINCIPAL_NAME} --role contributor \
#  --scopes /subscriptions/${SUBSCRIPTION_ID}/resourceGroups/${RG_NAME}/providers/Microsoft.Web/sites/${APP_NAME} \
#  --sdk-auth

az role assignment create --assignee 88eac87d-8627-46e8-9796-ed7ef5f4cbc3 --scope /subscriptions/${SUBSCRIPTION_ID}/resourceGroups/${RG_NAME}/providers/Microsoft.ContainerRegistry/registries/${REGISTRY} --role "AcrPull"
