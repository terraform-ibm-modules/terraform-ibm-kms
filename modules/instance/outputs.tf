#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################
output "kms_instance_output" {
  value = ibm_resource_instance.kms_instance
}