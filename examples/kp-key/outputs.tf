#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
#########################################################################################
output "kms_key_id" {
  value       = module.kms_key.kms_key_id
  description = "The ID of the kms key"
}
output "kms_key_status" {
  value       = module.kms_key.kms_key_status
  description = "Kms key status"
}
output "kms_instance_id" {
  value       = module.kms_key.kms_instance_guid
  description = "The GUID of the KMS instance"
}
