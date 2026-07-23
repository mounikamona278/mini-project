resource azurerm_resource_group "rg" {
    name = "RG"
    location = "canadacentral"
}


resource azurerm_virtual_network "vnet1" {
    name = "peer1-vnet"
    location = azurerm_resource_group.rg.location
    address_space = ["10.0.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name

}

resource "azurerm_subnet" "sn1" {
    name = "peer1-sn"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet1.name
    address_prefixes = ["10.0.0.0/24"]
  
}

resource azurerm_virtual_network "vnet2" {
    name = "peer2-vnet"
    location = azurerm_resource_group.rg.location
    address_space = ["10.1.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name

}

resource "azurerm_subnet" "sn2" {
    name = "peer2-sn"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet2.name
    address_prefixes = ["10.1.0.0/24"]
  
}

