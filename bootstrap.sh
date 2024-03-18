#!/usr/bin/env bash

name="php-hello-mr"
location="switzerlandnorth"
environment="dev"
rand="001"
postfix="$name-$environment-$rand"
resourceGroup="rg-$postfix"
# appservicePlanName="asp-$postfix"
appserviceName="app-$postfix"
tags="environment=$environment division=id subDivision=idsys"

# Create a resource group
# if ! az group show --name "$resourceGroup" &>/dev/null; then
az group create \
  --name "$resourceGroup" \
  --location $location \
  --tags $tags
# fi

# az appservice plan create \
#   --name "$appservicePlanName" \
#   --resource-group "$resourceGroup" \
#   --sku F1 \
#   --is-linux \
#   --location $location \
#   --tags "$tags"

# Create an App Service plan
az webapp up \
  --resource-group "$resourceGroup" \
  --name "$appserviceName" \
  --runtime PHP:8.2 \
  --os-type Linux -l $location
