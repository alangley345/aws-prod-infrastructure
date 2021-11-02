#certificate request
resource "aws_acm_certificate" "aaronlangley" {
  domain_name       = "aaronlangley.net"
  validation_method = "DNS"

  tags = {
    Purpose = "cloudresumechallenge"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "certificate_validation" {
  zone_id = var.aaronlangley_zone
  name    = aws_acm_certificate.aaronlangley.domain_validation_options.0.resource_record_name
  records = aws_acm_certificate.aaronlangley.domain_validation_options.0.resource_record_type
  type    = aws_acm_certificate.aaronlangley.domain_validation_options.0.resource_record_value
  ttl     = 60
}

#validation
resource aws_acm_certificate_validation "resume-validation" {
 certificate_arn = aws_acm_certificate.resume.arn
 validation_record_fqdns = aws_route53_record.certificate_validation.fqdn
}

output "wildcard_arn" {
  value = aws_acm_certificate.aaronlangley.arn
}