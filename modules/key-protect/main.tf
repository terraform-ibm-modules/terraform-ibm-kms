#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################

resource "ibm_resource_instance" "kms_instance" {
  count             = var.is_kp_instance_exist != true ? 1 : 0
  name              = var.service_name
  service           = "kms"
  plan              = var.plan
  resource_group_id = var.resource_group_id
  tags              = (var.tags != null ? var.tags : null)
  service_endpoints = (var.allowed_network_policy != null ? var.allowed_network_policy : null)
  location          = var.location
}
data "ibm_resource_instance" "kms_instance" {
  count             = var.is_kp_instance_exist != true ? 0 : 1
  name              = var.service_name
  service           = "kms"
  resource_group_id = var.resource_group_id
  location          = var.location
}
resource "ibm_kms_key" "key" {
  instance_id     = var.is_kp_instance_exist != true ? ibm_resource_instance.kms_instance[0].guid : data.ibm_resource_instance.kms_instance[0].guid
  key_name        = var.key_name
  standard_key    = (var.standard_key_type != null ? var.standard_key_type : false)
  force_delete    = (var.force_delete != null ? var.force_delete : false)
  endpoint_type   = (var.network_access_allowed != null ? var.network_access_allowed : "public")
  payload         = (var.key_material != null ? var.key_material : null)
  encrypted_nonce = (var.encrypted_nonce != null ? var.encrypted_nonce : null)
  iv_value        = (var.iv_value != null ? var.iv_value : null)
  expiration_date = (var.expiration_date != null ? var.expiration_date : null)
}

resource "ibm_kms_key_policies" "key_policy" {
  instance_id   = var.is_kp_instance_exist != true ? ibm_resource_instance.kms_instance[0].guid : data.ibm_resource_instance.kms_instance[0].guid
  key_id        = ibm_kms_key.key.key_id
  endpoint_type = var.endpoint_type 
  
  dynamic "rotation" {
    for_each = var.rotation == null ? {} : var.rotation
    content {
      interval_month = var.rotation.interval_month
    }
  }

  dual_auth_delete {
    enabled = var.dual_auth_delete
  }
} 