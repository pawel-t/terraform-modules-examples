resource "local_file" "txt" {
  filename = "/tmp/${var.name}.txt"
  
  content  = <<EOT
%{ for element in var.nothing ~}
list element: ${element}
%{ endfor ~}
EOT
}

resource "random_password" "password" {
  length           = 32
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}


resource "time_static" "now" {}

