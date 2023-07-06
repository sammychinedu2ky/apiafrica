resource myserverfarm 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'samsons-serverfarm'
  location: resourceGroup().location
  sku: {
    tier: 'Basic'
    name: 'B1'
  }
  kind: 'linux'
}

resource myserverfarmapp 'Microsoft.Web/sites@2022-09-01' = {
  name: 'swacbloom'
  location: resourceGroup().location
  properties:{
    serverFarmId: myserverfarm.id
  }
}
