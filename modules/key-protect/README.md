# terraform-ibm-kms

Terraform modules to create and work with IBM Key Management Service

The supported modules are

* [Provision and manage Key protect Instance and its keys](./modules/key-protect)

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

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ibm_resource_instance.kms_instance](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/resource_instance) | resource |
| [ibm_kms_key.key](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.41.1/docs/resources/kms_key) | resource |
| [ibm_kms_key_policies.key_policy](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.41.1/docs/resources/kms_key_policies) | resource |
| [ibm_resource_instance.kms_instance](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.41.1/docs/data-sources/resource_instance) | data source |

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_is_kp_instance_exist"></a> [is\_kp\_instance\_exist](#input\_is\_kp\_instance\_exist) | Determines if kp instance exists on not. If false, it creates and instance with a given name | `bool` | `false` | no |
| <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id) | Resource group ID of instance | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Name of KMS Instance | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location of KMS Instance| `string` | n/a | yes |
| <a name="input_plan"></a> [plan](#input\_plan) | Plan of KMS Instance | `string` | n/a | yes |
| <a name="input_allowed_network_policy"></a> [allowed\_network\_policy](#input\_allowed\_network\_policy) | Types of the service endpoints. Possible values are 'public', 'private', 'public-and-private'. | `string` | n/a | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the KMS Instance | `list(string)` | n/a | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Name of the Key | `string` | n/a | yes |
| <a name="input_network_access_allowed"></a> [network\_access\_allowed](#input\_network\_access\_allowed) | Endpoint type of the Key | `string` | `false` | no |
| <a name="input_standard_key_type"></a> [standard\_key\_type](#input\_standard\_key\_type) | Determines if it is a standard key or not | `bool` | `null` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | If set to true, Key Protect forces the deletion of a root or standard key, even if this key is still in use, such as to protect an IBM Cloud Object Storage bucket. | `bool` | `null` | no |
| <a name="input_encrypted_nonce"></a> [encrypted\_nonce](#input\_encrypted\_nonce) | verifies your request to import a key to Key Protect | `string` | `null` | no |
| <a name="input_iv_value"></a> [iv\_value](#input\_iv\_value) | Used with import tokens. The initialization vector (IV) that is generated when you encrypt a nonce. | `string` | `null` | no |
| <a name="key_material"></a> [key\_material](#input\_key\_material) | The base64 encoded key that you want to store and manage in the service. | `string` | `null` | no |
| <a name="expiration_date"></a> [expiration\_date](#input\_expiration\_date) | Expiry date of the key material. | `string` | `null` | no |
| <a name="rotation"></a> [rotation](#input\_rotation) | Specifies the key rotation time interval in months. | `map` | `{}` | yes |
| <a name="dual_auth_delete"></a> [dual\_auth\_delete](#input\_dual\_auth\_delete) | Data associated with the dual authorization delete policy.  | `map` | `{}` | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kms_key_crn"></a> [kms\_key\_crn](#output\_kms\_key\_crn) | crn of kms key |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | kms key id |
| <a name="output_kms_instance_guid"></a> [kms\_instance\_guid](#output\_kms\_instance\_guid) | kms instance guid |
| <a name="output_kms_instance_crn"></a> [kms\_instance\_crn](#output\_kms\_instance\_crn) | kms instance crn |
| <a name="output_kms_key_status"></a> [kms\_key\_status](#output\_kms\_key\_status) | kms key status |
