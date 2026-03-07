module "aks" {
  source = "../../modules/aks"

  location            = var.location
  resource_group_name = var.resource_group_name
  name_prefix         = var.name_prefix
  aks_cluster_name    = var.aks_cluster_name
  aks_dns_prefix      = var.aks_dns_prefix
  aks_node_count      = var.aks_node_count
  aks_node_vm_size    = var.aks_node_vm_size

}