resource "aws_route53_record" "tunnel_greatcatlab_net" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "tunnel.greatcatlab.net"
  type    = "NS"
  ttl     = "300"
  records = ["ns1.he.net.","ns2.he.net.","ns3.he.net.","ns4.he.net.","ns5.he.net."]
}
