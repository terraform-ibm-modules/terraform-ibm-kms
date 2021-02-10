# KMS instance KMS Key Example

This example is used to create a standard or root key on KMS Instance
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

module "kms_key" {
  source                 = "terraform-ibm-modules/kms/ibm//modules/key"
  kms_instance_guid      = module.kms_instance.kms_instance-guid
  name                   = var.name
  standard_key_type      = var.standard_key_type
  force_delete           = var.force_delete
  network_access_allowed = var.network_access_allowed
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
| kms_instance_guid        | GUID of the Instance                                           |`string`| n/a     | yes     |
| name                     | Name of the Key                                                |`string`| n/a     | yes     |
| standard_key_type        | Determines if it has to be a standard key or root key          |`bool`  | false   | no      |
| force_delete             | Determines if it has to be force deleted                       |`bool`  | false   | no      |
| network_access_allowed   | public or private                                              |`string`| `public`| no      |
| key_material             | Key Payload.                                                   |`string`| n/a     | yes     |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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