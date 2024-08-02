// Main.bicep

targetScope = 'subscription'

param appName string
param envName string
param loc string = 'westus'

var rgName = 'rg-${appName}-${envName}'
var planName = '${appName}-${envName}-plan'
var list = [
  {
    name: 'dev'
    color: 'lightblue'
  }
  {
    name: 'qa'
    color: 'lightyellow'
  }
  {
    name: 'prd'
    color: 'lightgreen'
  }
]

resource rg 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: rgName
  location: loc
}

module myPlan 'myPlan.bicep' = {
  scope: rg
  name: planName
  params: {
    planName: planName
  }
}

module sites 'mySite.bicep' = [for item in list: {
  scope: rg
  name: '${appName}-${item.name}'
  params: {
    envName: item.name
    color: item.color
    siteName: '${appName}-${item.name}'
    planId: myPlan.outputs.planId
  }
}]
