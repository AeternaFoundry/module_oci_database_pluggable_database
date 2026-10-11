resource "oci_database_pluggable_database" "database_pluggable_databases" {
  for_each = var.database_pluggable_databases

  container_database_id              = each.value.container_database_id
  pdb_name                           = each.value.pdb_name
  container_database_admin_password  = each.value.container_database_admin_password
  convert_to_regular_trigger         = each.value.convert_to_regular_trigger
  defined_tags                       = each.value.defined_tags
  freeform_tags                      = each.value.freeform_tags
  kms_key_version_id                 = each.value.kms_key_version_id
  pdb_admin_password                 = each.value.pdb_admin_password
  refresh_trigger                    = each.value.refresh_trigger
  rotate_key_trigger                 = each.value.rotate_key_trigger
  should_create_pdb_backup           = each.value.should_create_pdb_backup
  should_pdb_admin_account_be_locked = each.value.should_pdb_admin_account_be_locked
  tde_wallet_password                = each.value.tde_wallet_password

  dynamic "pdb_creation_type_details" {
    for_each = each.value.pdb_creation_type_details != null ? [each.value.pdb_creation_type_details] : []
    content {
      creation_type        = pdb_creation_type_details.value.creation_type
      dblink_user_password = pdb_creation_type_details.value.dblink_user_password
      dblink_username      = pdb_creation_type_details.value.dblink_username
      is_thin_clone        = pdb_creation_type_details.value.is_thin_clone
      dynamic "refreshable_clone_details" {
        for_each = pdb_creation_type_details.value.refreshable_clone_details != null ? [pdb_creation_type_details.value.refreshable_clone_details] : []
        content {
          is_refreshable_clone = refreshable_clone_details.value.is_refreshable_clone
        }
      }
      source_container_database_admin_password = pdb_creation_type_details.value.source_container_database_admin_password
      source_pluggable_database_id             = pdb_creation_type_details.value.source_pluggable_database_id
      source_pluggable_database_snapshot_id    = pdb_creation_type_details.value.source_pluggable_database_snapshot_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

