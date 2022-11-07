##############################################################################
# Outputs
##############################################################################

output "key_protect_guid" {
  value       = ibm_resource_instance.key_protect_instance.guid
  description = "GUID of the Key Protect instance"
}
