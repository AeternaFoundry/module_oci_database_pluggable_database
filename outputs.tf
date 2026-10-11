output "database_pluggable_databases_id" {
  description = "Map of id values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no id are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_pluggable_databases_compartment_id" {
  description = "Map of compartment_id values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no compartment_id are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_pluggable_databases_connection_strings" {
  description = "Map of connection_strings values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no connection_strings are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.connection_strings if v.connection_strings != null && length(v.connection_strings) > 0 }
}
output "database_pluggable_databases_container_database_admin_password" {
  description = "Map of container_database_admin_password values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no container_database_admin_password are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.container_database_admin_password if v.container_database_admin_password != null && length(v.container_database_admin_password) > 0 }
  sensitive   = true
}
output "database_pluggable_databases_container_database_id" {
  description = "Map of container_database_id values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no container_database_id are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.container_database_id if v.container_database_id != null && length(v.container_database_id) > 0 }
}
output "database_pluggable_databases_convert_to_regular_trigger" {
  description = "Map of convert_to_regular_trigger values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no convert_to_regular_trigger are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.convert_to_regular_trigger if v.convert_to_regular_trigger != null }
}
output "database_pluggable_databases_defined_tags" {
  description = "Map of defined_tags values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no defined_tags are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "database_pluggable_databases_freeform_tags" {
  description = "Map of freeform_tags values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "database_pluggable_databases_is_restricted" {
  description = "Map of is_restricted values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no is_restricted are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.is_restricted if v.is_restricted != null }
}
output "database_pluggable_databases_kms_key_version_id" {
  description = "Map of kms_key_version_id values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no kms_key_version_id are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.kms_key_version_id if v.kms_key_version_id != null && length(v.kms_key_version_id) > 0 }
}
output "database_pluggable_databases_lifecycle_details" {
  description = "Map of lifecycle_details values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "database_pluggable_databases_open_mode" {
  description = "Map of open_mode values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no open_mode are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.open_mode if v.open_mode != null && length(v.open_mode) > 0 }
}
output "database_pluggable_databases_patch_version" {
  description = "Map of patch_version values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no patch_version are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.patch_version if v.patch_version != null && length(v.patch_version) > 0 }
}
output "database_pluggable_databases_pdb_admin_password" {
  description = "Map of pdb_admin_password values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no pdb_admin_password are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.pdb_admin_password if v.pdb_admin_password != null && length(v.pdb_admin_password) > 0 }
  sensitive   = true
}
output "database_pluggable_databases_pdb_creation_type_details" {
  description = "Map of pdb_creation_type_details values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no pdb_creation_type_details are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => one(v.pdb_creation_type_details) if v.pdb_creation_type_details != null && length(v.pdb_creation_type_details) > 0 }
  sensitive   = true
}
output "database_pluggable_databases_pdb_name" {
  description = "Map of pdb_name values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no pdb_name are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.pdb_name if v.pdb_name != null && length(v.pdb_name) > 0 }
}
output "database_pluggable_databases_pdb_node_level_details" {
  description = "Map of pdb_node_level_details values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no pdb_node_level_details are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.pdb_node_level_details if v.pdb_node_level_details != null && length(v.pdb_node_level_details) > 0 }
}
output "database_pluggable_databases_pluggable_database_management_config" {
  description = "Map of pluggable_database_management_config values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no pluggable_database_management_config are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.pluggable_database_management_config if v.pluggable_database_management_config != null && length(v.pluggable_database_management_config) > 0 }
}
output "database_pluggable_databases_refresh_trigger" {
  description = "Map of refresh_trigger values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no refresh_trigger are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.refresh_trigger if v.refresh_trigger != null }
}
output "database_pluggable_databases_refreshable_clone_config" {
  description = "Map of refreshable_clone_config values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no refreshable_clone_config are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.refreshable_clone_config if v.refreshable_clone_config != null && length(v.refreshable_clone_config) > 0 }
}
output "database_pluggable_databases_rotate_key_trigger" {
  description = "Map of rotate_key_trigger values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no rotate_key_trigger are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.rotate_key_trigger if v.rotate_key_trigger != null }
}
output "database_pluggable_databases_should_create_pdb_backup" {
  description = "Map of should_create_pdb_backup values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no should_create_pdb_backup are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.should_create_pdb_backup if v.should_create_pdb_backup != null }
}
output "database_pluggable_databases_should_pdb_admin_account_be_locked" {
  description = "Map of should_pdb_admin_account_be_locked values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no should_pdb_admin_account_be_locked are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.should_pdb_admin_account_be_locked if v.should_pdb_admin_account_be_locked != null }
}
output "database_pluggable_databases_state" {
  description = "Map of state values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no state are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_pluggable_databases_system_tags" {
  description = "Map of system_tags values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no system_tags are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "database_pluggable_databases_tde_wallet_password" {
  description = "Map of tde_wallet_password values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no tde_wallet_password are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.tde_wallet_password if v.tde_wallet_password != null && length(v.tde_wallet_password) > 0 }
  sensitive   = true
}
output "database_pluggable_databases_time_created" {
  description = "Map of time_created values across all database_pluggable_databases, keyed the same as var.database_pluggable_databases except keys with no time_created are omitted"
  value       = { for k, v in oci_database_pluggable_database.database_pluggable_databases : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

