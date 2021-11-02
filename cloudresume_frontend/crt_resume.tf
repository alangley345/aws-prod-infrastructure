#certificate request
resource "aws_acm_certificate" "resume" {
  domain_name       = "resume.aaronlangley.net"
  validation_method = "DNS"

  tags = {
    Purpose = "cloudresumechallenge"
  }

  lifecycle {
    create_before_destroy = true
  }
}

#validation
resource aws_acm_certificate_validation "resume-validation" {
  certificate_arn = aws_acm_certificate.resume.arn
  validation_record_fqdns = [for record in aws_route53_record.resume : resume.aaronlangley.net]
}