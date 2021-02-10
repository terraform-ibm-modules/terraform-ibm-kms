#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################

resource "ibm_resource_instance" "kms_instance" {
  name              = var.service_name
  service           = "kms"
  plan              = var.plan
  resource_group_id = var.resource_group_id
  tags              = (var.tags != null ? var.tags : null)
  service_endpoints = (var.allowed_network_policy != null ? var.allowed_network_policy : null)
  location          = var.location
}
