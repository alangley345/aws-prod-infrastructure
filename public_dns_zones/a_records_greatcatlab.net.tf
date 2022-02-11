resource "aws_route53_record" "minecraft_v4" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "minecraft.greatcatlab.net"
  type    = "A"
  ttl     = "300"
  records = ["207.2.121.143"]
}

resource "aws_route53_record" "minecraft_v6" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "minecraft.greatcatlab.net"
  type    = "AAAA"
  ttl     = "300"
  records = ["2400:3e20:378::"]
}