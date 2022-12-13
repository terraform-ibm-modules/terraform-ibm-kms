#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
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
  description = "KMS instance resource group id"
}
variable "service_name" {
  type        = string
  description = "Name of KMS Instance"
}
variable "location" {
  type        = string
  description = "Location of KMS Instance"
}
variable "plan" {
  type        = string
  description = "Plan of KMS Instance"
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
  description = "The type of the public or private endpoint to be used for creating keys."
  type        = string
  default     = null
}
variable "standard_key_type" {
  description = "Set flag true for standard key, and false for root key."
  default     = false
  type        = bool
}
variable "force_delete" {
  description = "If set to true, Key Protect forces the deletion of a root or standard key, even if this key is still in use, such as to protect an IBM Cloud Object Storage bucket."
  default     = null
  type        = bool
}
variable "encrypted_nonce" {
  description = "Verifies your request to import a key to Key Protect"
  type        = string
  default     = null
}
variable "iv_value" {
  description = "Used with import tokens. The initialization vector (IV) that is generated when you encrypt a nonce."
  type        = string
  default     = null
}
variable "key_material" {
  description = "The base64 encoded key that you want to store and manage in the service."
  type        = string
  default     = null
}
variable "expiration_date" {
  description = "Expiry date of the key material."
  type        = string
  default     = null
}
variable "rotation" {
  description = "Specifies the key rotation time interval in months. Atleast one of rotation/dual_auth_delete is required for policy creation."
  type        = any
  default     = {}
}
variable "dual_auth_delete" {
  description = "Data associated with the dual authorization delete policy.Atleast one of rotation/dual_auth_delete is required for policy creation."
  type        = any
  default     = {}
}
