#vultr
resource "aws_route53_record" "vultr_01_v6" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "vultr01.greatcatlab.net"
 type    = "AAAA"
 ttl     = "300"
 records = ["2001:19f0:1000:1698:5400:04ff:fe55:7807"]
}

#ipa-a
resource "aws_route53_record" "ipa_a_v6" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "bind-a.int.greatcatlab.net"
 type    = "AAAA"
 ttl     = "300"
 records = ["2001:470:8a70:1000:A::"]
}

#ipa-b
resource "aws_route53_record" "ipa_b_v6" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "bind-b.int.greatcatlab.net"
 type    = "AAAA"
 ttl     = "300"
 records = ["2001:470:8a70:1000:B::"]
}