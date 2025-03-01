# Create a Route 53 Hosted Zone
resource "aws_route53_zone" "route_53" {
  name = "devopslearner.xyz"  # Replace with your domain
}

# Output the name servers to update GoDaddy with
output "name_servers" {
  value = aws_route53_zone.route_53.name_servers
}

resource "aws_route53_record" "devopslearner" {
   zone_id = aws_route53_zone.route_53.id
   name    = "devopslearner.xyz"  # Domain name
   type    = "A"
  
  alias {
    name                   = aws_lb.web_alb_demo.dns_name  # ALB DNS name
    zone_id                = aws_lb.web_alb_demo.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.route_53.id
  name    = "www.devopslearner.xyz"
  type    = "CNAME"
  ttl     = 300
  records = ["web-alb-216085970.us-east-1.elb.amazonaws.com"]
}


