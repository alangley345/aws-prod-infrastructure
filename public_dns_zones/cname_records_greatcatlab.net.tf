#My Synology NAS
resource "aws_route53_record" "nas" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "nas.greatcatlab.net"
 type    = "CNAME"
 ttl     = "300"
 records = ["1.tunnel.greatcatlab.net"]
}

#domain alias for Let's Encrypt Internally
resource "aws_route53_record" "int_acme_challenge" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "_acme-challenge.greatcatlab.net"
 type    = "CNAME"
 ttl     = "300"
 records = ["_acme-challenge.int.greatcatlab.net"]
}
