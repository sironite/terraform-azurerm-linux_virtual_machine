<!-- BEGIN_TF_DOCS -->
 ## Linux Virtual Machine
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-linux_virtual_machine/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine)

# Usage - Module

## Linux Virtual Machine

```hcl
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

```

## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.0.0 |
| tls | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_ssh_public_key.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key) | resource |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| admin\_ssh\_key\_username | The username of the administrator used for the Virtual Machine. Changing this forces a new resource to be created. | `string` | yes |
| computer\_name | The computer name of the virtual machine. Changing this forces a new resource to be created. | `string` | yes |
| location | The Azure location where the virtual machine should exist. Changing this forces a new resource to be created. | `string` | yes |
| public\_key\_name | The name of the public key used to authenticate with the virtual machine. Changing this forces a new resource to be created. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the virtual machine. Changing this forces a new resource to be created. | `string` | yes |
| size | The SKU which should be used for this Virtual Machine, such as Standard\_F2. Changing this forces a new resource to be created. | `string` | yes |
| vm\_name | The name of the virtual machine. Changing this forces a new resource to be created. | `string` | yes |
| availability\_set\_id | The ID of the availability set to place the virtual machine in. Changing this forces a new resource to be created. | `string` | no |
| identity\_type | The type of identity used for the virtual machine. Possible values are SystemAssigned and UserAssigned. Changing this forces a new resource to be created. | `string` | no |
| network\_interface\_ids | A list of Network Interface ID's which should be applied to the Virtual Machine. Changing this forces a new resource to be created. | `list(string)` | no |
| os\_disk\_caching | The caching option which should be used for the OS Disk. Changing this forces a new resource to be created. | `string` | no |
| os\_disk\_disk\_encryption\_set\_id | The ID of the Disk Encryption Set which should be used to encrypt this Managed Disk. Changing this forces a new resource to be created. | `string` | no |
| os\_disk\_disk\_size\_gb | The size of the OS Disk in GB. Changing this forces a new resource to be created. | `number` | no |
| os\_disk\_name | The name of the OS Disk. Changing this forces a new resource to be created. | `string` | no |
| os\_disk\_storage\_account\_type | The type of storage account which should back this Managed Disk. Changing this forces a new resource to be created. | `string` | no |
| os\_disk\_write\_accelerator\_enabled | Should the OS Disk be created as a UltraSSD\_LRS Managed Disk? Defaults to false. Changing this forces a new resource to be created. | `bool` | no |
| provision\_vm\_agent | Should the Virtual Machine Agent be provisioned on the Virtual Machine? Defaults to true. Changing this forces a new resource to be created. | `bool` | no |
| proximity\_placement\_group\_id | The ID of a proximity placement group to place the virtual machine in. Changing this forces a new resource to be created. | `string` | no |
| source\_image\_reference\_offer | The offer of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | no |
| source\_image\_reference\_publisher | The publisher of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | no |
| source\_image\_reference\_sku | The SKU of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | no |
| source\_image\_reference\_version | The version of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | no |
| tags | A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| vm\_id | The ID of the virtual machine. |
| vm\_name | The name of the virtual machine. |
| vm\_ssh\_private\_key | The private key of the virtual machine. |
| vm\_ssh\_public\_key | The public key of the virtual machine. |

## Related documentation
<!-- END_TF_DOCS -->