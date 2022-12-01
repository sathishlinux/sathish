resource "azurerm_network_interface" "nic" {
  name                = "niic02"
  location            = azurerm_resource_group.satish.location
  resource_group_name = azurerm_resource_group.satish.name

  ip_configuration {
    name                          = "ram0l"
    subnet_id                     = azurerm_subnet.snet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.gnm.id
  }
}
