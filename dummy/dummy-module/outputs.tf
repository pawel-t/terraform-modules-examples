output name {
  value       = var.name
}

output app_version {
  value       = var.app_version
}

output nothing {
  value       = var.nothing
}

output treasure {
  value       = var.treasure
}

output honest {
  value       = var.honest
}

output password {
  value   = random_password.password.result
  sensitive = true
}

output "now" {
  value = time_static.now.rfc3339
}