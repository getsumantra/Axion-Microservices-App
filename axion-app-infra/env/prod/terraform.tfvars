rgs = {
  prod = {
    resource_group_name = "axion-rg-prod"
    location = "east us"
  }
}

aks_clusters = {

  prod = {
    aks_name            = "axion-aks-prod"
    acr_name            = "axionacrprod"
    location            = "east us"
    resource_group_name = "axion-rg-prod"
    dns_prefix          = "axion-prod"
    environment         = "prod"
  }

}

