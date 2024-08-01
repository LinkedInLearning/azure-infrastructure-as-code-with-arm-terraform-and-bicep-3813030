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

## Deploy IaC
az deployment group create --what-if -g $rgName --template-file ./infra/arm/mySite.json

az deployment group create -g $rgName --template-file ./infra/arm/mySite.json `
  --parameters ./infra/arm/mySite.parameters.json


## Deploy Code
$planName = "$appName-$envName-plan"
$siteName = "$appName-$envName-site"

cd src/myapp
az webapp up -g $rgName --plan $planName --name $siteName  --launch-browser
