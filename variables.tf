variable "database_pluggable_databases" {
  description = <<EOT
Map of database_pluggable_databases, attributes below
Required:
    - container_database_id
    - pdb_name
Optional:
    - container_database_admin_password
    - convert_to_regular_trigger
    - defined_tags
    - freeform_tags
    - kms_key_version_id
    - pdb_admin_password
    - refresh_trigger
    - rotate_key_trigger
    - should_create_pdb_backup
    - should_pdb_admin_account_be_locked
    - tde_wallet_password
    - pdb_creation_type_details (block):
        - creation_type (required)
        - dblink_user_password (optional)
        - dblink_username (optional)
        - is_thin_clone (optional)
        - refreshable_clone_details (optional, block):
            - is_refreshable_clone (optional)
        - source_container_database_admin_password (optional)
        - source_pluggable_database_id (required)
        - source_pluggable_database_snapshot_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    container_database_id              = string
    pdb_name                           = string
    container_database_admin_password  = optional(string)
    convert_to_regular_trigger         = optional(number)
    defined_tags                       = optional(map(string))
    freeform_tags                      = optional(map(string))
    kms_key_version_id                 = optional(string)
    pdb_admin_password                 = optional(string)
    refresh_trigger                    = optional(number)
    rotate_key_trigger                 = optional(number)
    should_create_pdb_backup           = optional(bool)
    should_pdb_admin_account_be_locked = optional(bool)
    tde_wallet_password                = optional(string)
    pdb_creation_type_details = optional(object({
      creation_type        = string
      dblink_user_password = optional(string)
      dblink_username      = optional(string)
      is_thin_clone        = optional(bool)
      refreshable_clone_details = optional(object({
        is_refreshable_clone = optional(bool)
      }))
      source_container_database_admin_password = optional(string)
      source_pluggable_database_id             = string
      source_pluggable_database_snapshot_id    = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_pluggable_databases : (
        v.pdb_creation_type_details == null || (contains([for v in ["LOCAL_CLONE_PDB", "RELOCATE_PDB", "REMOTE_CLONE_PDB"] : lower(v)], lower(v.pdb_creation_type_details.creation_type)))
      )
    ])
    error_message = "must be one of: \"LOCAL_CLONE_PDB\", \"RELOCATE_PDB\", \"REMOTE_CLONE_PDB\""
  }
}

