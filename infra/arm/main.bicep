// Main.bicep

targetScope = 'subscription'

param appName string
param envName string
param loc string = 'westus'

var rgName = 'rg-${appName}-${envName}'

resource rg 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: rgName
  location: loc
}

module mySite 'mySite.bicep' = {
  scope: rg
  name: 'mySite-deploy'
  params: {
    appName: appName
    envName: envName
  }
}

output siteName string = mySite.outputs.siteName
output planName string = mySite.outputs.planName
