terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "chinmay_backend_rg"
    storage_account_name = "pt_chinmay_storage"
    container_name = "tfstate"
    key = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}