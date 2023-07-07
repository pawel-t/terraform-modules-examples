variable lb_name {
  type = string
  description = "loadbalancer name"
}

variable hostname {
  type        = string
  description = "some super description"
}

variable path {
  type        = string
  default     = "/"
  description = "path to match in ruleset"
}

variable target {
  type        = string
  description = "target name in loadbalancer config"
}

variable health_check {
  type        = bool
  default     = true
  description = "mark if health check should be enabled"
}