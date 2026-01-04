data "azurerm_key_vault" "key" {
  name                = "vault-project"
  resource_group_name = "key-rg"
}

data "azurerm_key_vault_secret" "secret" {
  name         = "vm-password"
  key_vault_id = data.azurerm_key_vault.key.id

}

