param name string = deployment().name
param location string = resourceGroup().location
param tags object = {}

var allTags = union(resourceGroup().tags, tags)

resource registry 'Microsoft.ContainerRegistry/registries@2022-12-01' = {
  name: name
  location: location
  sku: {
    name: 'Premium'
  }
  properties: {
    adminUserEnabled: true
  }
  tags: allTags
}
