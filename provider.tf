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
  
  tenant_id = "8443926c-a7bf-4f43-8f42-d751e68d4e5f"
  subscription_id = "031e997d-b908-4dd0-9dba-c440758aec29"
}
