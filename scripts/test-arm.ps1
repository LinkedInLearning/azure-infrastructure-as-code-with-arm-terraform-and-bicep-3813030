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

$planName = "$appName-$envName-plan"
$siteName = "$appName-$envName-site"

cd src/myapp
az webapp up -g $rgName --plan $planName --name $siteName  --launch-browser
