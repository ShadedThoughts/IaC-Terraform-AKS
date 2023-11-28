aks_vnet_name = "aksvnet"

sshkvsecret = "ssh-key-secret-dev"

clientidkvsecret = "aad-id-kvsec-dev"

spnkvsecret = "aad-iac-kvsec-dev"

vnetcidr = ["10.0.0.0/24"]

subnetcidr = ["10.0.0.0/25"]

keyvault_rg = "iac-rg-dev"

keyvault_name = "iac-keyv-dev"

azure_region = "uksouth"

resource_group = "iac-rg-dev"

cluster_name = "akstfdemocluster"

dns_name = "akstfdemocluster"

admin_username = "aksuser"

kubernetes_version = "1.27.7"

agent_pools = {
  name            = "pool1"
  count           = 2
  vm_size         = "Standard_D2_v2"
  os_disk_size_gb = "30"
}
