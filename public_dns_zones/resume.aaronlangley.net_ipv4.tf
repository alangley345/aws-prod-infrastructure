resource "aws_route53_record" "resume" {
  zone_id = aaronlangley.output.route53_public_zone
  name    = "resume.aaronlangley.net"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.resumesite.domain_name
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = true
  }
}