resource "azurerm_linux_virtual_machine" "vm" {
  for_each            = var.my_vm
  name               = each.value.name
  location           = each.value.location
  resource_group_name = each.value.resource_group_name
  size               = each.value.size
  admin_username     = each.value.admin_username
  admin_password     = var.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    var.nic_ids[each.value.nic_key]
  ]

  os_disk {
    name                 = each.value.os_disk.name
    caching              = each.value.os_disk.caching
    storage_account_type = each.value.os_disk.storage_account_type
  }

  source_image_reference {
    publisher = each.value.source_image_reference.publisher
    offer     = each.value.source_image_reference.offer
    sku       = each.value.source_image_reference.sku
    version   = each.value.source_image_reference.version
  }
}
