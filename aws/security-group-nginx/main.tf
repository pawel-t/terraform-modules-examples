resource "aws_security_group" "nginx" {
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
  security_group_id = aws_security_group.nginx.id
}

resource "aws_security_group_rule" "world_access" {
  count             = var.enable_world_access ? 1 : 0
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.nginx.id
}

resource "aws_security_group_rule" "nginx_access_sgs" {
  for_each                 = toset(var.nginx_access_sg_list)
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = each.key
  security_group_id        = aws_security_group.nginx.id
}

resource "aws_security_group_rule" "nginx_access_cidr" {
  count              = length(var.nginx_access_cidr_list) > 0 ? 1 : 0
  type               = "ingress"
  from_port          = 80
  to_port            = 80
  protocol           = "tcp"
  cidr_blocks        = var.nginx_access_cidr_list
  security_group_id  = aws_security_group.nginx.id
}