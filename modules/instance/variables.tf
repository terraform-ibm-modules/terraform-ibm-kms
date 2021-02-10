#########################################################################################
# IBM Cloud Key Management Services Provisioning and Managing Keys
# Copyright 2021 IBM
#########################################################################################

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