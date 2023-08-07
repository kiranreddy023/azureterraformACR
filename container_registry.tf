resource "azurerm_resource_group" "container-hub" {
  name     = "container-hub"
  location = "Central US"
}

resource "azurerm_container_registry" "kiran1994" {
  name                = "kiran1994"
  resource_group_name = azurerm_resource_group.container-hub.name
  location            = azurerm_resource_group.container-hub.location
  sku                 = "Standard"
}

