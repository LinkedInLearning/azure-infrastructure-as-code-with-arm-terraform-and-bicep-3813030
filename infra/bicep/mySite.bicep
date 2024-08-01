@description('description')
param siteName string
param planName string
param color string = 'lightgrey'

resource site 'Microsoft.Web/sites@2020-12-01' = {
  name: siteName
  location: resourceGroup().location
  kind: 'app'
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/${planName}': 'Resource'
    displayName: siteName
  }
  properties: {
    serverFarmId: planName
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
    FavoriteColor: color
    SCM_DO_BUILD_DURING_DEPLOYMENT: 'True'
  }
}

output siteName string = siteName
output planName string = planName
