resource "aws_lb_target_group" "web_alb_target" {
  name        = var.web_alb_target_name
  target_type = var.web_alb_target_type
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.custom_vpc.id
  
  health_check {
    interval            = 30
    path                = "/"
    port                = "80"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }
}

resource "aws_lb_target_group_attachment" "Alb_target" {
  target_group_arn = aws_lb_target_group.web_alb_target.arn
  target_id        = aws_instance.web-server.id
  port             = 80
}
