#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################
output "kms_instance_module_output" {
  value = module.kms_instance
}
output "kms_key_module_ouput" {
  value = module.kms_key
}
