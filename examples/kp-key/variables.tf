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
  description = "An existing resource group name to use for this example. If not set, a new resource group is created."
  default     = null
}
variable "prefix" {
  description = "The prefix to append to your resources"
  type        = string
  default     = "kms"
}
variable "service_name" {
  type        = string
  description = "Name of KMS Instance"
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
  description = "Tags for the cms"
}
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