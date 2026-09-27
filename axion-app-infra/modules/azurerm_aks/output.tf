output "client_certificate" {
  value = {
    for key, cluster in azurerm_kubernetes_cluster.aks :
    key => cluster.kube_config[0].client_certificate
  }

  sensitive = true
}

output "kube_config" {
  value = {
    for key, cluster in azurerm_kubernetes_cluster.aks :
    key => cluster.kube_config_raw
  }

  sensitive = true
}

output "kubelet_identity_object_id" {
  value = {
    for key, cluster in azurerm_kubernetes_cluster.aks :
    key => cluster.kubelet_identity[0].object_id
  }
}