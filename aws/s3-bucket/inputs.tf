variable "bucket_name" {
  type        = string
  description = "Bucket name"
}


variable "acl_mode" {
  type        = string
  default     = "private"
  description = "ACL mode - private or public"
}

variable "versioning_mode" {
  type        = string
  default     = "Disabled"
  description = "Versioning mode - Disabled or Enabled"
}

variable "object_ownership" {
  type        = string
  default     = "BucketOwnerEnforced"
  description = "Bucket object ownership"
}