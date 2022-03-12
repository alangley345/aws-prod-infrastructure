#OVH Server
resource "aws_route53_record" "ovh_main_v6" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "proxmox.greatcatlab.net"
 type    = "AAAA"
 ttl     = "300"
 records = ["2604:2dc0:100:59a::"]
}

#IPA Server 01
resource "aws_route53_record" "ipa01_v6" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "ipa01.int.greatcatlab.net"
 type    = "AAAA"
 ttl     = "300"
 records = ["2001:470:e107:1010::aaaa"]
}

#IPA Server 02
resource "aws_route53_record" "ipa02_v6" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "ipa02.int.greatcatlab.net"
 type    = "AAAA"
 ttl     = "300"
 records = ["2001:470:e107:1010::bbbb"]
}