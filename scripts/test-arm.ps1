# test-arm.ps1

##
az login
az account show -o table

## Set Variables
$appName = "azIaC"
$envName = "arm"
$loc = "westus"

$rgName = "rg-$appName-$envName"

## Create RG
az group create --name $rgName --location $loc --tag "env=$envName" "app=$appName" "createDate=$(Get-Date -Format 'yyyy-MM-dd')"
az group show 