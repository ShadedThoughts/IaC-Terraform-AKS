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
}
