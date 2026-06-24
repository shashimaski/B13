# Resource Group
resource "azurerm_resource_group" "managed_disk_fileshare_rg" {
  name     = "arun-rg"
  location = "Central India"
}

# Managed Disk
resource "azurerm_managed_disk" "disk" {
  name                 = "arun-disk"
  location             = azurerm_resource_group.managed_disk_fileshare_rg.location
  resource_group_name  = azurerm_resource_group.managed_disk_fileshare_rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 32
}

# Storage Account
resource "azurerm_storage_account" "sa" {
  name                     = "arunstorage123456"
  resource_group_name      = azurerm_resource_group.managed_disk_fileshare_rg.name
  location                 = azurerm_resource_group.managed_disk_fileshare_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# File Share
resource "azurerm_storage_share" "fileshare" {
  name               = "sharedfiles"
  storage_account_id = azurerm_storage_account.sa.id
  quota              = 50
}

output "disk_id" {
  value = azurerm_managed_disk.disk.id
}

output "fileshare_name" {
  value = azurerm_storage_share.fileshare.name
}
