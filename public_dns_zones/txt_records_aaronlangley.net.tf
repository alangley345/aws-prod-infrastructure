#text record for Github Pages
resource "aws_route53_record" "github_pages_TXT" {
  zone_id = aws_route53_zone.aaronlangley.zone_id
  name    = "_github-pages-challenge-alangley345.aaronlangley.net"
  type    = "TXT"
  ttl     = "300"
  records = ["4cd016c1c5c21a9e0418dc68660107"]
}