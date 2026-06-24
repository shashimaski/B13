provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}



# LAB 03: OUTPUT VARIABLES
# ------------------------
# This lab teaches how Terraform shows results after execution.

# What happens:
# Terraform creates resources and then prints selected values.

# Example:
# output "file_id" {
#   value = local_file.file1.id
# }

# Why we need this:
# In real DevOps, we need results like:
# - IP address
# - file name
# - resource ID

# What we learned:
# - how to extract values from resources
# - how to display useful information after apply