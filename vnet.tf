resource "azurerm_virtual_network" "main01" {
  name                = "main03"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.satish.location
  resource_group_name = azurerm_resource_group.satish.name
}

resource "azurerm_subnet" "snet" {
  name                 = "snet02"
  resource_group_name  = azurerm_resource_group.satish.name
  virtual_network_name = azurerm_virtual_network.main01.name
  address_prefixes     = ["10.0.2.0/24"]
}