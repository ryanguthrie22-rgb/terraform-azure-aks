terraform {
  required_version = ">= 1.6.0"

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstate2234618784"
    container_name       = "tfstate"
    key                  = "terraform-azure-aks-dev.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
  