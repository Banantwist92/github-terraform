terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate-adrian"
    storage_account_name = "sabackendadrbwa1l8idyl"
    container_name       = "tfstate-adrian"
    key                  = "webm8.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

