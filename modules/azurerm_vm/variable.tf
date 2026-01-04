variable "my_vm" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
   
    nic_key             = string

    os_disk = object({
      name                 = string
      caching              = string
      storage_account_type = string
    })

    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
}

variable "nic_ids" {
  type = map(string)
}

variable "admin_password" {
  type = string
  sensitive = true
  
}

