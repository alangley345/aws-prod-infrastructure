resource "aws_route53_record" "kube01_v4" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "kube-01.greatcatlab.net"
  type    = "A"
  ttl     = "300"
  records = ["207.2.120.4"]
}

resource "aws_route53_record" "kube02_v4" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "kube-02.greatcatlab.net"
  type    = "A"
  ttl     = "300"
  records = ["207.2.121.143"]
}

resource "aws_route53_record" "kube03_v4" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "kube-03.greatcatlab.net"
  type    = "A"
  ttl     = "300"
  records = ["207.2.121.163"]
}

resource "aws_route53_record" "vdi01" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "vdi01.greatcatlab.net"
 type    = "A"
 ttl     = "300"
 records = [" 207.2.123.123"]
}

