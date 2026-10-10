output "fsx_ontap_storage_virtual_machines_id" {
  description = "Map of id values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fsx_ontap_storage_virtual_machines_active_directory_configuration" {
  description = "Map of active_directory_configuration values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => one(v.active_directory_configuration) if v.active_directory_configuration != null && length(v.active_directory_configuration) > 0 }
  sensitive   = true
}
output "fsx_ontap_storage_virtual_machines_arn" {
  description = "Map of arn values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "fsx_ontap_storage_virtual_machines_endpoints" {
  description = "Map of endpoints values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "fsx_ontap_storage_virtual_machines_file_system_id" {
  description = "Map of file_system_id values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "fsx_ontap_storage_virtual_machines_name" {
  description = "Map of name values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fsx_ontap_storage_virtual_machines_region" {
  description = "Map of region values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.region if v.region != null && length(v.region) > 0 }
}
output "fsx_ontap_storage_virtual_machines_root_volume_security_style" {
  description = "Map of root_volume_security_style values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.root_volume_security_style if v.root_volume_security_style != null && length(v.root_volume_security_style) > 0 }
}
output "fsx_ontap_storage_virtual_machines_subtype" {
  description = "Map of subtype values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.subtype if v.subtype != null && length(v.subtype) > 0 }
}
output "fsx_ontap_storage_virtual_machines_svm_admin_password" {
  description = "Map of svm_admin_password values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.svm_admin_password if v.svm_admin_password != null && length(v.svm_admin_password) > 0 }
  sensitive   = true
}
output "fsx_ontap_storage_virtual_machines_tags" {
  description = "Map of tags values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "fsx_ontap_storage_virtual_machines_tags_all" {
  description = "Map of tags_all values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "fsx_ontap_storage_virtual_machines_uuid" {
  description = "Map of uuid values across all fsx_ontap_storage_virtual_machines, keyed the same as var.fsx_ontap_storage_virtual_machines"
  value       = { for k, v in aws_fsx_ontap_storage_virtual_machine.fsx_ontap_storage_virtual_machines : k => v.uuid if v.uuid != null && length(v.uuid) > 0 }
}

