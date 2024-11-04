provider "azurerm" { 
  features {}
  subscription_id = "6552fe27-549f-4e92-9c79-a0c4a8c23e2f"
}

terraform {
  required_version = ">=0.12"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  min_tls_version          = "TLS1_2"
}

# Blob container
resource "azurerm_storage_container" "blob_container" {
  name                  = var.blob_container_name
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

# File share
resource "azurerm_storage_share" "file_share" {
  name                 = var.file_share_name
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = var.file_share_quota
}
