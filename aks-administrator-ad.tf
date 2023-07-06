# Create Azure AD Group in Active Directory for AKS Admins
resource "azuread_group" "aks_administrators" {
  display_name  = "${azurerm_resource_group.aks_rg.name}-cluster-administrators"
  mail_enabled      = true  
  types             = ["Unified"]
  mail_nickname     = "aksadmins"
  security_enabled = true  
  description = "Azure AKS Kubernetes administrators for the ${azurerm_resource_group.aks_rg.name}-cluster."
}