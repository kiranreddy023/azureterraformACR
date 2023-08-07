terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "9a3b904e-71e9-452d-946a-abc68a17fab5"
  tenant_id       = "75a4f509-dd74-4f61-a687-953db327504a"
  client_id       = "b051a61d-69bc-439e-b61d-a46835385976"
  client_secret   = "MO08Q~wcgjZFbmplJGMiQgGrQm1jS~2F6o7U5aJg"
}

provider "docker" {
  host = "unix:///var/run/docker.sock"

  registry_auth {
    address  = azurerm_container_registry.kiran1994.login_server
    username = azurerm_container_registry.kiran1994.admin_username
    password = azurerm_container_registry.kiran1994.admin_password
  }

}
