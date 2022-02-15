#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################
variable "ibmcloud_api_key" {
  description = "IBM-Cloud API Key"
  type        = string
}
variable "ibm_region" {
  description = "IBM-Cloud Region"
  type        = string
}
variable "resource_group" {
  type        = string
  description = "Resource group of instance"
}
######################################
# Key Protect Instance Variables
######################################
variable "is_kp_instance_exist" {
  default     = false
  description = "Determines if kp instance exists on not. If false, it creates and instance with given name."
  type        = bool
}
variable "service_name" {
  type        = string
  description = "Name of KMS Instance"
}
variable "location" {
  type        = string
  description = "Location of KMS Instance"
  default     = null
}
variable "plan" {
  type        = string
  description = "Plan of KMS Instance"
  default     = null
}
variable "allowed_network_policy" {
  default     = null
  type        = string
  description = "Types of the service endpoints. Possible values are 'public', 'private', 'public-and-private'."
}
variable "tags" {
  default     = null
  type        = set(string)
  description = "Tags for the KMS Instance"
}
######################################
# Key Protect Key Variables
######################################
variable "key_name" {
  description = "Name of the Key"
  type        = string
}
variable "network_access_allowed" {
  description = "Endpoint type of the Key"
  type        = string
  default     = null
}
variable "standard_key_type" {
  description = "Determines if it is a standard key or not"
  default     = null
  type        = bool
}
variable "force_delete" {
  description = "Determines if it has to be force deleted"
  default     = null
  type        = bool
}
variable "encrypted_nonce" {
  description = "Encrypted_nonce of the Key"
  type        = string
  default     = null
}
variable "iv_value" {
  description = "Iv_value of the Key"
  type        = string
  default     = null
}
variable "key_material" {
  description = "key_material of the Key"
  type        = string
  default     = null
}
variable "expiration_date" {
  description = "Expiration_date of the Key"
  type        = string
  default     = null
}

######################################
# Key Protect Key Policies Variables
######################################
variable "endpoint_type" {
  description = "The type of the public or private endpoint to be used for fetching policies."
  type        = string
  default     = null
}
variable "rotation" {
  description = "The key rotation time interval in months, with a minimum of 1, and a maximum of 12."
  type        = object({ interval_month = number })
  default     = null
}
variable "dual_auth_delete" {
  description = "Enable or disable dual auth delete on keys. Enabled requires 2 levels of approval to delete a key. Default is false."
  type        = bool
  default     = false
}