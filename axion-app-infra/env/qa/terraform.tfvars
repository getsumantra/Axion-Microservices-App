rgs = {
  qa = {
    resource_group_name = "axion-rg-qa"
    location = "Central India"
  }
}

aks_clusters = {

  qa = {
    aks_name            = "axion-aks-qa"
    acr_name            = "axionacrqa"
    location            = "Central India"
    resource_group_name = "axion-rg-qa"
    dns_prefix          = "axion-qa"
    environment         = "qa"
  }

}

