resource "aws_route53_record" "kube_ep_01" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "kube-ep.greatcatlab.net"
  type    = "CNAME"
  ttl     = "300"

  weighted_routing_policy {
    weight = 100
  }

  set_identifier = "kube01"
  records        = ["kube01.greatcatlab.net"]
}

resource "aws_route53_record" "kube_ep_02" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "kube-ep.greatcatlab.net"
  type    = "CNAME"
  ttl     = "300"

  weighted_routing_policy {
    weight = 100
  }

  set_identifier = "kube02"
  records        = ["kube02.greatcatlab.net"]
}

resource "aws_route53_record" "kube_ep" {
  zone_id = aws_route53_zone.greatcatlab.zone_id
  name    = "kube-ep.greatcatlab.net"
  type    = "CNAME"
  ttl     = "300"

  weighted_routing_policy {
    weight = 100
  }

  set_identifier = "kube03"
  records        = ["kube03.greatcatlab.net"]
}