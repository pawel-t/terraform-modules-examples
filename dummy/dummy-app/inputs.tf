variable name {
  type        = string
  default     = ""
  description = "app name"
}

variable app_version {
  type        = number
  default     = 1
  description = "application version"
}

variable db_connection_string {
  type        = string
  description = "connection string to database"
}