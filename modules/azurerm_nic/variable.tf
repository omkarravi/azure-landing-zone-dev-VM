variable "my_nic" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    ip_configuration = object({
      name                          = string
      subnet_key                    = string
      private_ip_address_allocation = string
      public_ip_address_id          = string
    })
  }))
}

variable "subnet_ids" {
  type = map(string)
}