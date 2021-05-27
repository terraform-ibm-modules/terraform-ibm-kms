#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################

######################################
# Key Protect Instance Variables
######################################
variable "is_kp_instance_exist" {
  default     = false
  description = "Determines if kp instance exists on not. If false, it creates and instance with given name."
  type        = bool
}
variable "resource_group_id" {
  type        = string
  description = "Resource group ID of instance"
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
variable "policies" {
  description = " Set policies for a key, such as an automatic rotation policy or a dual authorization policy."
  type        = any
  default     = {}
}
