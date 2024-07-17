resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurerm_storage_container" "container" {
  name                 = var.c_name
  storage_account_name = azurerm_storage_account.sa.name
}