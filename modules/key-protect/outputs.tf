#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
#########################################################################################
output "kms_key_crn" {
  value       = ibm_kms_key.key.id
  description = "The CRN of the key."
}
output "kms_key_id" {
  value       = ibm_kms_key.key.key_id
  description = "The ID of the key"
}
output "kms_instance_guid" {
  value       = var.is_kp_instance_exist != true ? ibm_resource_instance.kms_instance[0].guid : data.ibm_resource_instance.kms_instance[0].guid
  description = "The GUID of the KMS instance"
}
output "kms_instance_crn" {
  value       = var.is_kp_instance_exist != true ? ibm_resource_instance.kms_instance[0].id : data.ibm_resource_instance.kms_instance[0].id
  description = "The CRN of the KMS instance"
}
output "kms_key_status" {
  value       = ibm_kms_key.key.resource_status
  description = "Kms key status"
}
