my_rg = {

  "rg2" = {
    name     = "BEL_RG_DEV"
    location = "Central India"
  }

}





my_vnet = {
  "vnet1" = {
    name                = "BEL_VNET_PROD"
    location            = "Central India"
    resource_group_name = "BEL_RG_PROD"
    address_space       = ["10.0.0.0/16"]
  }

}

my_subnet = {
  "subnet1" = {
    name                 = "BEL_SUBNET_PROD"
    resource_group_name  = "BEL_RG_PROD"
    virtual_network_name = "BEL_VNET_PROD"
    address_prefixes     = ["10.0.1.0/24"]
  }

}

my_nic = {
  "nic1" = {
    name                = "BEL_RG_PROD_NIC"
    location            = "Central India"
    resource_group_name = "BEL_RG_PROD"
    ip_configuration = {
      name                          = "ipconfig1"
      subnet_key                    = "subnet1"
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id          = ""
    }
  }

}


my_vm = {
  vm1 = {
    name                = "BEL-VM-PROD"
    resource_group_name = "BEL_RG_PROD"
    location            = "Central India"
    size                = "Standard_B1s"
    admin_username      = "adminuser1"

    nic_key             = "nic1"

    os_disk = {
      name                 = "BEL-VM-PROD-osdisk" 
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }

}
