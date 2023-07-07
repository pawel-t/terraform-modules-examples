output name {
  value       = var.name
}

output app_version {
  value       = var.app_version
}

output db_connection_string {
  value       = var.db_connection_string
  sensitive   = true
}

