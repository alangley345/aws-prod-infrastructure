#main zone
resource "aws_route53_zone" "aaronlangley" {
  name = "aaronlangley.net"
}

output "aaronlangley_zone_id" {
  value = aws_route53_zone.aaronlangley.zone_id
}
