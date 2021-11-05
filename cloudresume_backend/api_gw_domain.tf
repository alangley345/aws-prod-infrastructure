resource "aws_apigatewayv2_domain_name" "resume" {
  domain_name = "api.aaronlangley.net"

  domain_name_configuration {
    certificate_arn = var.gw_crt
    endpoint_type   = "REGIONAL"
    security_policy = "TLS_1_2"
  }
}