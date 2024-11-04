variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location of the Resource Group and Storage Account"
  type        = string
  default     = "Norway East"
}

variable "storage_account_name" {
  description = "Unique name for the Storage Account"
  type        = string
}

variable "account_tier" {
  description = "Account tier (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "Replication type (LRS, GRS, RAGRS, ZRS)"
  type        = string
  default     = "LRS"
}

variable "blob_container_name" {
  description = "Name of the Blob Container"
  type        = string
  default     = "myblobcontainer"
}

variable "file_share_name" {
  description = "Name of the File Share"
  type        = string
  default     = "myfileshare"
}

variable "file_share_quota" {
  description = "Quota for the File Share in GB"
  type        = number
  default     = 5
}
