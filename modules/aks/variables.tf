variable "location" {
  type        = string
  description = "Azure region for AKS"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name for AKS and related resources"
}

variable "name_prefix" {
  type        = string
  description = "Prefix for resource names"
}

variable "aks_cluster_name" {
  type        = string
  description = "AKS cluster name"
}

variable "aks_dns_prefix" {
  type        = string
  description = "DNS prefix for the AKS API server"
}

variable "aks_node_count" {
  type        = number
  description = "Number of nodes in system node pool"
  default     = 1
}

variable "aks_node_vm_size" {
  type        = string
  description = "VM size for AKS nodes"
  default     = "Standard_B2s_v2"
}
