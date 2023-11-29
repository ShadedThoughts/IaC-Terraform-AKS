terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "UoH-RG"
    storage_account_name = "uohmlopssa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    # access_key           = "${sa_key}"
  }

}

provider "azurerm" {
  features {}

  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}
