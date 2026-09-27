resource "random_string" "acr_suffix" {
  for_each = var.aks_clusters

  length  = 6
  upper   = false
  special = false
  numeric = true
}

resource "azurerm_container_registry" "acr" {

  for_each = var.aks_clusters

  name                = "${each.value.acr_name}${random_string.acr_suffix[each.key].result}"
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

  sku           = "Premium"
  admin_enabled = false

  tags = {
    Environment = each.key
  }

  # georeplications {
  #   location                        = "East US"
  #   zone_redundancy_enabled         = true

  #   tags = {
  #     Environment = each.key
  #   }
  # }

  # georeplications {
  #   location                        = "North Europe"
  #   zone_redundancy_enabled         = true

  #   tags = {
  #     Environment = each.key
  #   }
  # }
}
