# test-stacks.ps1

az stack sub --help

## Set Variables
$appName = "learn-azIaC"
$loc = "westus"

$stack  = "$appName-stack"

az stack sub create `
  --name $stack `
  --location $loc `
  --template-file ./infra/arm/main.bicep `
  --action-on-unmanage 'detachAll' `
  --deny-settings-mode 'none'
