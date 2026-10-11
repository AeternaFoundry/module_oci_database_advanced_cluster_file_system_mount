resource "oci_database_advanced_cluster_file_system_mount" "database_advanced_cluster_file_system_mounts" {
  for_each = var.database_advanced_cluster_file_system_mounts

  advanced_cluster_file_system_id = each.value.advanced_cluster_file_system_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

