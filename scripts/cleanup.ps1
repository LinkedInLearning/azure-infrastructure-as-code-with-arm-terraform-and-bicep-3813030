az group list -o table

az group delete --no-wait -y -n rg-learn-azure-IaC
az group delete --no-wait -y -n rg-azIaC-test
az group delete --no-wait -y -n rg-azIaC-arm
az group delete --no-wait -y -n rg-azIaC-bicep
az group delete --no-wait -y -n rg-azIaC-stack
az group delete --no-wait -y -n rg-azIaC-challenge
az group delete --no-wait -y -n rg-azIaC-tf
az group delete --no-wait -y -n azIaC-pulumi-rgbb43f3dc
az group delete --no-wait -y -n rg-azIaC-ansible
az group delete --no-wait -y -n myApp20240730164933ResourceGroup
az group delete --no-wait -y -n rg-azIaC-bash

