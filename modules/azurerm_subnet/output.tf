output "subnet_ids" {
  value = {
    for k, v in azurerm_subnet.my-subnet : k => v.id
  }
}
