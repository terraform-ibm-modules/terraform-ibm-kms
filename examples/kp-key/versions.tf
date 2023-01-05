#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
#########################################################################################
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "1.49.0"
    }
  }
}
