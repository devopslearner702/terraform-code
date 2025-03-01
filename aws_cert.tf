# Request SSL certificate from ACM
resource "aws_acm_certificate" "ssl_cert" {
  domain_name       = "devopslearner.xyz"
  validation_method = "DNS"

  subject_alternative_names = [
    "www.devopslearner.xyz",
  ]

  tags = {
    Name = "devopslearner-ssl"
  }
}

# Add DNS validation records in Route 53
resource "aws_route53_record" "dns_validation" {
  for_each = {
    for dvo in aws_acm_certificate.ssl_cert.domain_validation_options : dvo.domain_name => dvo
  }
  zone_id = aws_route53_zone.route_53.id
  name    = each.value.resource_record_name
  type    = each.value.resource_record_type
  ttl     = 60
  records = [each.value.resource_record_value]
}


