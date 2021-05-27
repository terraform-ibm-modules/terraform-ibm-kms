#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################
output "kms_key_crn" {
  value = ibm_kms_key.key.id
}
output "kms_key_id" {
  value = ibm_kms_key.key.key_id
}
output "kms_instance_guid" {
  value = var.is_kp_instance_exist != true ? ibm_resource_instance.kms_instance[0].guid : data.ibm_resource_instance.kms_instance[0].guid
}
output "kms_instance_crn" {
  value = var.is_kp_instance_exist != true ? ibm_resource_instance.kms_instance[0].id : data.ibm_resource_instance.kms_instance[0].id
}