output "vm_id" {
  description = "The ID of the virtual machine."
  value = azurerm_linux_virtual_machine.id
}
output "vm_name" {
  description = "The name of the virtual machine."
  value = azurerm_linux_virtual_machine.name
}
output "vm_ssh_private_key" {
  description = "The private key of the virtual machine."
  value = tls_private_key.this.private_key_pem
}
output "vm_ssh_public_key" {
  description = "The public key of the virtual machine."
  value = azurerm_ssh_public_key.this.public_key
}