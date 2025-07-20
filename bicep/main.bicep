
resource aiops_rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'aiops-resource-group'
  location: 'westeurope'
}

resource aiops_log 'Microsoft.OperationalInsights/workspaces@2021-06-01' = {
  name: 'aiops-law'
  location: aiops_rg.location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: 30
  }
}
