#vultr
resource "aws_route53_record" "vultr_01_v4" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "vultr01.greatcatlab.net"
 type    = "A"
 ttl     = "300"
 records = ["104.238.131.32"]
}