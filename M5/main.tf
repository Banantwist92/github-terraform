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

resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
  tags     = local.common_tags
}

module "network" {
  source     = "./modules/network"
  rgname     = azurerm_resource_group.rg.name
  location   = var.location
  vnetname   = var.vnetname
  nsgname    = var.nsgname
  subnetname = var.subnetname
}

module "database" {
  source          = "./modules/database"
  rgname          = azurerm_resource_group.rg.name
  location        = var.location
  saname          = var.saname
  mssqlservername = var.mssqlservername
  mssqldbname     = var.mssqldbname
}

module "vmss" {
  source    = "./modules/vmss"
  rgname    = azurerm_resource_group.rg.name
  location  = var.location
  vmssname  = var.vmssname
  subnet_id = module.network.subnet_id
}

