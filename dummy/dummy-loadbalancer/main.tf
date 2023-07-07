resource "local_file" "txt" {
  filename = "/tmp/${var.lb_name}.txt"
  
  content  = <<EOT
lb_name: ${var.lb_name}  
hostname: ${var.hostname}
path: ${var.path}
target: ${var.target}
health_check: ${var.health_check}
EOT
}




