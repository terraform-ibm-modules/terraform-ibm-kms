#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################
output "kms_key_id" {
  value = module.kms_key.kms_key_id
}
output "kms_instance_id" {
  value = module.kms_key.kms_instance_guid
}