variable "aks_clusters" {
  description = "AKS cluster configuration"

  type = map(object({
    aks_name               = string
    location               = string
    resource_group_name    = string
    dns_prefix             = string
    environment            = string
  }))
}
