data "azurerm_kubernetes_service_versions" "current23" {
  location = azurerm_resource_group.rg2.location
  include_preview = false  
}
