variable "cluster_id" {
  description = "Id of cluster for AIOps to be installed on"
}

variable "region" {
  description = "Region that cluster resides in"
}

variable "resource_group_name" {
  default     = "Default"
  description = "Resource group that cluster resides in"
}

variable "on_vpc" {
  default     = false
  type        = bool
  description = "If set to true, lets the module know cluster is using VPC Gen2"
}

variable "portworx_is_ready" {
  type        = bool
  default     = false
  description = "Is Portworx is installed. Only checked of cluster is on VPC"
}

variable "entitled_registry_key" {
  type        = string
  description = "Get the entitlement key from https://myibm.ibm.com/products-services/containerlibrary"
}

variable "entitled_registry_user_email" {
  type        = string
  description = "Docker email address"
}

variable "namespace" {
  type        = string
  description = "namespace for cp4aiop"
}

locals {
  cluster_config_path = "./.kube/config"
}
