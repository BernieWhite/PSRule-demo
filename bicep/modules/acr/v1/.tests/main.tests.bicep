// Unit tests for a Container Registry.

param location string = resourceGroup().location

@description('A basic container registry.')
module basic_tests '../main.bicep' = {
  name: 'acrtest001'
  params: {
    location: location
    tags: {
      env: 'dev'
    }
  }
}
