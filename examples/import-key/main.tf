#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################
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
  key_material           = var.key_material
}
