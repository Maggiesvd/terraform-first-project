resource "azurerm_resource_group" "storeterra1" {

    name     = "example-resources"

    location = "East US"

}
 
resource "azurerm_storage_account" "saterra1" {

    name                     = "terrastoragesmeghana"

    resource_group_name      = azurerm_resource_group.storeterra.name

    location                 = azurerm_resource_group.storeterra.location

    account_tier             = "Standard"

    account_replication_type = "LRS"

}
 
resource "azurerm_storage_container" "sacontainer" {

    name                  = "terra-container"

    storage_account_name  = azurerm_storage_account.saterra.name

    container_access_type = "private"

}
 