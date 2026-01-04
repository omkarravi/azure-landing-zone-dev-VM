resource "azurerm_subnet" "my-subnet" {
  for_each               = var.my_subnet
  name                   = each.value.name
  address_prefixes       = each.value.address_prefixes
  virtual_network_name   = each.value.virtual_network_name
  resource_group_name    = each.value.resource_group_name
}
