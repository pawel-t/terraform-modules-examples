output "role_name" {
  value = aws_iam_role.bucket-access.name
}

output "role_arn" {
  value = aws_iam_role.bucket-access.arn
}