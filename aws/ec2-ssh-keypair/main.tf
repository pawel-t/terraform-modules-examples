resource "aws_key_pair" "user" {
  key_name   = var.key_pair_name
  public_key = var.public_key
}