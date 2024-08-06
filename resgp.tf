# main.tf

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "ResGp1"
  location = "East US"
}

