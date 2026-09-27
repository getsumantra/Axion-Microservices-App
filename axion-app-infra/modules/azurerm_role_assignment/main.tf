resource "azurerm_role_assignment" "aks_acr_pull" {
  for_each = var.aks_acr

  principal_id         = each.value.kubelet_identity_object_id
  role_definition_name = "AcrPull"
  scope                = each.value.acr_id
}