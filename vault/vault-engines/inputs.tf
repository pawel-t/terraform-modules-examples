variable "enable_kv1" {
    type = bool
    default = false
    description = "Enable kv v1 secret engine - disabled by default"
}

variable "enable_kv2" {
    type = bool
    default = false
    description = "Enable kv v2 secret engine - disabled by default"
}

variable "enable_totp" {
    type = bool
    default = false
    description = "Enable totp secret engine - disabled by default"
}





