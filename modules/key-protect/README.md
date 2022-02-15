# Key Protect Module

This module is used to manage KMS instance and its keys

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
  rotation               = var.rotation 
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name                     | Description                                                    | Type   |Default  |Required |
|--------------------------|----------------------------------------------------------------|:-------|:--------|:--------|
| is_kp_instance_exist     | Determines if instance exists or not      |`bool`| n/a     | false     |
| service_name             | A descriptive name used to identify the resource instance      |`string`| n/a     | yes     |
| plan                     | The name of the plan type supported by service.                |`string`| n/a     | yes     |
| location                 | Target location or environment to create the resource instance |`string`| n/a     | yes     |
| resource_group_id        | Id of the resource group                                       |`string`| n/a     | yes     |
| tags                     | Tags for the database                                          |`set`   | n/a     | no      |
| allowed_network_policy   | Types of the service endpoints.                                |`string`| n/a     | no      |
| key_name                 | Name of the Key                                                |`string`| n/a     | yes     |
| standard_key_type        | Determines if it has to be a standard key or root key          |`bool`  | false   | no      |
| force_delete             | Determines if it has to be force deleted                       |`bool`  | false   | no      |
| network_access_allowed   | public or private                                              |`string`| `public`| no      |
| key_material             | Key Payload.                                                   |`string`| n/a     | no      |
| encrypted_nonce          | Encrypted Nonce. Only for imported root key.                   |`string`| n/a     | no      |
| iv_value                 | IV Value. Only for imported root key.                          |`string`| n/a     | no      |
| expiration_date          | Expination Date.                                               |`string`| n/a     | no      |
| endpoint_type            | The type of the public or private endpoint to be used for fetching policies. |`string`| n/a     | no      |
| rotation                 | The key rotation time interval in months                       |`object({ interval_month = number })`| n/a   | Atleast one of rotation/dual_auth_delete    |
| dual_auth_delete         | Data associated with the dual authorization delete policy.     |`bool`| false | Atleast one of rotation/dual_auth_delete|

Note:

* If the following attributes [`standard_key_type`, `force_delete`,`network_access_allowed`] are set to null then default values will be taken..

## Outputs

| Name         | Description     |
|--------------|-----------------|
| kms_key_crn   | KMS Key CRN.|
| kms_key_id   | KMS Key ID.|
| kms_instance_id      |KP Instance GUID|
| kms_instance_crn      |KP Instance CRN|

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
* Provide `version` attribute in terraform block in versions.tf file to use specific version of terraform provider.
