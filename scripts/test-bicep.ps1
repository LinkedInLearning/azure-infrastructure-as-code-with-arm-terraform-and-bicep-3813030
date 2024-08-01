# test-bicep.ps1

##
az login
az account show -o table

## Set Variables
$appName = "azIaC"
$envName = "bicep"
$loc = "westus"

az bicep --help
az bicep upgrade
az bicep decompile -f ./infra/arm/mySite.json

az deployment sub create --location 'westus' -f infra/arm/main.bicep