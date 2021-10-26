#main zone
resource "aws_route53_zone" "aaronlangley" {
  name = "aaronlangley.net"

}
data "aws_route53_zone" "aaronlangley" {
    zone_id = aws_route53_zone.aaronlangley.zone_id
    depends_on = [aws_route53_zone.aaronlangley]
}

output "aaronlangley" {
    value = data.aws_route53_zone.aaronlangley.zone_id
}
