resource "aws_lb" "web_alb_demo" {
  name               = var.web_lb_name
  internal           = false
  load_balancer_type = var.type_LB
  security_groups    = [aws_security_group.ALB_Http.id]
  subnets            = [aws_subnet.public_subnet.id, aws_subnet.public_subnet_1b.id]

  enable_deletion_protection = true

#   access_logs {
#     bucket  = aws_s3_bucket.lb_logs.id
#     prefix  = "test-lb"
#     enabled = true
#   }

  tags = {
    Environment =var.ALB_Env
  }
}

resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.web_alb_demo.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_alb_target.arn
  }
}

