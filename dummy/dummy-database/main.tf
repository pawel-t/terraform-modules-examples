resource "local_file" "txt" {
  filename = "/tmp/${var.db_name}.txt"
  
  content  = <<EOT
db_name: ${var.db_name}
db_port: ${var.db_port}
endpoint: ${var.endpoint}
admin_user : ${var.admin_user}
password: ${random_password.db_password.result}
EOT
}

resource "random_password" "db_password" {
  length           = 32
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}



