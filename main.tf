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

# Create a resource group
resource "azurerm_resource_group" "resource-group-1" {
  name     = "resource-group-1"
  location = "East US"
}
