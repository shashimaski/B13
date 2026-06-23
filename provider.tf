terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
    }
  }

  cloud {
    organization = "B13org"

    workspaces {
      name = "RG_WS_A"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}
