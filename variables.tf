variable "fsx_ontap_storage_virtual_machines" {
  description = <<EOT
Map of fsx_ontap_storage_virtual_machines, attributes below
Required:
    - file_system_id
    - name
Optional:
    - region
    - root_volume_security_style
    - svm_admin_password
    - tags
    - tags_all
    - active_directory_configuration (block):
        - netbios_name (optional)
        - self_managed_active_directory_configuration (optional, block):
            - dns_ips (required)
            - domain_name (required)
            - file_system_administrators_group (optional)
            - organizational_unit_distinguished_name (optional)
            - password (required)
            - username (required)
EOT

  type = map(object({
    file_system_id             = string
    name                       = string
    region                     = optional(string)
    root_volume_security_style = optional(string)
    svm_admin_password         = optional(string)
    tags                       = optional(map(string))
    tags_all                   = optional(map(string))
    active_directory_configuration = optional(object({
      netbios_name = optional(string)
      self_managed_active_directory_configuration = optional(object({
        dns_ips                                = set(string)
        domain_name                            = string
        file_system_administrators_group       = optional(string)
        organizational_unit_distinguished_name = optional(string)
        password                               = string
        username                               = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_storage_virtual_machines : (
        v.active_directory_configuration == null || (v.active_directory_configuration.netbios_name == null || (length(v.active_directory_configuration.netbios_name) >= 1 && length(v.active_directory_configuration.netbios_name) <= 15))
      )
    ])
    error_message = "must be between 1 and 15 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_storage_virtual_machines : (
        v.active_directory_configuration == null || (v.active_directory_configuration.self_managed_active_directory_configuration == null || (v.active_directory_configuration.self_managed_active_directory_configuration.file_system_administrators_group == null || (length(v.active_directory_configuration.self_managed_active_directory_configuration.file_system_administrators_group) >= 1 && length(v.active_directory_configuration.self_managed_active_directory_configuration.file_system_administrators_group) <= 256)))
      )
    ])
    error_message = "must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_storage_virtual_machines : (
        v.active_directory_configuration == null || (v.active_directory_configuration.self_managed_active_directory_configuration == null || (v.active_directory_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name == null || (length(v.active_directory_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name) >= 1 && length(v.active_directory_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name) <= 2000)))
      )
    ])
    error_message = "must be between 1 and 2000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_storage_virtual_machines : (
        v.svm_admin_password == null || (length(v.svm_admin_password) >= 8 && length(v.svm_admin_password) <= 50)
      )
    ])
    error_message = "must be between 8 and 50 characters"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

