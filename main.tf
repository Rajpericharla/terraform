# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "6d277b22-caf9-463a-aba3-5240e2e479d0"
  client_id       = "ca78de2a-4b9f-4692-be97-b5720479957b"
  client_secret   = "PsObVo1PsxvIvzWKZj2NyR3_MvyyurMGKx"
  tenant_id       = "e7a53a4e-93cd-43e5-9f1a-bf8aba5b7fba"
}

# Create a resource group
resource "azurerm_resource_group" "resource-group-1" {
  name     = "resource-group-1"
  location = "East US"
}
