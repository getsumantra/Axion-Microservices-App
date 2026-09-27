output "acr_login_server" {
  value = {
    for key, acr in azurerm_container_registry.acr :
    key => acr.login_server
  }
}

output "acr_id" {
  value = {
    for key, registry in azurerm_container_registry.acr :
    key => registry.id
  }
}