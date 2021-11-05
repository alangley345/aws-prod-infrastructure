resource "aws_route53_record" "api" {
  zone_id = var.rt53_zone
  name    = aws_apigatewayv2_domain_name.aaronlangley.domain_name
  type    = "A"

  alias {
    name                   = aws_apigatewayv2_domain_name.aaronlangley.domain_name_configuration[0].target_domain_name
    zone_id                = aws_apigatewayv2_domain_name.aaronlangley.domain_name_configuration[0].hosted_zone_id
    evaluate_target_health = true
  }
}