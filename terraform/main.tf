
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "aiops_rg" {
  name     = "aiops-resource-group"
  location = "westeurope"
}

resource "azurerm_log_analytics_workspace" "aiops_log" {
  name                = "aiops-law"
  location            = azurerm_resource_group.aiops_rg.location
  resource_group_name = azurerm_resource_group.aiops_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
