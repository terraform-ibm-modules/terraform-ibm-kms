# KMS instance KMS Key Example

This example is used to create a KMS Instance
## Example Usage
```
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

module "kms_instance" {
  source                 = "terraform-ibm-modules/kms/ibm//modules/instance"
  resource_group_id      = data.ibm_resource_group.resource_group.id
  service_name           = var.service_name
  location               = var.location
  plan                   = "tiered-pricing"
  tags                   = var.tags
  allowed_network_policy = var.allowed_network_policy
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs
| Name                     | Description                                                    | Type   |Default  |Required |
|--------------------------|----------------------------------------------------------------|:-------|:--------|:--------|
| resource\_group          | Name of the resource group                                     |`string`| n/a     | yes     |
| service_name             | A descriptive name used to identify the resource instance      |`string`| n/a     | yes     |
| location                 | Target location or environment to create the resource instance |`string`| n/a     | yes     |
| tags                     | Tags for the KMS Instance                                      |`set`   | n/a     | no      |
| allowed_network_policy   | Types of the service endpoints.                                |`string`| n/a     | no      |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## NOTE: If we want to make use of a particular version of module, then set the argument "version" to respective module version.
## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan 
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.

 ## Note:
* All optional fields are given value `null` in varaible.tf file. User can configure the same by overwriting with appropriate values.
 * Provide `version` attribute in terraform block in versions.tf file to use specific version of terraform provider