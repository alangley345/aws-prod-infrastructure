resource "aws_route53_record" "soa" {
  allow_overwrite = true
  name            = "int.greatcatlab.net"
  ttl             = 172800
  type            = "SOA"
  zone_id         = aws_route53_zone.greatcatlab.zone_id

  records = [
    "ipa01.int.greatcatlab.net",
    "ipa02.int.greatcatlab.net"
  ]
}