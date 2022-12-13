##############################################################################
# Resource Group
# (if var.resource_group is null, create a new RG using var.prefix)
##############################################################################

resource "ibm_resource_group" "resource_group" {
  count = var.create_resource_group == true ? 1 : 0
  name  = var.resource_group
}

data "ibm_resource_group" "existing_resource_group" {
  count = var.create_resource_group == false ? 1 : 0
  name  = var.resource_group
}

module "kms_key" {
  source                 = "../../modules/key-protect"
  is_kp_instance_exist   = false
  resource_group_id      = var.create_resource_group == false ? data.ibm_resource_group.existing_resource_group[0].id : ibm_resource_group.resource_group[0].id
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
