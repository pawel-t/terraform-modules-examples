data "aws_ami" "vm_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "instance" {
  subnet_id              = var.subnet_id
  ami                    = data.aws_ami.vm_ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups
  key_name               = var.ssh_key_id


  tags = {
    Name      = var.instance_name
    Terraform = "true"
  }
}


