provider "azurerm" {
  features {
    
  }
}

data "azurerm_resource_group" "name" {
  name = "test"
}

resource "azurerm_storage_account" "example" {
  name                     = "dynamicsecretmdeey"
  resource_group_name      = data.azurerm_resource_group.name.name
  location                 = data.azurerm_resource_group.name.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}