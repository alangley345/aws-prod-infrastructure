#OVH Server
resource "aws_route53_record" "ovh_main_v6" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "dockerhost01.greatcatlab.net"
 type    = "AAAA"
 ttl     = "300"
 records = ["2604:2dc0:100:59a::"]
}