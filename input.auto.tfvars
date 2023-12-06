aks_vnet_name = "aks-VNET"

sshkvsecret = "ssh-key-secret-dev"

clientidkvsecret = "aad-id-kvsec-dev"

spnkvsecret = "aad-iac-kvsec-dev"

vnetcidr = ["10.0.0.0/24"]

subnetcidr = ["10.0.0.0/25"]

keyvault_rg = "iac-rg-dev"

keyvault_name = "iac-keyv-dev"

azure_region = "uksouth"

resource_group = "iac-rg-dev"

cluster_name = "uohdaimk8scluster"

dns_name = "uohdaimclusterdns"

admin_username = "aksuser"

kubernetes_version = "1.27.7"

agent_pools = {
  name            = "pool1"
  count           = 2
  vm_size         = "Standard_D2_v2"
  os_disk_size_gb = "30"
}

tfstorage       = "uohmlopssa"
tfstorage_rg    = "UoH-RG"
acr_name        = "uohdaim"
client_id       = "bf838245-c6ba-412f-80f7-a956a3f97b2c"
client_secret   = "3ce8Q~8he0WZ.2gYje0GVTlySUR.6e6aQYxgibop"
tenant_id       = "8443926c-a7bf-4f43-8f42-d751e68d4e5f"
subscription_id = "031e997d-b908-4dd0-9dba-c440758aec29"
sa_key          = "dY/PV2uFVTs0dKmG3W6H/ibqcJ3wWaA9c+lKW2AhkIQKH1cRBIYkm9ice/k+GkcuJn2cdeYWctwp+ASt3aJ2rA=="
