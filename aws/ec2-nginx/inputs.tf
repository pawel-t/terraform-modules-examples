variable instance_name {
    type = string
    description = "instance name"
}

variable instance_type {
  type        = string
  default     = "t3.micro"
  description = "instance type"
}


variable subnet_id {
  type       = string
  
}

variable "security_groups" {
  type = list(string)
  default = []
  description = "Security groups that EC2 instance should be placed in"
}

variable "ssh_key_id" {
  type = string  
  default = ""
}

variable "role_name" {
  type = string
}