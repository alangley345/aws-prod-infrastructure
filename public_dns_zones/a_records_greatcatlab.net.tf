resource "aws_route53_record" "relay01_v4" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "relay01.greatcatlab.net"
  type    = "A"
  ttl     = "300"
  records = ["207.2.120.4"]
}

resource "aws_route53_record" "relay02_v4" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "relay02.greatcatlab.net"
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

resource "aws_route53_record" "vdi01" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "vdi01.greatcatlab.net"
 type    = "A"
 ttl     = "300"
 records = ["207.2.123.123"]
}

#OVH Server
resource "aws_route53_record" "ovh_main_v4" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "esxi.greatcatlab.net"
 type    = "A"
 ttl     = "300"
 records = ["147.135.5.154"]
}