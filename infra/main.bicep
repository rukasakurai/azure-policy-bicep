targetScope = 'subscription'

param resourceGroupName string = 'yourResourceGroupName'
param location string = 'japaneast' // Use your Azure region
param policyDefinitionId string = '/providers/Microsoft.Authorization/policyDefinitions/1b5ef780-c53c-4a64-87f3-bb9c8c8094ba'

resource yourResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}

resource policyAssignment 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
  name: 'disablePublicNetworkAccessOnAppService'
  properties: {
    policyDefinitionId: policyDefinitionId
    description: 'App Service apps should disable public network access'
    displayName: 'App Service apps should disable public network access'
    nonComplianceMessages: [
      {
        message: 'nonComplianceMessages: App Service apps should disable public network access'
      }
    ]
  }
}
