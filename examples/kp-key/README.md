# KMS instance KMS Key Example

This example is used to create Key Protect Instance and a key within it.

## Example Usage

``` terraform
module "kms_key" {
  source                 = "../../modules/key-protect"
  is_kp_instance_exist   = false
  resource_group_id      = data.ibm_resource_group.resource_group.id
  service_name           = var.service_name
  location               = var.location
  plan                   = "tiered-pricing"
  tags                   = var.tags
  allowed_network_policy = var.allowed_network_policy
  key_name               = var.key_name
  standard_key_type      = var.standard_key_type
  force_delete           = var.force_delete
  network_access_allowed = var.network_access_allowed
}
```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_ibm"></a> [ibm](#requirement\_ibm) | 1.41.1 |

## Resources

| Name | Type |
|------|------|
| [ibm_resource_group.resource_group](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.41.1/docs/data-sources/resource_group) | data source |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms_key"></a> [kms\_key](#module\_kms\_key) | ./../../modules/key-protect | n/a |

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ibmcloud_api_key"></a> [ibmcloud\_api\_key](#input\_ibmcloud\_api\_key) | IBM Cloud account API key | `string` | n/a | yes |
| <a name="input_ibm_region"></a> [ibm\_region](#input\_ibm\_region) | IBM region | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Resource group name | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Name of KMS Instance | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location of KMS Instance| `string` | n/a | yes |
| <a name="input_allowed_network_policy"></a> [allowed\_network\_policy](#input\_allowed\_network\_policy) | Types of the service endpoints. Possible values are 'public', 'private', 'public-and-private'. | `string` | n/a | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the KMS Instance | `list(string)` | n/a | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Name of the Key | `string` | n/a | yes |
| <a name="input_network_access_allowed"></a> [network\_access\_allowed](#input\_network\_access\_allowed) | Endpoint type of the Key | `string` | `false` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | If set to true, Key Protect forces the deletion of a root or standard key, even if this key is still in use, such as to protect an IBM Cloud Object Storage bucket. | `bool` | `null` | no |
| <a name="input_standard_key_type"></a> [standard\_key\_type](#input\_standard\_key\_type) | Determines if it is a standard key or not | `bool` | `null` | no |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kms_key_status"></a> [kms\_key\_status](#output\_kms\_key\_status) | kms key status |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | kms key id |
| <a name="output_kms_instance_id"></a> [kms\_instance\_id](#output\_kms\_instance\_id) | kms instance id |
