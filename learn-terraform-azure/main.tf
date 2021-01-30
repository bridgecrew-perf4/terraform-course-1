# Configure the Azure Provider

terraform {
  required_providers {
      azurerm = {
          source = "hashicorp/azurerm"
          version = ">= 2.26"
      }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "name" {
  name = "eastsideofaustralia"
  location = "australiaeast"
}

resource "azurerm_resource_group" "secname" {
  name = "number_two"
  location = "australiaeast"
  
}