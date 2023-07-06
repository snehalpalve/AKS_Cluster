#Data Source to get latest Azure AKS Version

data "azurerm_kubernetes_service_versions" "current" {
  location = azurerm_resource_group.aks_rg.location
}