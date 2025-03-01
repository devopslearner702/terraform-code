resource "aws_lb" "web_alb_demo" {
  name               = var.web_lb_name
  internal           = false
  load_balancer_type = var.type_LB
  security_groups    = [aws_security_group.ALB_Http.id]
  subnets            = [aws_subnet.public_subnet.id, aws_subnet.public_subnet_1b.id]



#   access_logs {
#     bucket  = aws_s3_bucket.lb_logs.id
#     prefix  = "test-lb"
#     enabled = true
#   }

  tags = {
    Environment =var.ALB_Env
  }
}

resource "aws_lb_listener" "alb_http_listener" {
  load_balancer_arn = aws_lb.web_alb_demo.arn
  port              = 80
  protocol          = "HTTP"
  
default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_alb_target.arn
  }
}



# HTTPS Listener - Forwards Traffic to the Target Group
resource "aws_lb_listener" "alb_https_listener" {
  load_balancer_arn = aws_lb.web_alb_demo.arn
  port              = 443
  protocol          = "HTTPS"
  certificate_arn   = aws_acm_certificate.ssl_cert.arn  # ACM certificate ARN
  ssl_policy        = "ELBSecurityPolicy-2016-08"
   # Default action to forward traffic to the target group
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_alb_target.arn
  }
}



