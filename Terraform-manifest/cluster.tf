resource "azurerm_kubernetes_cluster" "aks1" {
  name                = "bhanu-aks-cluster"
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name
  dns_prefix          = "${azurerm_resource_group.rg2.name}-dns"
  kubernetes_version = data.azurerm_kubernetes_service_versions.current23.latest_version
  node_resource_group = "${azurerm_resource_group.rg2.name}-nrg"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}
