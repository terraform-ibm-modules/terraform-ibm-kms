# terraform-ibm-kms

---

## Module archived

:spider_web: This repo is no longer maintained and is archived. Use one of the following public modules if you consume the module from GitHub: 
- [terraform-ibm-key-protect-all-inclusive](https://github.com/terraform-ibm-modules/terraform-ibm-key-protect-all-inclusive)
- [terraform-ibm-key-protect](https://github.com/terraform-ibm-modules/terraform-ibm-key-protect)
- [terraform-ibm-kms-key](https://github.com/terraform-ibm-modules/terraform-ibm-kms-key)
- [terraform-ibm-kms-key-ring](https://github.com/terraform-ibm-modules/terraform-ibm-kms-key-ring)

## Changes if you use the Hashicorp registry

:exclamation: **Important:**  This module will be deleted from the Hashicorp registry on 1 August 2023. 

If you  consume the module from the Hashicorp registry, use of the following instead:
- [key-protect-all-inclusive](https://registry.terraform.io/modules/terraform-ibm-modules/key-protect-all-inclusive/ibm/latest)
- [key-protect](https://registry.terraform.io/modules/terraform-ibm-modules/key-protect/ibm/latest)
- [kms-key](https://registry.terraform.io/modules/terraform-ibm-modules/kms-key/ibm/latest)
- [kms-key-ring](https://registry.terraform.io/modules/terraform-ibm-modules/kms-key-ring/ibm/latest)

---

[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![latest release](https://img.shields.io/github/v/release/terraform-ibm-modules/terraform-ibm-kms?logo=GitHub&sort=semver)](https://github.com/terraform-ibm-modules/terraform-ibm-kms/releases/latest)
[![Renovate enabled](https://img.shields.io/badge/renovate-enabled-brightgreen.svg)](https://renovatebot.com/)

Following terraform modules are used to create and work with IBM Key Management Service

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

No resources.

## Inputs

No inputs.

## Outputs

No outputs.

## Contributing

You can report issues and request features for this module in the [terraform-ibm-issue-tracker](https://github.com/terraform-ibm-modules/terraform-ibm-issue-tracker/issues) repo. See [Report an issue or request a feature](https://github.com/terraform-ibm-modules/.github/blob/main/.github/SUPPORT.md).

To set up your local development environment, see [Local development setup](https://terraform-ibm-modules.github.io/documentation/#/local-dev-setup) in the project documentation.
