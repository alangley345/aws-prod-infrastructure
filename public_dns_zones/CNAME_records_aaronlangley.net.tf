#A record for HTTPS on Github page
resource "aws_route53_record" "github_pages_CNAME" {
  zone_id = aws_route53_zone.aaronlangley.zone_id
  name    = "blog.aaronlangley.net"
  type    = "CNAME"
  ttl     = "300"
  records = ["alangley345.github.io"]
}


