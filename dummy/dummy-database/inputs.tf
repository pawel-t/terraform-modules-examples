variable db_name {
  type        = string
  description = "database name"
}

variable db_port {
  type        = number
  default     = 1234
  description = "port"
}

variable endpoint {
  type        = string
  default     = "localhost"
  description = "database endpoint"
}

variable admin_user {
  type        = string
  default     = "db_admin"
  description = "admin user for db"
}