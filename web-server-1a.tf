
resource "aws_instance" "web-server" {

  ami                           = var.ami_id
  instance_type                 = var.instance_type
  key_name                      = var.key_name
  subnet_id                     = aws_subnet.public_subnet.id
  availability_zone             = var.availability_zone
  associate_public_ip_address   = var.public_assign_ip
  user_data                     = file(var.user_data)

  security_groups = [aws_security_group.allow_ssh_http.id]
  lifecycle {
    ignore_changes = [
      security_groups
    ]
  }
  
tags = {
    Name = var.ec2_name
  }
}


