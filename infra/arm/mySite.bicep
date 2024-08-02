@description('description')
param envName string
param color string
param siteName string
param planId string

resource site 'Microsoft.Web/sites@2020-12-01' = {
  name: siteName
  location: resourceGroup().location
  kind: 'app'
  properties: {
    serverFarmId: planId
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
    EnvName: envName
    FavoriteColor: color
    SCM_DO_BUILD_DURING_DEPLOYMENT: 'True'
  }
}

output siteName string = siteName
