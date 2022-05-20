#OVH Server
resource "aws_route53_record" "nas" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "nas.greatcatlab.net"
 type    = "CNAME"
 ttl     = "300"
 records = ["1.tunnel.greatcatlab.net"]
}

#OVH Server
resource "aws_route53_record" "portainer" {
 zone_id = aws_route53_zone.greatcatlab.zone_id
 name    = "portainer.greatcatlab.net"
 type    = "CNAME"
 ttl     = "300"
 records = ["dockerhost01.greatcatlab.net"]
}
