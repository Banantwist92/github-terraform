terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
}


provider "azurerm" {
  # Configuration options
  subscription_id = "efc1e7b1-5729-4eea-b33e-12cc6b1c0183"
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

resource "azurerm_resource_group" "rgadrian" {
  name     = "rgadrian123"
  location = "westeurope"
}

resource "azurerm_storage_account" "ssaadr123" {
  name                     = "saadr555"
  resource_group_name      = azurerm_resource_group.rgadrian.name
  location                 = azurerm_resource_group.rgadrian.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "sc_backend" {
  name                  = "tfstate-adrian"
  storage_account_name  = azurerm_storage_account.ssaadr123.name
  container_access_type = "private"
}