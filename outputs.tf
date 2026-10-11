output "database_advanced_cluster_file_system_mounts_id" {
  description = "Map of id values across all database_advanced_cluster_file_system_mounts, keyed the same as var.database_advanced_cluster_file_system_mounts except keys with no id are omitted"
  value       = { for k, v in oci_database_advanced_cluster_file_system_mount.database_advanced_cluster_file_system_mounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_advanced_cluster_file_system_mounts_advanced_cluster_file_system_id" {
  description = "Map of advanced_cluster_file_system_id values across all database_advanced_cluster_file_system_mounts, keyed the same as var.database_advanced_cluster_file_system_mounts except keys with no advanced_cluster_file_system_id are omitted"
  value       = { for k, v in oci_database_advanced_cluster_file_system_mount.database_advanced_cluster_file_system_mounts : k => v.advanced_cluster_file_system_id if v.advanced_cluster_file_system_id != null && length(v.advanced_cluster_file_system_id) > 0 }
}

