variable "subscription_id" {
  description = "The subscription ID to deploy resources into"
  type        = string
}

variable "rgs" {
  description = "The name of the resource group"
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}


variable "aks_clusters" {
  description = "AKS and ACR configuration"

  type = map(object({
    aks_name            = string
    acr_name            = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    environment         = string
  }))
}

