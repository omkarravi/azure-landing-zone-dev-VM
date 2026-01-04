terraform {
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "beltfstateprod"
    container_name       = "tfstatecontainer"
    key                  = "terraform.tfstate"

  }
}


provider "azurerm" {
  features {}
  subscription_id = "f4a74092-065d-4b65-ac13-13a156a06eb6"
}


