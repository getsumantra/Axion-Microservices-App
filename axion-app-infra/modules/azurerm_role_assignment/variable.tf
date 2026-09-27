variable "aks_acr" {
  description = "AKS kubelet identity and ACR mapping"
  
  type = map(object({
    kubelet_identity_object_id = string
    acr_id                     = string
  }))
}
