module "linux_virtual_machine" {
  source  = "sironite/linux_virtual_machine/azurerm"
  version = "x.x.x"

  vm_name                = "myvm"
  computer_name          = "myvm"
  resource_group_name    = "myrg"
  location               = "westeurope"
  size                   = "Standard_F2"
  admin_ssh_key_username = "myuser"
  network_interface_ids  = [module.network_interface.network_interface_id]
  availability_set_id    = module.availability_set.availability_set_id

  tags = {
    environment = "dev"
  }
}

