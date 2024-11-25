terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
}

provider "azurerm" {
    # Configuration options
    subscription_id = "efc1e7b1-5729-4eea-b33e-12cc6b1c0183"
    features {

    } 
}

resource "azurerm_resource_group" "fd-rg" {
  name     = "rg-demo-we"
  location = "West Europe"
}

resource "azurerm_storage_account" "sa-demo" {
  name                     = "adriansademo44"
  resource_group_name      = azurerm_resource_group.fd-rg.name
  location                 = azurerm_resource_group.fd-rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

 
}