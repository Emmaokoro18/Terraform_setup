/*
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.92.0"
    }
  }
}
*/
provider "azurerm" {
  features {}
}

module "server" {
    source = "../modules/server"
    base_name         = "MyTerra-rg"
    location          = "east US"
    virtual_network   = "my-terra-vnet"
    network_interface = "my-terra-nic"
    virtual_machine   = "my-terra-vm"

  
}