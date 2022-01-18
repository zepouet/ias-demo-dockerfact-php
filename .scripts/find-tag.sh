#!/bin/bash

REGISTRY=regdemo13114

mycontainers=$(az acr repository list --name $REGISTRY --output tsv)
for i in $mycontainers
do
    echo -n "$REGISTRY.azurecr.io/$i:"
    az acr repository show-tags -n $REGISTRY --repository $i --output tsv|tail -1
done
