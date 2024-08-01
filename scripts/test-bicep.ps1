# test-bicep.ps1

##
az login
az account show -o table

## Set Variables
$appName = "azIaC"
$envName = "arm"
$loc = "westus"

az bicep --help
az bicep upgrade
az bicep decompile -f ./infra/arm/mySite.json

