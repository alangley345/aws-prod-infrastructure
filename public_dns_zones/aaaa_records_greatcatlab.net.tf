#OVH Server
resource "aws_route53_record" "ovh_main_v6" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "proxmox.greatcatlab.net"
 type    = "AAAA"
 ttl     = "300"
 records = ["2604:2dc0:100:59a::"]
}

#IPA Server
resource "aws_route53_record" "ipa01_main_v6" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "ipa01.greatcatlab.net"
 type    = "AAAA"
 ttl     = "300"
 records = ["2001:470:e107:1010::10"]
}