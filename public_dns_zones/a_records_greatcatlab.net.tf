resource "aws_route53_record" "cont01_v4" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "cont01.greatcatlab.net"
  type    = "A"
  ttl     = "300"
  records = ["207.2.120.4"]
}

resource "aws_route53_record" "cont02_v4" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "cont02.greatcatlab.net"
  type    = "A"
  ttl     = "300"
  records = ["207.2.121.143"]
}

resource "aws_route53_record" "cont03_v4" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "cont03.greatcatlab.net"
  type    = "A"
  ttl     = "300"
  records = ["207.2.121.163"]
}

resource "aws_route53_record" "kube-ep_v4" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "kube-ep.greatcatlab.net"
 type    = "A"
 ttl     = "300"
 records = ["207.2.121.17"]
}

