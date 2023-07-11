variable "vm_name" {
  description = "The name of the virtual machine. Changing this forces a new resource to be created."
  type        = string
}

variable "public_key_name" {
  description = "The name of the public key used to authenticate with the virtual machine. Changing this forces a new resource to be created."
  type        = string
}

variable "computer_name" {
  description = "The computer name of the virtual machine. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual machine. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "The Azure location where the virtual machine should exist. Changing this forces a new resource to be created."
  type        = string
}

variable "size" {
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2. Changing this forces a new resource to be created."
  type        = string
}

variable "provision_vm_agent" {
  description = "Should the Virtual Machine Agent be provisioned on the Virtual Machine? Defaults to true. Changing this forces a new resource to be created."
  type        = bool
  default     = true
}

variable "proximity_placement_group_id" {
  description = "The ID of a proximity placement group to place the virtual machine in. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "availability_set_id" {
  description = "The ID of the availability set to place the virtual machine in. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "network_interface_ids" {
  description = "A list of Network Interface ID's which should be applied to the Virtual Machine. Changing this forces a new resource to be created."
  type        = list(string)
  default     = []
}

variable "admin_ssh_key_username" {
  description = "The username of the administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string
}

variable "os_disk_write_accelerator_enabled" {
  description = "Should the OS Disk be created as a UltraSSD_LRS Managed Disk? Defaults to false. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}

variable "os_disk_storage_account_type" {
  description = "The type of storage account which should back this Managed Disk. Changing this forces a new resource to be created."
  type        = string
  default     = "Standard_LRS"
}

variable "os_disk_name" {
  description = "The name of the OS Disk. Changing this forces a new resource to be created."
  type        = string
  default     = "osdisk"
}

variable "os_disk_disk_size_gb" {
  description = "The size of the OS Disk in GB. Changing this forces a new resource to be created."
  type        = number
  default     = 30
}

variable "os_disk_disk_encryption_set_id" {
  description = "The ID of the Disk Encryption Set which should be used to encrypt this Managed Disk. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "os_disk_caching" {
  description = "The caching option which should be used for the OS Disk. Changing this forces a new resource to be created."
  type        = string
  default     = "ReadWrite"
}

variable "source_image_reference_publisher" {
  description = "The publisher of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type        = string
  default     = "Canonical"
}

variable "source_image_reference_offer" {
  description = "The offer of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type        = string
  default     = "UbuntuServer"
}

variable "source_image_reference_sku" {
  description = "The SKU of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type        = string
  default     = "22.04-LTS"
}

variable "source_image_reference_version" {
  default     = "latest"
  type        = string
  description = "The version of the image used to create the virtual machine. Changing this forces a new resource to be created."
}

variable "identity_type" {
  description = "The type of identity used for the virtual machine. Possible values are SystemAssigned and UserAssigned. Changing this forces a new resource to be created."
  type        = string
  default     = "SystemAssigned"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource. Changing this forces a new resource to be created."
  type        = map(string)
  default     = {}
}