# KMS Instance Module

This module is used to create a KMS instance.

## Example Usage
```

module "kms_instance" {
  source                 = "terraform-ibm-modules/kms/ibm//modules/instance"
  resource_group_id      = var.resource_group_id
  service_name           = var.service_name
  location               = var.location
  plan                   = var.plan
  tags                   = var.tags
  allowed_network_policy = var.allowed_network_policy
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name                     | Description                                                    | Type   |Default  |Required |
|--------------------------|----------------------------------------------------------------|--------|---------|---------|
| service_name             | A descriptive name used to identify the resource instance      |`string`| n/a     | yes     |
| plan                     | The name of the plan type supported by service.                |`string`| n/a     | yes     |
| location                 | Target location or environment to create the resource instance |`string`| n/a     | yes     |
| resource_group_id        | Id of the resource group                                       |`string`| n/a     | yes     |
| tags                     | Tags for the database                                          |`set`   | n/a     | no      |
| allowed_network_policy   | Types of the service endpoints.                                |`string`| n/a     | no      |

## Outputs
| Name              | Description                      |
|-------------------|----------------------------------|
| kms_instance      | The Details of  KMS Instance.    |


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
