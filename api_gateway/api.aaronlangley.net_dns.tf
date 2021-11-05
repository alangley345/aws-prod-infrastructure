resource "aws_route53_record" "api" {
  zone_id = var.rt53_zone
  name    = "api.aaronlangley.net"
  type    = "A"

  alias {
    name                   = aws_apigatewayv2_api.api.domain_name
    zone_id                = var.rt53_zone
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "api_IPv6" {
  zone_id = var.rt53_zone
  name    = "api.aaronlangley.net"
  type    = "AAAA"

  alias {
    name                   = aws_apigatewayv2_api.api.domain_name
    zone_id                = var.rt53_zone
    evaluate_target_health = true
  }
}