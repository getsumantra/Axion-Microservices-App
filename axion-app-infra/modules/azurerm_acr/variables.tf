variable "aks_clusters" {
  description = "AKS and ACR configuration for each environment"

  type = map(object({
    aks_name            = string
    acr_name            = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    environment         = string
  }))
}