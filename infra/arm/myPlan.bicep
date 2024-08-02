param planName string

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
}

output planId string = plan.id
