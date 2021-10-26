resource "aws_route53_zone" "greatcatlab" {
  name = "greatcatlab.net"
  
}

data "aws_route53_zone" "greatcatlab" {
    zone_id = aws_route53_zone.greatcatlab.zone_id
    depends_on = [aws_route53_zone.greatcatlab]
}

output "greatcatlab" {
    value = data.aws_route53_zone.greatcatlab.zone_id
}
