variable "location" {
  description = "The location/region where the Azure Storage Account should be created."
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "The Tier to use for this Storage Account. Valid options are Standard and Premium."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The Replication Type to use for this Storage Account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAZRS."
  type        = string
  default     = "LRS"
}

variable "rg_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string
  default     = "rg-terraform"
}

variable "sa_name" {
  description = "The name of the storage account."
  type        = string
  default     = "marcxstxterraform"
}

variable "c_name" {
  description = "The name of the storage container."
  type        = string
  default     = "container-terraform"
}