# azure-policy-bicep

https://learn.microsoft.com/en-us/azure/governance/policy/assign-policy-bicep

```
az policy definition list --query "[?contains(displayName, 'App Service') && contains(displayName, 'disable public network access')].{Name:displayName, ID:id}" -o table
```

```
az deployment sub create --location japaneast --template-file ./infra/main.bicep --parameters resourceGroupName='yourResourceGroupName'
```