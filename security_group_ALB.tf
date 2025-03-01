resource "aws_security_group" "ALB_Http" {
   name        = "ALB allow_http"
  description = "ALB Allow http access"
  vpc_id      = aws_vpc.custom_vpc.id
 ingress {
   from_port   = 80
   to_port     = 80
   protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

  egress {
    from_port   = 0
     to_port     = 0
     protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
   tags = {
    Name = var.allow_ALB_http_sg
   }
 }

