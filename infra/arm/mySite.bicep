@description('description')
param appName string
param envName string

var siteName = '${appName}-${envName}-site'
var planName = '${appName}-${envName}-Plan'

resource plan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: planName
  location: resourceGroup().location
  sku: {
    name: 'F1'
    capacity: 1
  }
  tags: {
    displayName: planName
  }
  properties: {
    name: planName
  }
}

resource site 'Microsoft.Web/sites@2020-12-01' = {
  name: siteName
  location: resourceGroup().location
  kind: 'app'
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/${planName}': 'Resource'
    displayName: siteName
  }
  properties: {
    serverFarmId: plan.id
  }
}

resource siteName_appsettings 'Microsoft.Web/sites/config@2015-08-01' = {
  parent: site
  name: 'appsettings'
  location: resourceGroup().location
  tags: {
    displayName: 'config'
  }
  properties: {
    EnvName: 'arm'
    FavoriteColor: 'cyan'
    SCM_DO_BUILD_DURING_DEPLOYMENT: 'True'
  }
}

output siteName string = siteName
output planName string = planName
