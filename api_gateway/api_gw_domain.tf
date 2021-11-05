resource "aws_apigatewayv2_domain_name" "aaronlangley" {
  domain_name = "api.aaronlangley.net"

  domain_name_configuration {
    certificate_arn = var.gw_cert
    endpoint_type   = "REGIONAL"
    security_policy = "TLS_1_2"
  }
}