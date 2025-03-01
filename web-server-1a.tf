
resource "aws_instance" "web-server" {

  ami                           = var.ami_id
  instance_type                 = var.instance_type
  key_name                      = var.key_name
  subnet_id                     = aws_subnet.public_subnet.id
  availability_zone             = var.public_AZ
  associate_public_ip_address   = var.public_assign_ip
  user_data                     = file(var.user_data)

  security_groups = [aws_security_group.allow_ssh.name,aws_security_group.allow_http.name]
  

  tags = {
    Name = var.ec2_name
  }
}


