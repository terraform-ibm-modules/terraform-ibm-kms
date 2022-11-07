##############################################################################
# Input Variables
##############################################################################

variable "resource_group_id" {
  type        = string
  description = "Resource Group ID where the Key Protect instance is created"
}

variable "region" {
  type        = string
  description = "Region where resources are created"
}

variable "key_protect_name" {
  type        = string
  description = "Name of the Key Protect instance"
}

variable "tags" {
  type        = list(string)
  description = "List of tags associated with the Key Protect instance"
  default     = []
}

variable "service_endpoints" {
  type        = string
  description = "Sets the endpoint of the Key Protect instance, valid values are 'public', 'private', or 'public-and-private'"
  default     = "public-and-private"

  validation {
    condition     = can(regex("public|public-and-private|private", var.service_endpoints))
    error_message = "Valid values for service_endpoints are 'public', 'public-and-private', and 'private'."
  }
}

variable "plan" {
  type        = string
  description = "Plan for the Key Protect instance, currently only 'tiered-pricing' is supported"
  default     = "tiered-pricing"

  validation {
    condition     = can(regex("^tiered-pricing$", var.plan))
    error_message = "Currently the only supported value for plan is 'tiered-pricing'."
  }
}

variable "metrics_enabled" {
  type        = bool
  description = "Set as true to enable metrics on the Key Protect instance"
  default     = true
}
