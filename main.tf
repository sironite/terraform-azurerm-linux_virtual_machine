resource "azurerm_linux_virtual_machine" "this" {
  name                = var.vm_name
  computer_name       = var.computer_name
  resource_group_name = var.resource_group_name
  location            = var.location

  size                         = var.size
  provision_vm_agent           = var.provision_vm_agent
  proximity_placement_group_id = var.proximity_placement_group_id
  availability_set_id          = var.availability_set_id
  network_interface_ids        = var.network_interface_ids
  admin_username               = var.admin_ssh_key_username

  admin_ssh_key {
    username   = var.admin_ssh_key_username
    public_key = tls_private_key.this.public_key_openssh
  }

  os_disk {
    write_accelerator_enabled = var.os_disk_write_accelerator_enabled
    storage_account_type      = var.os_disk_storage_account_type
    name                      = var.os_disk_name
    disk_size_gb              = var.os_disk_disk_size_gb
    disk_encryption_set_id    = var.os_disk_disk_encryption_set_id
    caching                   = var.os_disk_caching
  }

  source_image_reference {
    publisher = var.source_image_reference_publisher
    offer     = var.source_image_reference_offer
    sku       = var.source_image_reference_sku
    version   = var.source_image_reference_version
  }

  identity {
    type = var.identity_type
  }

  tags = var.tags
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "azurerm_ssh_public_key" "this" {
  name                = var.public_key_name
  location            = var.location
  resource_group_name = var.resource_group_name
  public_key          = tls_private_key.this.public_key_openssh
}
