#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################
output "kms_key_output" {
  value = ibm_kms_key.key
}