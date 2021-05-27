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
| key_name                     | Name of the Key                                                |`string`| n/a     | yes     |
| standard_key_type        | Determines if it has to be a standard key or root key          |`bool`  | false   | no      |
| force_delete             | Determines if it has to be force deleted                       |`bool`  | false   | no      |
| network_access_allowed   | public or private                                              |`string`| `public`| no      |

## Outputs

| Name         | Description     |
|--------------|-----------------|
| kms_key_id   | KMS Key ID.|
| kms_instance_id      |KP Instance GUID|

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## NOTE: If we want to make use of a particular version of module, then set the argument "version" to respective module version

## Usage

Initialising Provider

Make sure you declare a required providers ibm block to make use of IBM-Cloud Terraform Provider

```terraform
terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "<version>"  // Specify the version
    }
  }
}
```

```bash
terraform init
terraform plan
terraform apply
```

Run `terraform destroy` when you don't need these resources.

## Note

* All optional fields are given value `null` in varaible.tf file. User can configure the same by overwriting with appropriate values.
* Provide `version` attribute in terraform block in versions.tf file to use specific version of terraform provider
