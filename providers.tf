# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.4.0"
    }
  }
  required_version = " ~> 1.1.9"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}