resource "aws_route53_record" "resume" {
  zone_id = aws_route53_zone.aaronlangley.zone_id
  name    = "resume.aaronlangley.net"
  type    = "A"

  alias {
    name                   = module.cloudresume-frontend.aws_cloudfront_distribution.resume.domain_name
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = true
  }
}