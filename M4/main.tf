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

  }
}


resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.az_regions[0]
  tags     = local.common_tags
}

resource "azurerm_storage_account" "example" {
  count                    = length(var.storage_account_names)
  name                     = var.storage_account_names[count.index]
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.common_tags
}

resource "azurerm_network_security_group" "example" {
  name                = var.sgname
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tags                = local.common_tags
}

resource "azurerm_virtual_network" "example" {
  count               = length(var.vnname)
  name                = var.vnname[count.index]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  tags                = local.common_tags

  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.5.0/24"]
    security_group   = azurerm_network_security_group.example.id
  }
  subnet {
    name             = "subnet2"
    address_prefixes = ["10.0.6.0/24"]
    security_group   = azurerm_network_security_group.example.id
  }


}