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
    access_key           = "dY/PV2uFVTs0dKmG3W6H/ibqcJ3wWaA9c+lKW2AhkIQKH1cRBIYkm9ice/k+GkcuJn2cdeYWctwp+ASt3aJ2rA=="
  }

}

provider "azurerm" {
  features {}

  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}
