resource "local_file" "txt" {
  filename = "/tmp/${var.name}.txt"
  
  content  = <<EOT
app_name: ${var.name}
app_version: ${var.app_version}
db_string: ${var.db_connection_string}
EOT
}

