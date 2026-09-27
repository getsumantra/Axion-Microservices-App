module "rgs" {
  source = "../../modules/azurerm_rg"
  rgs    = var.rgs
}


module "aks" {
  depends_on   = [module.rgs]
  source       = "../../modules/azurerm_aks"
  aks_clusters = var.aks_clusters
}

module "acr" {
  depends_on   = [module.rgs]
  source       = "../../modules/azurerm_acr"
  aks_clusters = var.aks_clusters
}

module "role_assignment" {
  depends_on = [module.aks, module.acr]
  source     = "../../modules/azurerm_role_assignment"

  aks_acr = {
    for key, value in var.aks_clusters : key => {
      kubelet_identity_object_id = module.aks.kubelet_identity_object_id[key]
      acr_id                     = module.acr.acr_id[key]
    }
  }
}
