#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
#########################################################################################
variable "ibmcloud_api_key" {
  description = "IBM-Cloud API Key"
  type        = string
}
variable "ibm_region" {
  description = "Provider level config:  Region"
  type        = string
}
variable "resource_group" {
  type        = string
  description = "KMS instance resource group name"
}
variable "service_name" {
  type        = string
  description = "Name of the KMS Instance"
}
variable "location" {
  type        = string
  description = "Location of KMS Instance"
}
variable "allowed_network_policy" {
  default     = null
  type        = string
  description = "Types of the service endpoints. Possible values are 'private', 'public-and-private'."
}
variable "tags" {
  default     = null
  type        = set(string)
  description = "List of tags to attach to kms instance"
}
variable "key_name" {
  description = "Name of the Key"
  type        = string
}
variable "network_access_allowed" {
  description = "The type of the public or private endpoint to be used for creating keys."
  type        = string
  default     = null
}
variable "standard_key_type" {
  description = "Set flag true for standard key, and false for root key."
  default     = null
  type        = bool
}
variable "force_delete" {
  description = "If set to true, Key Protect forces the deletion of a root or standard key, even if this key is still in use"
  default     = null
  type        = bool
}
