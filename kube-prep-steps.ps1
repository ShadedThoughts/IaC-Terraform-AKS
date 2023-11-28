#### Parameters

$keyvaultname = "iac-keyv-dev"
$location = "uksouth"
$keyvaultrg = "iac-rg-dev"
$sshkeysecret = "ssh-key-secret-dev"
# $spnclientid = "xxxxxx"
# $clientidkvsecretname = "xxxxxx"
# $spnclientsecret = "xxxxxx"
# $spnkvsecretname = "xxxxx"
$spobjectID = "bf838245-c6ba-412f-80f7-a956a3f97b2c"
$userobjectid = "d1d8b214-2f2d-4a3d-8a0f-1d11e1167b3f"

## Connect to Azure
Connect-AzAccount -Tenant '8443926c-a7bf-4f43-8f42-d751e68d4e5f' -SubscriptionId '031e997d-b908-4dd0-9dba-c440758aec29'

#### Create Key Vault

New-AzResourceGroup -Name $keyvaultrg -Location $location

# New-AzKeyVault -Name $keyvaultname -ResourceGroupName $keyvaultrg -Location $location

Set-AzKeyVaultAccessPolicy -VaultName $keyvaultname -UserPrincipalName $userobjectid -PermissionsToSecrets Get,Set,Delete,List

#### create an ssh key for setting up password-less login between agent nodes.

ssh-keygen  -f C:\Users\adminpc\.ssh\id_rsa_terraform


#### Add SSH Key in Azure Key vault secret
# $pubkey = cat ~/.ssh/id_rsa_terraform.pub

$pubkey = Get-Content C:\Users\adminpc\.ssh\id_rsa_terraform.pub

$Secret = ConvertTo-SecureString -String $pubkey -AsPlainText -Force

Set-AzKeyVaultSecret -VaultName $keyvaultname -Name $sshkeysecret -SecretValue $Secret


#### Store service principal Client id in Azure KeyVault

# $Secret = ConvertTo-SecureString -String $spnclientid -AsPlainText -Force

# Set-AzKeyVaultSecret -VaultName $keyvaultname -Name $clientidkvsecretname -SecretValue $Secret


#### Store service principal Secret in Azure KeyVault

# $Secret = ConvertTo-SecureString -String $spnclientsecret -AsPlainText -Force

# Set-AzKeyVaultSecret -VaultName $keyvaultname -Name $spnkvsecretname -SecretValue $Secret


#### Provide Keyvault secret access to SPN using Keyvault access policy

Set-AzKeyVaultAccessPolicy -VaultName $keyvaultname -ServicePrincipalName $spobjectID -PermissionsToSecrets Get,Set
