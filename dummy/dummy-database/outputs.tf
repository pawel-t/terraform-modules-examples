output db_name {
  value       = var.db_name
}

output db_port {
  value       = var.db_port
}

output endpoint {
  value       = var.endpoint
}

output admin_user {
  value       = var.admin_user
}

output db_password {
  value   = random_password.db_password.result
  sensitive = true
}

