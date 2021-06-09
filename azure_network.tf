
provider "azurerm" {
 version = "-> 2.13"
 featiures {}
}

resource "azurerm_resource_group" "name of resource grpup" {
  name = "example.rg" # rg = resource group
  location = "westus"
  tags = {
     foo = "bar"
  }
}

resource "azurerm_virtual_network" "network name" {
  name = "my.network"
  address_space = [ "your ip address space /"]
  location      = azurerm_resource_group.location_of_resourece_group.location
  resource_group_name = azurerm_resource_group.name_of_resource_group.name 
    
}

resource "azurerm_subnet" " subnet name" {
 name = " name of the subnet"
 resource_group_name = azurerm_resource_group.name_of_resource_group.name
 address_prefixes = [" your subnet prefixes"]
}

