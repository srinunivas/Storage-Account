terraform {
  required_version = ">= 1.3.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.0"
    }
    azapi = {
      source = "azure/azapi"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "1d120b6c-c55b-497e-8d1f-34aa21d5f135"
}

