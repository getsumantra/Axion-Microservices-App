resource "azurerm_kubernetes_cluster" "aks" {

  for_each = var.aks_clusters

  name                = each.value.aks_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix

  node_provisioning_profile {
    mode = "Auto"
  }

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2as_v6"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = each.key
  }
}


