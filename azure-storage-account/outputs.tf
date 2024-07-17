output "sa_id" {
  description = "ID of the storage account id"
  value       = azurerm_storage_account.sa.id
}

output "sa_primary_access_key" {
  description = "Primary access key of the storage account"
  value       = azurerm_storage_account.sa.primary_access_key
  sensitive   = true
}
