# Test-Bash.sh

## 
az login
az account show -o table

# Set Variables
appName="azIaC"
envName="bash"
location="eastus"

rgName="rg-$appName-$envName"

# Create Resource Group
az group create --name "$rgName" \
  --location "$location" \
  --tags "env=$envName" "app=$appName" "createDate=$(date +%Y-%m-%d)"
az group show -n "$rgName"