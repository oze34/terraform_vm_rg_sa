
resource "azurerm_storage_account" "assgnmnt6" {
  name                     = "eassgnmnt6storageccount"
  resource_group_name      = azurerm_resource_group.assgnmnt6.name
  location                 = azurerm_resource_group.assgnmnt6.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.assgnmnt6.name
  container_access_type = "private"
}