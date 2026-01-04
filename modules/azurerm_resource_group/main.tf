resource "azurerm_resource_group" "my-rg" {
  for_each = var.my_rg
  name     = each.value.name
  location = each.value.location
}