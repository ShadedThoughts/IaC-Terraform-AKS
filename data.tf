data "azurerm_client_config" "current" {}

data "azurerm_key_vault" "azure_vault" {
  name                = var.keyvault_name
  resource_group_name = var.keyvault_rg
}

data "azurerm_key_vault_secret" "ssh_public_key" {
  name         = var.sshkvsecret
  key_vault_id = data.azurerm_key_vault.azure_vault.id
}

data "azurerm_key_vault_secret" "spn_id" {
  name         = var.clientidkvsecret
  key_vault_id = data.azurerm_key_vault.azure_vault.id
}

data "azurerm_key_vault_secret" "spn_secret" {
  name         = var.spnkvsecret
  key_vault_id = data.azurerm_key_vault.azure_vault.id
}

data "azurerm_resource_group" "rg" {
  name = var.resource_group
}

data "azurerm_storage_account" "tfstorage" {
  name                = var.tfstorage
  resource_group_name = var.tfstorage_rg
}

data "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.tfstorage_rg
}

# data "azuread_service_principal" "spn_dev" {
#   object_id = data.azurerm_key_vault_secret.spn_id.value
# }