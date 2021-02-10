# KMS instance KMS Key Module

This module is used to create a keys on KMS Instance
## Example Usage
```
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
| kms_instance_guid        | GUID of the Instance                                           |`string`| n/a     | yes     |
| name                     | Name of the Key                                                |`string`| n/a     | yes     |
| standard_key_type        | Determines if it has to be a standard key or root key          |`bool`  | false   | no      |
| force_delete             | Determines if it has to be force deleted                       |`bool`  | false   | no      |
| network_access_allowed   | public or private                                              |`string`| `public`| no      |
| key_material             | Key Payload.                                                   |`string`| n/a     | no      |
| encrypted_nonce          | Encrypted Nonce. Only for imported root key.                   |`string`| n/a     | no      |
| iv_value                 | IV Value. Only for imported root key.                          |`string`| n/a     | no      |
| expiration_date          | Expination Date.                                               |`string`| n/a     | no      |

Note: 
* If the following attributes [`standard_key_type`, `force_delete`,`network_access_allowed`] are set to null then default values will be taken..

## Outputs
| Name         | Description     |
|--------------|-----------------|
| kms_key      | KMS Key Details.|

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