resource "aws_security_group" "group" {
  name        = var.sg_name
  description = var.sg_desc
  vpc_id      = var.vpc_id

  tags = {
    Name      = var.sg_name
    Terraform = "true"
  }
}

resource "aws_security_group_rule" "ssh_access" {
  count             = length(var.ssh_cidr_blocks) > 0 ? 1 : 0
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = var.ssh_cidr_blocks
  security_group_id = aws_security_group.group.id
}

resource "aws_security_group_rule" "world_access" {
  count             = var.enable_world_access ? 1 : 0
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.group.id
}
