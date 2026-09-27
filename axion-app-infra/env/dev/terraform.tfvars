# subscription_id = "b8e77924-89da-41ce-8257-846989faab77"

rgs = {
  dev = {
    resource_group_name = "axion-rg-dev"
    location            = "westus"
  }
}

aks_clusters = {

  dev = {
    aks_name            = "axion-aks-dev"
    acr_name            = "axionacrdev"
    location            = "westus"
    resource_group_name = "axion-rg-dev"
    dns_prefix          = "axion-dev"
    environment         = "dev"
  }

}

