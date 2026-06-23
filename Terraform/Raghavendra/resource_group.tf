# Simple Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-simple-demo"
  location = "East US"
}
