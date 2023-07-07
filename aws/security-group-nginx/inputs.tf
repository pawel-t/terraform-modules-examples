variable "vpc_id" {
    type        = string
    description = "ID of the VPC"
}

variable "sg_name" {
    type         = string
    description  = "name of the security group"
}

variable "sg_desc" {
    type         = string
    description  = "description/purpose of the security group"
}

variable "ssh_cidr_blocks" {
    type = list(string)
    default = []
    description = "list of CIDRs that should have access to SSH"
}

variable "enable_world_access" {
    type = bool
    default = true 
    description = "Enable external access to 0.0.0.0/0"
}

variable "nginx_access_sg_list" {
    type = list(string)
    default = []
    description = "List of SGs to allow access to nginx instance"
}

variable "nginx_access_cidr_list" {
    type = list(string)
    default = []
    description = "List of CIDRs to allow access to nginx instance"
}