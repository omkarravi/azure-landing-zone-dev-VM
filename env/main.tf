
module "rg" {
  source = "../modules/azurerm_resource_group"
  my_rg  = var.my_rg
}



module "vnet" {
  depends_on = [module.rg]
  source     = "../modules/azurerm_vnet"
  my_vnet    = var.my_vnet
}

module "mysubnet" {
  depends_on = [module.vnet]
  source     = "../modules/azurerm_subnet"
  my_subnet  = var.my_subnet
}

module "azurerm_nic" {
  depends_on = [module.mysubnet]
  source     = "../modules/azurerm_nic"
  my_nic     = var.my_nic

  subnet_ids = module.mysubnet.subnet_ids
  
}


module "azurerm_vm" {
  depends_on = [module.azurerm_nic]
  source     = "../modules/azurerm_vm"
  my_vm      = var.my_vm

  admin_password = data.azurerm_key_vault_secret.secret.value

  nic_ids = module.azurerm_nic.nic_ids
}

